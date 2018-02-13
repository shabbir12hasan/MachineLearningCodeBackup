install.packages("caTools")

library(caTools)

#setting data frame
df <- read.csv('student-mat.csv', sep=';')


#checking null values
any(is.na(df))

str(df)

################Exploratory data analysis

library(ggplot2)
library(ggthemes)
#install.packages("dplyr")
library(dplyr)


#grabing only numeric columns
num.cols <- sapply(df, is.numeric)

head(num.cols)


#filter to correlation
cor.data <- cor(df[,num.cols])
cor.data

#analyze cor.data --
#install.packages("corrplot")
library(corrplot)
#install.packages("corrgram")
library(corrgram)

help("corrplot")
corrplot(cor.data, method = 'color')

corrgram(df,order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt)

library(ggplot2)
#printing histogram
ggplot(df, aes(x=G3)) + geom_histogram(bins = 30, alpha=0.5, fill = 'blue')
str(df)
tail(df)

#set a seed
set.seed(101)

#splitting data
sample <- sample.split(df$G3, SplitRatio = 0.7)

#setting train data
train <- subset(df, sample= TRUE)

#setting test data
test <- subset(df, sample = FALSE)

#Train and Build Model
model <- lm(G3 ~., data = train)

#Run Model
print(summary(model))

res <- residuals(model)
head(res)

# Histogram of residuals
ggplot(res,aes(res)) +  geom_histogram(fill='blue',alpha=0.5)

plot(model)



#predictions

G3.predictions <- predict(model,test)

results <- cbind(G3.predictions, test$G3)
colnames(results) <- c('pred', 'real')
results <- as.data.frame(results)
print(results)

#function for printing 0 instead of negative

toZero <- function(x){
  if (x < 0) {
    return(0)
  }
  else {
    return(x)
  }
}

results$pred <- sapply(results$pred, toZero)

#mean square erro
mse <- mean((results$pred-results$real)^2)

#rootmean square
mse^0.5


#amilia package to print missing values map
install.packages("Amelia")
library(Amelia)

missmap(populationDataAU, main="Population - Missings Map", col=c("yellow", "black"), legend=FALSE)
