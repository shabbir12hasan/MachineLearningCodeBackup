install.packages('data.table')


pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")



df <- read.csv('Economist_Assignment_Data.csv')

#removing column 1
df <- df[-1]

head(df)

#1
pl <- ggplot(df, aes(x=CPI, y=HDI, color=Region)) + geom_point(size=4, shape=1)
print(pl)

#2
pl <- ggplot(df, aes(x=CPI, y=HDI)) + geom_point(aes(color=Region, shape='cricle')) +
      geom_smooth(aes(group=1),method = 'lm',formula=y~log(x),se = FALSE,color = 'red')
print(pl)


#3
pl <- ggplot(df, aes(x=CPI, y=HDI, color=Region)) + geom_point(size=4, shape=1)
pl2 <- pl + geom_smooth(aes(group=1),method = 'lm',formula=y~log(x),se = FALSE,color = 'red')
pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

print(pl3  +theme_bw())



pl4<- pl3 + scale_x_continuous(name = 'samex', limits =c(.9,10.5), breaks = 1:10 ) 
print(pl4 +theme_bw())
