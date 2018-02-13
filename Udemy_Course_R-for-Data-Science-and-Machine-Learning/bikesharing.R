bike <- read.csv("bikeshare.csv")
print(bike)


p1 <- ggplot(bike, aes(x=temp, y = count))  +geom_point(alpha=0.2, aes(color=temp))
print(p1)

bike$datetime <- as.POSIXct(bike$datetime)

p2 <- ggplot(bike, aes(x=datetime, y = count))  +geom_point(alpha=0.2, aes(color=temp)) + scale_color_continuous(low='#55D8CE',high='#FF6E2E') + theme_bw()
print(p2)


