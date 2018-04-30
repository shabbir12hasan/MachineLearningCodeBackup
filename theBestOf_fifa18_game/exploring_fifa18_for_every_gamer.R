##########################
### importing Libraries ###
##########################
library(tidyr)
library(ggplot2)

##########################
### importing data ###
##########################
df <- read.csv("theBestOf_fifa18/CompleteDataset.csv", encoding = "UTF-8")


##########################
### Cleaning and future engineering ###
##########################
# Taking only required data
df <-df[,c(2,3,5,7,8,9,11,12,15,42,43,45,64)]
View(head(df))

str(df)

# prefered position as first choice
df <- separate(df, Preferred.Positions, into = c("Prefered.Position"), extra = "drop",sep = " ")

# creating column for growth that a player can achieve
# this would be (potential - overall)
df$Growth.scope <- df$Potential-df$Overall

# plotting growth scope
ggplot(df, aes(x=Growth.scope)) + geom_histogram()

# checking which players have maximum capacity to grow
df[df$Growth.scope==max(df$Growth.scope),]
