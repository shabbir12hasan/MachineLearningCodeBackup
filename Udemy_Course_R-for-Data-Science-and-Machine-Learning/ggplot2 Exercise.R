library(ggplot2)
library(ggthemes)
head(mpg)

#1
p1 <- ggplot(mpg, aes(hwy)) + geom_histogram(fill='red', color='red')
print(p1)

#X
p1 <- ggplot(mpg, aes(x=hwy)) + geom_histogram(bandwidth= 0.1, aes(fill=..count..))
print(p1)

#2
p1 <- ggplot(mpg, aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl)))
print(p1)

#3
head(txhousing)
p2 <- ggplot(txhousing, aes(x=sales, y=volume)) + geom_point(color='blue')
print(p2)

#4
p3 <- ggplot(txhousing, aes(x=sales, y = volume))  +geom_point(color='blue')+ geom_smooth(color='red')
print(p3)
