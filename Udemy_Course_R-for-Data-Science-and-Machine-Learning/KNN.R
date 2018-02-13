#install.packages("ISLR")

#importing library
library(ISLR)

head(iris)

str(iris)

#standardising data

st.data <- scale(iris[1:4])
head(st.data)

#checking variance
var(st.data[,1])

#combining scale data and result data
final.data <- cbind(st.data, iris[5])
head(final.data)

set.seed(101)
library(caTools)
sample <- sample.split(final.data$Species, SplitRatio = 0.7)

train <- subset(final.data, sample == TRUE)
test <- subset(final.data, sample == FALSE)

# building knn model

library(class)

species.prediction <- knn(train[1:4], test[1:4], train$Species, k=1)
species.prediction

mean(test$Species != species.prediction)



# choosing a k value

species.prediction <- NULL
error.rate <- NULL

for(i in 1:10){
  set.seed(101)
  species.prediction <- knn(train[1:4],test[1:4],train$Species,k=i)
  error.rate[i] <- mean(test$Species != species.prediction)
}


library(ggplot2)
k.values <- 1:10
error.df <- data.frame(error.rate,k.values)


pl <- ggplot(error.df,aes(x=k.values,y=error.rate)) + geom_point()
pl + geom_line(lty="dotted",color='red')