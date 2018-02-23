# This file contains basic features provided by dplyr package.

# Using nycflight13 data

# Calling dplyr library
library(dplyr)

  #installed.packages("tidyverse")
  #library(tidyverse)

# Taking the flihgt data
#install.packages("nycflights13")
library(nycflights13)

head(flights)

df<- flights

#1. View the whole file in Rstudio viewer.
View(flights)

#3. Filter -> used to select subster of rows
# To select rows with month january and date 1
newdf <- filter(df, month == 1, day == 1)
View(newdf)

newdf1 <- filter(df, month %in% c(2,3))
view(newdf1)


# counting number of NA values in dep_time
missing_dpt_time <- filter(df, is.na(df$dep_time))
count(missing_dpt_time)
dim(missing_dpt_time)


# 4. Arranging rows
arrangeddf <- arrange(df, desc(df$dep_delay))
head(arrangeddf)

# 5.Selecting variables 
# using - sign wont display those records.
selecteddf <- select(df, -c(month, day, sched_dep_time))
head(selecteddf)

# 6. Rename - renaming variables
dftest <- df
dftest <- rename(dftest,  Day_new = day)
head(dftest)

# 7. Mutate - create a new column
df <- mutate(df, dep_time_hrs= dep_time %/% 60)
View(df)

# 8. Transmute - similar to mutate, but it keeps only the new column
newcol <- transmute(df, dep_time_hrs= dep_time %/% 60, dep_time_mins= dep_time %% 60)
head(newcol)

# 9. summarise - gives a result
summarise(df, delay =mean(dep_delay, na.rm=T))

# 10. group by - this is used to group rows, its crutial when used along summarise
df %>% group_by(year, month, day) %>% summarise(delay = mean(dep_delay, na.rm=T))

# counts number of flights for every day of a year
df %>% group_by(year, month, day) %>% summarise(flights = n())

# counts number of flights for every month of a year
df %>% group_by(year, month) %>% summarise(flights = n())


