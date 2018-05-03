# calling libraries
library(readxl)
library(ggplot2)
library(lubridate)
library(dplyr)

############### importing and cleaning data files #######################
#encoding = "UTF-16" for special character

##############Arsenal########

##### importing Arsenal data
sheet_1 <- excel_sheets("Teams/Arsenal.xlsx")
arsenal_data <- read_excel("Teams/Arsenal.xlsx", sheet = sheet_1)
head(arsenal_data)

##### Cleaning

#removing top 3 rows
arsenal_data <- arsenal_data[-c(1:3),]
#converting to df
arsenal_data <- as.data.frame(arsenal_data)
#Creading headers from first row
colnames(arsenal_data) = arsenal_data[1,]
# removing number row
arsenal_data <- arsenal_data[-1,]
#removing number column
arsenal_data <- arsenal_data[,-1]
# removing birthplace column
arsenal_data <- arsenal_data[,-7]
#removing rows with all na values
arsenal_data <- na.omit(arsenal_data)
#removign rows having header data
arsenal_data <- arsenal_data[arsenal_data$Name !="Name",]
#resetting index
rownames(arsenal_data) <-NULL
#Adding Team Name coulumn
arsenal_data$Current_Team <- "Arsenal"
#Changing date format
arsenal_data$`Date of Birth` <- as.integer(arsenal_data$`Date of Birth`)
arsenal_data$`Date of Birth` <- as.Date(arsenal_data$`Date of Birth`, origin = '1899-12-30') 

#View(arsenal_data)
########################################


##############Boremouth########

##### importing Boremouth data
sheet_1 <- excel_sheets("Teams/Boremouth.xlsx")
Boremouth_data <- read_excel("Teams/Boremouth.xlsx", sheet = sheet_1)
head(Boremouth_data)

##### Cleaning

#removing top 3 rows
Boremouth_data <- Boremouth_data[-c(1:3),]
#converting to df
Boremouth_data <- as.data.frame(Boremouth_data)
#Creading headers from first row
colnames(Boremouth_data) = Boremouth_data[1,]
# removing number row
Boremouth_data <- Boremouth_data[-1,]
#removing number column
Boremouth_data <- Boremouth_data[,-1]
# removing birthplace column
Boremouth_data <- Boremouth_data[,-7]
#removing rows with all na values
Boremouth_data <- na.omit(Boremouth_data)
#removign rows having header data
Boremouth_data <- Boremouth_data[Boremouth_data$Name !="Name",]
#resetting index
rownames(Boremouth_data) <-NULL
#Adding Team Name coulumn
Boremouth_data$Current_Team <- "Boremouth"
#Changing date format
Boremouth_data$`Date of Birth` <- as.integer(Boremouth_data$`Date of Birth`)
Boremouth_data$`Date of Birth` <- as.Date(Boremouth_data$`Date of Birth`, origin = '1899-12-30') 

#View(Boremouth_data)
########################################

##############Burnley########

##### importing Burnley data
sheet_1 <- excel_sheets("Teams/Burnley.xlsx")
Burnley_data <- read_excel("Teams/Burnley.xlsx", sheet = sheet_1)
head(Burnley_data)

##### Cleaning

#removing top 3 rows
Burnley_data <- Burnley_data[-c(1:3),]
#converting to df
Burnley_data <- as.data.frame(Burnley_data)
#Creading headers from first row
colnames(Burnley_data) = Burnley_data[1,]
# removing number row
Burnley_data <- Burnley_data[-1,]
#removing number column
Burnley_data <- Burnley_data[,-1]
# removing birthplace column
Burnley_data <- Burnley_data[,-7]
#removing rows with all na values
Burnley_data <- na.omit(Burnley_data)
#removign rows having header data
Burnley_data <- Burnley_data[Burnley_data$Name !="Name",]
#resetting index
rownames(Burnley_data) <-NULL
#Adding Team Name coulumn
Burnley_data$Current_Team <- "Burnley"
#Changing date format
Burnley_data$`Date of Birth` <- as.integer(Burnley_data$`Date of Birth`)
Burnley_data$`Date of Birth` <- as.Date(Burnley_data$`Date of Birth`, origin = '1899-12-30') 

#View(Burnley_data)
########################################

##############Chelsea########

##### importing Chelsea data
sheet_1 <- excel_sheets("Teams/Chelsea.xlsx")
Chelsea_data <- read_excel("Teams/Chelsea.xlsx", sheet = sheet_1)
head(Chelsea_data)

##### Cleaning

#removing top 3 rows
Chelsea_data <- Chelsea_data[-c(1:3),]
#converting to df
Chelsea_data <- as.data.frame(Chelsea_data)
#Creading headers from first row
colnames(Chelsea_data) = Chelsea_data[1,]
# removing number row
Chelsea_data <- Chelsea_data[-1,]
#removing number column
Chelsea_data <- Chelsea_data[,-1]
# removing birthplace column
Chelsea_data <- Chelsea_data[,-7]
#removing rows with all na values
Chelsea_data <- na.omit(Chelsea_data)
#removign rows having header data
Chelsea_data <- Chelsea_data[Chelsea_data$Name !="Name",]
#resetting index
rownames(Chelsea_data) <-NULL
#Adding Team Name coulumn
Chelsea_data$Current_Team <- "Chelsea"
#Changing date format
Chelsea_data$`Date of Birth` <- as.integer(Chelsea_data$`Date of Birth`)
Chelsea_data$`Date of Birth` <- as.Date(Chelsea_data$`Date of Birth`, origin = '1899-12-30') 

#View(Chelsea_data)
########################################

##############Crystal_Palace########

##### importing Crystal_Palace data
sheet_1 <- excel_sheets("Teams/Crystal_Palace.xlsx")
Crystal_Palace_data <- read_excel("Teams/Crystal_Palace.xlsx", sheet = sheet_1)
head(Crystal_Palace_data)

##### Cleaning

#removing top 3 rows
Crystal_Palace_data <- Crystal_Palace_data[-c(1:3),]
#converting to df
Crystal_Palace_data <- as.data.frame(Crystal_Palace_data)
#Creading headers from first row
colnames(Crystal_Palace_data) = Crystal_Palace_data[1,]
# removing number row
Crystal_Palace_data <- Crystal_Palace_data[-1,]
#removing number column
Crystal_Palace_data <- Crystal_Palace_data[,-1]
# removing birthplace column
Crystal_Palace_data <- Crystal_Palace_data[,-7]
#removing rows with all na values
Crystal_Palace_data <- na.omit(Crystal_Palace_data)
#removign rows having header data
Crystal_Palace_data <- Crystal_Palace_data[Crystal_Palace_data$Name !="Name",]
#resetting index
rownames(Crystal_Palace_data) <-NULL
#Adding Team Name coulumn
Crystal_Palace_data$Current_Team <- "Crystal Palace"
#Changing date format
Crystal_Palace_data$`Date of Birth` <- as.integer(Crystal_Palace_data$`Date of Birth`)
Crystal_Palace_data$`Date of Birth` <- as.Date(Crystal_Palace_data$`Date of Birth`, origin = '1899-12-30') 

#View(Crystal_Palace_data)
########################################

##############Everton########

##### importing Everton data
sheet_1 <- excel_sheets("Teams/Everton.xlsx")
Everton_data <- read_excel("Teams/Everton.xlsx", sheet = sheet_1)
head(Everton_data)

##### Cleaning

#removing top 3 rows
Everton_data <- Everton_data[-c(1:3),]
#converting to df
Everton_data <- as.data.frame(Everton_data)
#Creading headers from first row
colnames(Everton_data) = Everton_data[1,]
# removing number row
Everton_data <- Everton_data[-1,]
#removing number column
Everton_data <- Everton_data[,-1]
# removing birthplace column
Everton_data <- Everton_data[,-7]
#removing rows with all na values
Everton_data <- na.omit(Everton_data)
#removign rows having header data
Everton_data <- Everton_data[Everton_data$Name !="Name",]
#resetting index
rownames(Everton_data) <-NULL
#Adding Team Name coulumn
Everton_data$Current_Team <- "Everton"
#Changing date format
Everton_data$`Date of Birth` <- as.integer(Everton_data$`Date of Birth`)
Everton_data$`Date of Birth` <- as.Date(Everton_data$`Date of Birth`, origin = '1899-12-30') 

#View(Everton_data)
########################################

##############Hull_City########

##### importing Hull_City data
sheet_1 <- excel_sheets("Teams/Hull_City.xlsx")
Hull_City_data <- read_excel("Teams/Hull_City.xlsx", sheet = sheet_1)
head(Hull_City_data)

##### Cleaning

#removing top 3 rows
Hull_City_data <- Hull_City_data[-c(1:3),]
#converting to df
Hull_City_data <- as.data.frame(Hull_City_data)
#Creading headers from first row
colnames(Hull_City_data) = Hull_City_data[1,]
# removing number row
Hull_City_data <- Hull_City_data[-1,]
#removing number column
Hull_City_data <- Hull_City_data[,-1]
# removing birthplace column
Hull_City_data <- Hull_City_data[,-7]
#removing rows with all na values
Hull_City_data <- na.omit(Hull_City_data)
#removign rows having header data
Hull_City_data <- Hull_City_data[Hull_City_data$Name !="Name",]
#resetting index
rownames(Hull_City_data) <-NULL
#Adding Team Name coulumn
Hull_City_data$Current_Team <- "Hull City"
#Changing date format
Hull_City_data$`Date of Birth` <- as.integer(Hull_City_data$`Date of Birth`)
Hull_City_data$`Date of Birth` <- as.Date(Hull_City_data$`Date of Birth`, origin = '1899-12-30') 

#View(Hull_City_data)
########################################

##############Leicester########

##### importing Leicester data
sheet_1 <- excel_sheets("Teams/Leicester.xlsx")
Leicester_data <- read_excel("Teams/Leicester.xlsx", sheet = sheet_1)
head(Leicester_data)

##### Cleaning

#removing top 3 rows
Leicester_data <- Leicester_data[-c(1:3),]
#converting to df
Leicester_data <- as.data.frame(Leicester_data)
#Creading headers from first row
colnames(Leicester_data) = Leicester_data[1,]
# removing number row
Leicester_data <- Leicester_data[-1,]
#removing number column
Leicester_data <- Leicester_data[,-1]
# removing birthplace column
Leicester_data <- Leicester_data[,-7]
#removing rows with all na values
Leicester_data <- na.omit(Leicester_data)
#removign rows having header data
Leicester_data <- Leicester_data[Leicester_data$Name !="Name",]
#resetting index
rownames(Leicester_data) <-NULL
#Adding Team Name coulumn
Leicester_data$Current_Team <- "Leicester"
#Changing date format
Leicester_data$`Date of Birth` <- as.integer(Leicester_data$`Date of Birth`)
Leicester_data$`Date of Birth` <- as.Date(Leicester_data$`Date of Birth`, origin = '1899-12-30') 

#View(Leicester_data)
########################################

##############Liverpool########

##### importing Liverpool data
sheet_1 <- excel_sheets("Teams/Liverpool.xlsx")
Liverpool_data <- read_excel("Teams/Liverpool.xlsx", sheet = sheet_1)
head(Liverpool_data)

##### Cleaning

#removing top 3 rows
Liverpool_data <- Liverpool_data[-c(1:3),]
#converting to df
Liverpool_data <- as.data.frame(Liverpool_data)
#Creading headers from first row
colnames(Liverpool_data) = Liverpool_data[1,]
# removing number row
Liverpool_data <- Liverpool_data[-1,]
#removing number column
Liverpool_data <- Liverpool_data[,-1]
# removing birthplace column
Liverpool_data <- Liverpool_data[,-7]
#removing rows with all na values
Liverpool_data <- na.omit(Liverpool_data)
#removign rows having header data
Liverpool_data <- Liverpool_data[Liverpool_data$Name !="Name",]
#resetting index
rownames(Liverpool_data) <-NULL
#Adding Team Name coulumn
Liverpool_data$Current_Team <- "Liverpool"
#Changing date format
Liverpool_data$`Date of Birth` <- as.integer(Liverpool_data$`Date of Birth`)
Liverpool_data$`Date of Birth` <- as.Date(Liverpool_data$`Date of Birth`, origin = '1899-12-30') 

#View(Liverpool_data)
########################################

##############Manchester_City########

##### importing Manchester_City data
sheet_1 <- excel_sheets("Teams/Manchester_City.xlsx")
Manchester_City_data <- read_excel("Teams/Manchester_City.xlsx", sheet = sheet_1)
head(Manchester_City_data)

##### Cleaning

#removing top 3 rows
Manchester_City_data <- Manchester_City_data[-c(1:3),]
#converting to df
Manchester_City_data <- as.data.frame(Manchester_City_data)
#Creading headers from first row
colnames(Manchester_City_data) = Manchester_City_data[1,]
# removing number row
Manchester_City_data <- Manchester_City_data[-1,]
#removing number column
Manchester_City_data <- Manchester_City_data[,-1]
# removing birthplace column
Manchester_City_data <- Manchester_City_data[,-7]
#removing rows with all na values
Manchester_City_data <- na.omit(Manchester_City_data)
#removign rows having header data
Manchester_City_data <- Manchester_City_data[Manchester_City_data$Name !="Name",]
#resetting index
rownames(Manchester_City_data) <-NULL
#Adding Team Name coulumn
Manchester_City_data$Current_Team <- "Manchester City"
#Changing date format
Manchester_City_data$`Date of Birth` <- as.integer(Manchester_City_data$`Date of Birth`)
Manchester_City_data$`Date of Birth` <- as.Date(Manchester_City_data$`Date of Birth`, origin = '1899-12-30') 

#View(Manchester_City_data)
########################################

##############Manchester_United########

##### importing Manchester_United data
sheet_1 <- excel_sheets("Teams/Manchester_United.xlsx")
Manchester_United_data <- read_excel("Teams/Manchester_United.xlsx", sheet = sheet_1)
head(Manchester_United_data)

##### Cleaning

#removing top 3 rows
Manchester_United_data <- Manchester_United_data[-c(1:3),]
#converting to df
Manchester_United_data <- as.data.frame(Manchester_United_data)
#Creading headers from first row
colnames(Manchester_United_data) = Manchester_United_data[1,]
# removing number row
Manchester_United_data <- Manchester_United_data[-1,]
#removing number column
Manchester_United_data <- Manchester_United_data[,-1]
# removing birthplace column
Manchester_United_data <- Manchester_United_data[,-7]
#removing rows with all na values
Manchester_United_data <- na.omit(Manchester_United_data)
#removign rows having header data
Manchester_United_data <- Manchester_United_data[Manchester_United_data$Name !="Name",]
#resetting index
rownames(Manchester_United_data) <-NULL
#Adding Team Name coulumn
Manchester_United_data$Current_Team <- "Manchester United"
#Changing date format
Manchester_United_data$`Date of Birth` <- as.integer(Manchester_United_data$`Date of Birth`)
Manchester_United_data$`Date of Birth` <- as.Date(Manchester_United_data$`Date of Birth`, origin = '1899-12-30') 

#View(Manchester_United_data)
########################################

##############Middlesbrough########

##### importing Middlesbrough data
sheet_1 <- excel_sheets("Teams/Middlesbrough.xlsx")
Middlesbrough_data <- read_excel("Teams/Middlesbrough.xlsx", sheet = sheet_1)
head(Middlesbrough_data)

##### Cleaning

#removing top 3 rows
Middlesbrough_data <- Middlesbrough_data[-c(1:3),]
#converting to df
Middlesbrough_data <- as.data.frame(Middlesbrough_data)
#Creading headers from first row
colnames(Middlesbrough_data) = Middlesbrough_data[1,]
# removing number row
Middlesbrough_data <- Middlesbrough_data[-1,]
#removing number column
Middlesbrough_data <- Middlesbrough_data[,-1]
# removing birthplace column
Middlesbrough_data <- Middlesbrough_data[,-7]
#removing rows with all na values
Middlesbrough_data <- na.omit(Middlesbrough_data)
#removign rows having header data
Middlesbrough_data <- Middlesbrough_data[Middlesbrough_data$Name !="Name",]
#resetting index
rownames(Middlesbrough_data) <-NULL
#Adding Team Name coulumn
Middlesbrough_data$Current_Team <- "Middlesbrough"
#Changing date format
Middlesbrough_data$`Date of Birth` <- as.integer(Middlesbrough_data$`Date of Birth`)
Middlesbrough_data$`Date of Birth` <- as.Date(Middlesbrough_data$`Date of Birth`, origin = '1899-12-30') 

#View(Middlesbrough_data)
########################################

##############Southampton########

##### importing Southampton data
sheet_1 <- excel_sheets("Teams/Southampton.xlsx")
Southampton_data <- read_excel("Teams/Southampton.xlsx", sheet = sheet_1)
head(Southampton_data)

##### Cleaning

#removing top 3 rows
Southampton_data <- Southampton_data[-c(1:3),]
#converting to df
Southampton_data <- as.data.frame(Southampton_data)
#Creading headers from first row
colnames(Southampton_data) = Southampton_data[1,]
# removing number row
Southampton_data <- Southampton_data[-1,]
#removing number column
Southampton_data <- Southampton_data[,-1]
# removing birthplace column
Southampton_data <- Southampton_data[,-7]
#removing rows with all na values
Southampton_data <- na.omit(Southampton_data)
#removign rows having header data
Southampton_data <- Southampton_data[Southampton_data$Name !="Name",]
#resetting index
rownames(Southampton_data) <-NULL
#Adding Team Name coulumn
Southampton_data$Current_Team <- "Southampton"
#Changing date format
Southampton_data$`Date of Birth` <- as.integer(Southampton_data$`Date of Birth`)
Southampton_data$`Date of Birth` <- as.Date(Southampton_data$`Date of Birth`, origin = '1899-12-30') 

#View(Southampton_data)
########################################

##############Stoke_City########

##### importing Stoke_City data
sheet_1 <- excel_sheets("Teams/Stoke_City.xlsx")
Stoke_City_data <- read_excel("Teams/Stoke_City.xlsx", sheet = sheet_1)
head(Stoke_City_data)

##### Cleaning

#removing top 3 rows
Stoke_City_data <- Stoke_City_data[-c(1:3),]
#converting to df
Stoke_City_data <- as.data.frame(Stoke_City_data)
#Creading headers from first row
colnames(Stoke_City_data) = Stoke_City_data[1,]
# removing number row
Stoke_City_data <- Stoke_City_data[-1,]
#removing number column
Stoke_City_data <- Stoke_City_data[,-1]
# removing birthplace column
Stoke_City_data <- Stoke_City_data[,-7]
#removing rows with all na values
Stoke_City_data <- na.omit(Stoke_City_data)
#removign rows having header data
Stoke_City_data <- Stoke_City_data[Stoke_City_data$Name !="Name",]
#resetting index
rownames(Stoke_City_data) <-NULL
#Adding Team Name coulumn
Stoke_City_data$Current_Team <- "Stoke City"
#Changing date format
Stoke_City_data$`Date of Birth` <- as.integer(Stoke_City_data$`Date of Birth`)
Stoke_City_data$`Date of Birth` <- as.Date(Stoke_City_data$`Date of Birth`, origin = '1899-12-30') 

#View(Stoke_City_data)
########################################


##############Sunderland########

##### importing Sunderland data
sheet_1 <- excel_sheets("Teams/Sunderland.xlsx")
Sunderland_data <- read_excel("Teams/Sunderland.xlsx", sheet = sheet_1)
head(Sunderland_data)

##### Cleaning

#removing top 3 rows
Sunderland_data <- Sunderland_data[-c(1:3),]
#converting to df
Sunderland_data <- as.data.frame(Sunderland_data)
#Creading headers from first row
colnames(Sunderland_data) = Sunderland_data[1,]
# removing number row
Sunderland_data <- Sunderland_data[-1,]
#removing number column
Sunderland_data <- Sunderland_data[,-1]
# removing birthplace column
Sunderland_data <- Sunderland_data[,-7]
#removing rows with all na values
Sunderland_data <- na.omit(Sunderland_data)
#removign rows having header data
Sunderland_data <- Sunderland_data[Sunderland_data$Name !="Name",]
#resetting index
rownames(Sunderland_data) <-NULL
#Adding Team Name coulumn
Sunderland_data$Current_Team <- "Sunderland"
#Changing date format
Sunderland_data$`Date of Birth` <- as.integer(Sunderland_data$`Date of Birth`)
Sunderland_data$`Date of Birth` <- as.Date(Sunderland_data$`Date of Birth`, origin = '1899-12-30') 

#View(Sunderland_data)
########################################

##############Swansea_City########

##### importing Swansea_City data
sheet_1 <- excel_sheets("Teams/Swansea_City.xlsx")
Swansea_City_data <- read_excel("Teams/Swansea_City.xlsx", sheet = sheet_1)
head(Swansea_City_data)

##### Cleaning

#removing top 3 rows
Swansea_City_data <- Swansea_City_data[-c(1:3),]
#converting to df
Swansea_City_data <- as.data.frame(Swansea_City_data)
#Creading headers from first row
colnames(Swansea_City_data) = Swansea_City_data[1,]
# removing number row
Swansea_City_data <- Swansea_City_data[-1,]
#removing number column
Swansea_City_data <- Swansea_City_data[,-1]
# removing birthplace column
Swansea_City_data <- Swansea_City_data[,-7]
#removing rows with all na values
Swansea_City_data <- na.omit(Swansea_City_data)
#removign rows having header data
Swansea_City_data <- Swansea_City_data[Swansea_City_data$Name !="Name",]
#resetting index
rownames(Swansea_City_data) <-NULL
#Adding Team Name coulumn
Swansea_City_data$Current_Team <- "Swansea City"
#Changing date format
Swansea_City_data$`Date of Birth` <- as.integer(Swansea_City_data$`Date of Birth`)
Swansea_City_data$`Date of Birth` <- as.Date(Swansea_City_data$`Date of Birth`, origin = '1899-12-30') 

#View(Swansea_City_data)
########################################

##############Tottenham########

##### importing Tottenham data
sheet_1 <- excel_sheets("Teams/Tottenham.xlsx")
Tottenham_data <- read_excel("Teams/Tottenham.xlsx", sheet = sheet_1)
head(Tottenham_data)

##### Cleaning

#removing top 3 rows
Tottenham_data <- Tottenham_data[-c(1:3),]
#converting to df
Tottenham_data <- as.data.frame(Tottenham_data)
#Creading headers from first row
colnames(Tottenham_data) = Tottenham_data[1,]
# removing number row
Tottenham_data <- Tottenham_data[-1,]
#removing number column
Tottenham_data <- Tottenham_data[,-1]
# removing birthplace column
Tottenham_data <- Tottenham_data[,-7]
#removing rows with all na values
Tottenham_data <- na.omit(Tottenham_data)
#removign rows having header data
Tottenham_data <- Tottenham_data[Tottenham_data$Name !="Name",]
#resetting index
rownames(Tottenham_data) <-NULL
#Adding Team Name coulumn
Tottenham_data$Current_Team <- "Tottenham"
#Changing date format
Tottenham_data$`Date of Birth` <- as.integer(Tottenham_data$`Date of Birth`)
Tottenham_data$`Date of Birth` <- as.Date(Tottenham_data$`Date of Birth`, origin = '1899-12-30') 

#View(Tottenham_data)
########################################

##############Watford########

##### importing Watford data
sheet_1 <- excel_sheets("Teams/Watford.xlsx")
Watford_data <- read_excel("Teams/Watford.xlsx", sheet = sheet_1)
head(Watford_data)

##### Cleaning

#removing top 3 rows
Watford_data <- Watford_data[-c(1:3),]
#converting to df
Watford_data <- as.data.frame(Watford_data)
#Creading headers from first row
colnames(Watford_data) = Watford_data[1,]
# removing number row
Watford_data <- Watford_data[-1,]
#removing number column
Watford_data <- Watford_data[,-1]
# removing birthplace column
Watford_data <- Watford_data[,-7]
#removing rows with all na values
Watford_data <- na.omit(Watford_data)
#removign rows having header data
Watford_data <- Watford_data[Watford_data$Name !="Name",]
#resetting index
rownames(Watford_data) <-NULL
#Adding Team Name coulumn
Watford_data$Current_Team <- "Watford"
#Changing date format
Watford_data$`Date of Birth` <- as.integer(Watford_data$`Date of Birth`)
Watford_data$`Date of Birth` <- as.Date(Watford_data$`Date of Birth`, origin = '1899-12-30') 

#View(Watford_data)
########################################

##############West_Brom########

##### importing West_Brom data
sheet_1 <- excel_sheets("Teams/West_Brom.xlsx")
West_Brom_data <- read_excel("Teams/West_Brom.xlsx", sheet = sheet_1)
head(West_Brom_data)

##### Cleaning

#removing top 3 rows
West_Brom_data <- West_Brom_data[-c(1:3),]
#converting to df
West_Brom_data <- as.data.frame(West_Brom_data)
#Creading headers from first row
colnames(West_Brom_data) = West_Brom_data[1,]
# removing number row
West_Brom_data <- West_Brom_data[-1,]
#removing number column
West_Brom_data <- West_Brom_data[,-1]
# removing birthplace column
West_Brom_data <- West_Brom_data[,-7]
#removing rows with all na values
West_Brom_data <- na.omit(West_Brom_data)
#removign rows having header data
West_Brom_data <- West_Brom_data[West_Brom_data$Name !="Name",]
#resetting index
rownames(West_Brom_data) <-NULL
#Adding Team Name coulumn
West_Brom_data$Current_Team <- "West Brom"
#Changing date format
West_Brom_data$`Date of Birth` <- as.integer(West_Brom_data$`Date of Birth`)
West_Brom_data$`Date of Birth` <- as.Date(West_Brom_data$`Date of Birth`, origin = '1899-12-30') 

#View(West_Brom_data)
########################################

##############West_Ham########

##### importing West_Ham data
sheet_1 <- excel_sheets("Teams/West_Ham.xlsx")
West_Ham_data <- read_excel("Teams/West_Ham.xlsx", sheet = sheet_1)
head(West_Ham_data)

##### Cleaning

#removing top 3 rows
West_Ham_data <- West_Ham_data[-c(1:3),]
#converting to df
West_Ham_data <- as.data.frame(West_Ham_data)
#Creading headers from first row
colnames(West_Ham_data) = West_Ham_data[1,]
# removing number row
West_Ham_data <- West_Ham_data[-1,]
#removing number column
West_Ham_data <- West_Ham_data[,-1]
# removing birthplace column
West_Ham_data <- West_Ham_data[,-7]
#removing rows with all na values
West_Ham_data <- na.omit(West_Ham_data)
#removign rows having header data
West_Ham_data <- West_Ham_data[West_Ham_data$Name !="Name",]
#resetting index
rownames(West_Ham_data) <-NULL
#Adding Team Name coulumn
West_Ham_data$Current_Team <- "West Ham"
#Changing date format
West_Ham_data$`Date of Birth` <- as.integer(West_Ham_data$`Date of Birth`)
West_Ham_data$`Date of Birth` <- as.Date(West_Ham_data$`Date of Birth`, origin = '1899-12-30') 

#View(West_Ham_data)
########################################


###########Merging all teams data
players <- rbind(arsenal_data, Boremouth_data, Burnley_data, Chelsea_data, Crystal_Palace_data,
                 Everton_data, Hull_City_data, Leicester_data, Liverpool_data, Manchester_City_data,
                 Manchester_United_data, Middlesbrough_data, Southampton_data, Stoke_City_data,
                 Sunderland_data, Swansea_City_data, Tottenham_data, Watford_data,
                 West_Brom_data, West_Ham_data)

######### Removing previous club
players <- players[,-7]

########### Rounding off players height to 2 decimal
players$Height <- as.numeric(players$Height)
players$Height <- round(players$Height, 2)

########### Converting weight to numeric
players$Weight <- as.numeric(players$Weight)

########## Calculating BMI of players
players$BMI <- (players$Weight / players$Height^2)


# calculating age of players during start of the season 2016/17
# season started at 13-08-2016. Calculating age of all players by that time

#function to calculate age
calc_age <- function(birthDate) {
  refDate="2016-08-13"
  period <- as.period(new_interval(birthDate, refDate), unit = "year")
  return(period$year)
}

#creating age column
players$Age <- sapply(players$`Date of Birth`, calc_age)

# Converting Pos to factor
players$Pos <- as.factor(players$Pos)

View(players)
# writing data in disk
# write.csv(players, file = "PL_payers_16-17")




######################### Data Viz ##################
#Creating plot for number of players from different countries
ggplot(players, aes(players$Nat)) + geom_bar()

# England has most number of players, therefore its diffiult to see plots for other countries,
# we will plot for countries other than england
players_noengland <- players[players$Nat!="ENG",]
international_players <- ggplot(players_noengland, aes(players_noengland$Nat)) + geom_bar(aes(fill=players_noengland$Nat))
international_players <-  international_players + theme(axis.text.x = element_text(angle = 90, hjust = 1))
international_players + labs(fill = "Nationality") +xlab("Countires") + ylab("Count")

# Players height
q <- ggplot(data = players, aes(x = Height)) + geom_histogram(binwidth = .025, aes(fill=Pos))
q + facet_wrap(~Pos) + labs(fill="Position") + xlab("Height in meters")


# comparing height and weight ratio
p <- ggplot(players, aes(Height, Weight)) + geom_point(aes(color=Pos, shape=Pos, size=6))
p + facet_grid(. ~ Pos)

#plotting age and weight
ggplot(players, aes(x=players$Age, y=players$Weight)) + geom_point(aes(color=Age), size=5) + xlab("Age") + ylab("Weight in Kg")


#Plotting BMI
ggplot(players, aes(players$BMI)) + geom_histogram() + xlab("Body mass index")

players[players$BMI>25,]

#number of players in position
ggplot(players, aes(players$Pos)) + geom_bar()

#plotting players age
ggplot(players, aes(players$Age)) + geom_bar()

players[players$Age>37,]


#checking team squad
team_squad <- ggplot(players, aes(players$Current_Team)) + geom_bar(aes(fill=players$Current_Team))
team_squad <-  team_squad + theme(axis.text.x = element_text(angle = 90, hjust = 1))




