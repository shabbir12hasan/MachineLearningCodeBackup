#importing batting data

batting <- read.csv('Batting.csv')
head(batting)

#checking structure
str(batting)


head(batting$AB)

head(batting$X2B)

#Batting Average
batting$BA <- batting$H / batting$AB

tail(batting$BA)

# On Base Percentage
batting$OBP <- (batting$H + batting$BB + batting$HBP) / (batting$AB + batting$BB + batting$HBP + batting$SF )


# Creating X1B (Singles)
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR
tail(batting$X1B)


# Creating Slugging Average (SLG)
batting$SLG <- ((1 * batting$X1B) + (2 * batting$X2B) + (3 * batting$X3B) + (4 * batting$HR) ) / batting$AB
str(batting)
tail(batting$SLG)


#salary data
salary <- read.csv('Salaries.csv')
head(salary)

summary(batting)
summary(salary)


#matching batting data with salary data
batting1 <- batting[ batting$yearID >= 1985,]
head(batting1)

playerData <- merge(batting1, salary, by=c("playerID", "yearID"))
head(playerData)
summary(playerData)

#getting lost players
lost_players <- subset(playerData,playerID %in% c('giambja01','damonjo01','saenzol01') )

tail(lost_players, 11)

lost_players_2001 <- subset(lost_players,yearID =='2001' )
head(lost_players_2001)


players_2001 <- subset(playerData,(yearID =='2001') )
summary(players_2001)


lost_player_requ_data <- lost_players_2001[,c('playerID','H','X2B','X3B','HR','OBP','SLG','BA','AB','salary')]
lost_player_requ_data

