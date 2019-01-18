data <- read.csv('train_2.csv')

head(data)

########################################################## FEATURE ENGINEERING ######################################################################



data$weekend_weekday <- as.factor(data$weekend_weekday)
data$date <- as.Date(data$date)
data$day_of_month <- as.factor(data$day_of_month)
data$month <- as.factor(data$month)
data$year <- as.factor(data$year)
data$passenger_count <- as.factor(data$passenger_count)





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


#RANDOM FOREST
#install.packages("randomForest")
library(randomForest)
mode_rf = randomForest(train$fare_amount ~ . , data = train)
