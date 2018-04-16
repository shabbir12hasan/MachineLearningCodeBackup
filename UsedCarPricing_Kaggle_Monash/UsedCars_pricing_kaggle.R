# This file contain code for kaggle competition, based on data set contatining car selling data.
# Task predict price for car models.


# Loading the training data
train <- read.csv("kaggle/Usedcars_monash/train.csv")

# taking out the price from train data and storing it
train_price <- train['price']
train <- train[-2]

# loading test data 
test <- read.csv("kaggle/Usedcars_monash/test.csv")
summary(test$model)

#combining datasets
data <- rbind(train, test)

# taking model variable out from whole data, as it has lot of factors which will increase complexity of model
model_values <- data$model
data <- data[-6]

# taking id out from data as it wont be of any use while predicting price
id_values <- data$id
data <- data[-1]

# taking postal codes out, as the factors for the variable are too high
postalCode_values <- data$postalCode
data <- data[-10]
head(data)



#Checking for missing values
md.pattern(data)
#missing percentage check
pMiss <- function(x){sum(is.na(x))/length(x)*100}
apply(data,2,pMiss)
apply(data,1,pMiss)


######Imputation
#imputing missing values, using mice library
library(mice)
to_impute<-as.data.frame(data)
columns_navalues <- colnames(data)[ apply(data, 2, anyNA) ]
impute=data[columns_navalues]
head(impute)
imputed=complete(mice(impute,m=5))

to_impute$gearbox=imputed$gearbox
to_impute$vehicleType=imputed$vehicleType
to_impute$fuelType=imputed$fuelType
to_impute$notRepairedDamage=imputed$notRepairedDamage


train_set <- to_impute


# Future Engineering

#creating new column for PS
newPowerPS <-  train_set$powerPS
newPowerPS[newPowerPS>50 & newPowerPS<101] <-100
newPowerPS[newPowerPS>100 & newPowerPS<151] <-150
newPowerPS[newPowerPS>150 & newPowerPS<201] <-200
newPowerPS[newPowerPS>200 & newPowerPS<251] <-250
newPowerPS[newPowerPS>250 & newPowerPS<301] <-300
newPowerPS[newPowerPS>300] <-350
newPowerPS[newPowerPS<50] <-50
summary(newPowerPS)
train_set$newPS <- newPowerPS

#modifying kilometer column
kmnew <-train_set$kilometer
ggplot(train_set, aes(train_set$kilometer))+geom_bar()
kmnew[kmnew>0 & kmnew<50000] <-50000
kmnew[kmnew>50000 & kmnew<100000] <-100000
kmnew[kmnew>100000 & kmnew<150000] <-150000
train_set$kmnew <- kmnew
train_set$kmnew <- as.factor(kmnew)
ggplot(train_set, aes(train_set$kmnew))+geom_bar()


#log transformation on km
kmnewlog <- log(kmnew,2)
train_set$kmnewlog <- kmnewlog

#log transformation on km
kmlog <- log(train_set$kilometer,2)
train_set$kmlog <- kmlog

#carAge
carAge <- 2018-train_set$yearOfRegistration
summary(carAge)
train_set$carAge <- carAge

#agebracket
agebracket <- carAge
agebracket[agebracket< 10] <- 10
agebracket[agebracket> 10 & agebracket< 20] <- 20
agebracket[agebracket> 20 & agebracket< 30] <- 30
agebracket[agebracket> 30 & agebracket< 40] <- 40
agebracket[agebracket> 40 & agebracket< 50] <- 50
agebracket[agebracket> 50 & agebracket< 60] <- 60
agebracket[agebracket> 60] <- 70
train_set$agebracket <- agebracket

#kmnew[kmnew>0 & kmnew<50000] <-50000
ggplot(train_set, aes(train_set$carAge))+geom_bar()

#log transformation on carAge
caragelog <- log(train_set$carAge,2)
train_set$caragelog <- caragelog

head(train_set)
str(train_set)



########seperating data sets
train_x <- train_set[1:218912,]
train_x['price']<-train_price
any(is.na(test_x))
head(train_x)
test_x <- train_set[218913:312729,]
head(test_x)


#price check: removing outliers, as data is very big, we can clear out outliers.
train_y <- train_x[!(train_x$price > 90000),]
train_z <- train_y[!(train_y$price < 500),]


###LM: applying linear model to data to check the mean error
model21 <- lm(train_z$price ~ .,train_z)
a_lm24 <- mean((train_z$price - predict(model21))^2)#nobrand and 
a_lm25 <- mean((train_z$price - predict(model21))^2)#nobrand and 

price <- predict(model21,test_x)
head(price)
summary(price)

#Removing price which are below 500 as that will give uneven predictions
price[price<501] <- 500


#creating a submission file
id <- test$id
submission <- cbind(id, price)
any(is.na(submission))
head(submission)
write.table(submission, "subLM21.csv", sep=",", row.names=FALSE)



# Applying tuned SVM
############# tuned SVM
library(e1071)
#tuned.svm <- svm(train_z$price ~ ., data=train_z, kernel="radial",  cost=1, gamma=0.5)
tuned.svm <- svm(train_z$price ~ ., data=train_z, kernel="sigmoid", degree = 3, cost=1, gamma=0.3)
summary(tuned.svm)

#Removing price which are below 500 as that will give uneven predictions
price <- predict(tuned.svm,test_x)
summary(price)
newprice <- price
price <- newprice
price[price<500] <-500

#creating a submission file
id <- test$id
submission <- cbind(id, price)
any(is.na(submission))
head(submission)
write.table(submission, "sub_11-1_tune_svm.csv", sep=",", row.names=FALSE)
##########

