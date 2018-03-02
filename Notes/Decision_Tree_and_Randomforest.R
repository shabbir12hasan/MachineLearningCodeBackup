# DECISION TREE

#install.packages("rpart")
library(rpart)

str(kyphosis)
head(kyphosis)
tail(kyphosis)

# selecting column Kyphosis as we are creating a tree on basis of that column
tree <- rpart(Kyphosis ~., method = "class", data = kyphosis)

printcp(tree)

#plotting the tree
plot(tree, uniform=TRUE, main="Main Title")

#filling in varaibles in tree
text(tree, use.n=TRUE, all=TRUE)

#adding more visulization in tree
#install.packages("rpart.plot")
library(rpart.plot)

prp(tree)


# RANDOM FOREST
library(randomForest)

model <- randomForest(Kyphosis ~., data = kyphosis)
print(model)

#checking importance of each predictor
importance(model)