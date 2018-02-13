#Dplyr Exercise

library(dplyr)

# selecting head
head(mtcars)

#Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
filter(mtcars, mpg>20, cyl == 6)

#Reorder the Data Frame by cyl first, then by descending wt.
head(arrange(mtcars, cyl, desc(wt)))

#Select the columns mpg and hp
head(select(mtcars, mpg, hp))

# Select the distinct values of the gear column.
distinct(select(mtcars, gear))

#Create a new column called "Performance" which is calculated by hp divided by wt
head(mutate(mtcars, Performance=hp/wt))

#Find the mean mpg value using dplyr.
summarise(mtcars, avg_mpg=mean(mpg))

#Use pipe operators to get the mean hp value for cars with 6 cylinders.
mtcars %>% filter(cyl==6) %>% summarise(avg_hp=mean(hp))