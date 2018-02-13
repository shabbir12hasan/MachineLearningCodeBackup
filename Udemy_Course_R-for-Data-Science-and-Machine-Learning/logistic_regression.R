#logistic regression project

ad_data <- read.csv('adult_sal.csv')

head(ad_data)

library(dplyr)

adult <- select(ad_data, -X)
head(adult)

#checking str and summary
str(adult)
summary(adult)

#Data cleaning
head(distinct(adult,type_employer))

table(adult$type_employer)

#converting never worked and without pay as unemployed
unemp <- function(job){
  job <- as.character(job)
  if(job=='Never-worked' | job=='Without-pay'){
    return('Unemployed')
  } 
  else {
    return(job)
  }
}

#applying formulat to column
adult$type_employer <- sapply(adult$type_employer, unemp)

# converting state and local gov into SL-gov. Also converting self-emp job as one
group_emp <- function(job){
  if(job=='Local-gov' | job=='State-gov'){
    return('SL-gov')
  }
  else if (job=='Self-emp-inc' | job=='Self-emp-not-inc'){
    return('self_emp')
  }
  else {
    return(job)
  }
}

adult$type_employer <- sapply(adult$type_employer, group_emp)
table(adult$type_employer)

#cleaning marital column
table(adult$marita)

group_marital <- function(mar){
  mar <- as.character(mar)
  
  # Not-Married
  if (mar=='Separated' | mar=='Divorced' | mar=='Widowed'){
    return('Not-Married')
    
    # Never-Married   
  }else if(mar=='Never-married'){
    return(mar)
    
    #Married
  }else{
    return('Married')
  }
}

adult$marital <- sapply(adult$marital,group_marital)
table(adult$marital)

str(adult)
#cleaning country column
table(adult$country)

# seperating them according to continents
Asia <- c('China','Hong','India','Iran','Cambodia','Japan', 'Laos' ,
          'Philippines' ,'Vietnam' ,'Taiwan', 'Thailand')

North.America <- c('Canada','United-States','Puerto-Rico' )

Europe <- c('England' ,'France', 'Germany' ,'Greece','Holand-Netherlands','Hungary',
            'Ireland','Italy','Poland','Portugal','Scotland','Yugoslavia')

Latin.and.South.America <- c('Columbia','Cuba','Dominican-Republic','Ecuador',
                             'El-Salvador','Guatemala','Haiti','Honduras',
                             'Mexico','Nicaragua','Outlying-US(Guam-USVI-etc)','Peru',
                             'Jamaica','Trinadad&Tobago')
Other <- c('South')


#function
group_country <- function(ctry){
  if (ctry %in% Asia){
    return('Asia')
  }else if (ctry %in% North.America){
    return('North.America')
  }else if (ctry %in% Europe){
    return('Europe')
  }else if (ctry %in% Latin.and.South.America){
    return('Latin.and.South.America')
  }else{
    return('Other')      
  }
}

adult$country <- sapply(adult$country,group_country)

table(adult$country)

#converting char type coulumn to factor type
adult$type_employer <- sapply(adult$type_employer,factor)
adult$country <- sapply(adult$country,factor)
adult$marital <- sapply(adult$marital,factor)

# Plotting missing value graph
library(Amelia)

adult[adult=='?']<-NA
table(adult$type_employer)

str(adult)
adult$type_employer <- sapply(adult$type_employer,factor)
adult$occupation <- sapply(adult$occupation,factor)

missmap(adult, y.at=c(1), y.labels = c(''), col=c('yellow','black'))

head(distinct(adult, occupation))

#we cannot fill occupation and type_employer's NA values, therefore can omit 
#them for now

adult <- na.omit(adult)
str(adult)

missmap(adult, y.at=c(1), y.labels = c(''), col=c('yellow','black'))
