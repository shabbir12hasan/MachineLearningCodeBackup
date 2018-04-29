# calling libraries
#install.packages("pdftools")
library(readxl)


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

View(arsenal_data)
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
str(Boremouth_data)
Boremouth_data$`Date of Birth` <- as.integer(Boremouth_data$`Date of Birth`)
Boremouth_data$`Date of Birth` <- as.Date(Boremouth_data$`Date of Birth`, origin = '1899-12-30') 

View(Boremouth_data)
########################################

