# calling libraries
#install.packages("pdftools")
library(readxl)


############### importing and cleaning data files #######################
#encoding = "UTF-16" for special character

##############Arsenal########

##### importing Arsenal data
sheet_1 <- excel_sheets("premierLeague/Teams/Arsenal.xlsx")
arsenal_data <- read_excel("premierLeague/Teams/Arsenal.xlsx", sheet = sheet_1)
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
str(arsenal_data)
arsenal_data$`Date of Birth` <- as.integer(arsenal_data$`Date of Birth`)
arsenal_data$`Date of Birth` <- as.Date(arsenal_data$`Date of Birth`, origin = '1899-12-30') 


View(arsenal_data)


