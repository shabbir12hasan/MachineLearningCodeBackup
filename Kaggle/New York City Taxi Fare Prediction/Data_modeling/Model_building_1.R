data <- read.csv('/Users/shabbir.hasan/Documents/Hasan/Git Repositories/shabbir12hasan/MachineLearningCodeBackup/Kaggle/New York City Taxi Fare Prediction/Data_cleaning/clean_v1_31-01.csv')

head(data)

########################################################## FEATURE ENGINEERING ######################################################################

summary(data)


#check data types
sapply(data,class) 



data$time_15_min_bin <- as.factor(data$time_15_min_bin)
data$time_30_min_bin <- as.factor(data$time_30_min_bin)
data$hour <- as.factor(data$hour)
data$weekend_weekday <- as.factor(data$weekend_weekday)
data$day_of_week <- as.factor(data$day_of_week)
data$day_of_month <- as.factor(data$day_of_month)
data$month <- as.factor(data$month)
data$year <- as.factor(data$year)
data$passenger_count <- as.factor(data$passenger_count)



summary(data)

#check data types
str(data)









########################################################## DATA PARTITIONING #######################################################################

set.seed(123)

## 75% of the sample size
smp_size <- floor(0.75 * nrow(data))

# partitioning the data
train_ind <- sample(seq_len(nrow(data)), size = smp_size)

train <- data[train_ind, ]
test <- data[-train_ind, ]

head(train)
head(test)




########################################################## MODEL CREATION #######################################################################

#linear reg
model_linearreg = lm(train$fare_amount ~ ., data = train)


#RANDOM FOREST
#install.packages("randomForest")
library(randomForest)
mode_rf = randomForest(train$fare_amount ~ . , data = train)

summary(mode_rf)






