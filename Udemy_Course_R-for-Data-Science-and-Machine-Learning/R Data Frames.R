#R Data Frames Exercise

#1
df <- data.frame("Age"=22, "Weight"=150, Sex='M')
df2 <- data.frame("Age"=25, "Weight"=165, Sex='M')
df3 <- data.frame("Age"=26, "Weight"=120, Sex='F')
df <- rbind(df, df2)
df <- rbind(df, df3)
df
is.data.frame()



#2
is.data.frame(mtcars)



#3
mat <- matrix(1:25, nrow=5)
mat
df.mat <- data.frame(mat)
df.mat



#4
df <-mtcars

#5
head(mtcars)


#6
avg.mpg <- mean(mtcars$mpg)
avg.mpg


#7

mtcars[mtcars$cyl==6,]


#8
mtcars[,c(9,10,11)]
mtcars[,c('am','gear')]
subset.data.frame(mtcars, am)
subset(mtcars, am)

#9
head(df)
df$perf <- df$hp/df$wt
df <- cbind(df, performance=df$hp/df$wt)

#10
help(round)
df <- cbind(df, performance=round(df$hp/df$wt, digits=2))

#10(2)
df2 <- mtcars[mtcars$hp>100 & mtcars$wt>2.5,]
mean(df2$mpg)

hornetSpot.mpg <- mtcars["Hornet Sportabout",1]
hornetSpot.mpg

