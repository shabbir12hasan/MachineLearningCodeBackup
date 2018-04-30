##########################
### importing Libraries ###
##########################
library(tidyr)

##########################
### importing data ###
##########################
df <- read.csv("theBestOf_fifa18/CompleteDataset.csv", encoding = "UTF-8")


##########################
### Cleaning and future engineering ###
##########################
#Taking only required data
df <-df[,c(2,3,5,7,8,9,11,12,15,42,43,45,64)]
View(head(df))

#prefered position as first choice
df <- separate(df, Preferred.Positions, into = c("Prefered.Position"), extra = "drop",sep = " ")