#Linear regression sample

# Using the Student Performance Data Set from UC Irvine's Machine Learning Repository! 
# https://archive.ics.uci.edu/ml/datasets/Student+Performance
# output target of this data set is to predic G3(final grade) for students

# reading data
data <- read.csv("student-mat.csv", sep = ";")
head(data)
str(data)

# checking for NA values
any(is.na(data))

summary(data)

table(data$sex, data$age)

library(ggplot2)
library(corrgram)
library(corrplot)

# checking correlation

#only columns with numeric data will be selected
num.col <- sapply(data, is.numeric)

# creating correlation
cor.data <- cor(data[,num.col])

corrplot(cor.data, method = 'circle')


#training model

#splitting data
library(caTools)
set.seed(101)
sample <- sample.split(data$G3, SplitRatio = 0.7)

train <- subset(data, sample == T)
test <- subset(data, sample == F)


# linear model
model <- lm(G3 ~ ., train)
summary(model1)

#checking reseduals
res <- residuals(model)
res <- as.data.frame(res)

res_plot <- ggplot(res, aes(res)) + geom_histogram(fill="blue", alpha=0.5)
print(res_plot)

#plotting model to check why few res are less than -5
plot(model)

# predicting results
G3.prediction <- predict(model, test)
summary(G3.prediction)
