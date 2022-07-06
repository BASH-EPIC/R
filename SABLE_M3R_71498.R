install.packages("ggpubr")
library(graphics)
library(ggplot2)
installed.packages(ggplot)
library(dplyr)
library(crosstable)
library(textclean)
library(skimr)
library(tidyverse)
library(psych)
library(gridExtra)
library(stats)
library(GGally)
library(openxlsx)


#importing csv file
data <- read.csv("C:/Users/Prajakta Sable/Downloads/median_income_by_state_2010_20211116.csv")

head(data)
tail(data)
summary(data)
str(data)


## Creating a vector for North and South states----

North_vector <- c("Delaware","Florida","Georgia","Maryland","North Carolina","South Carolina","Virginia",
       "West Virginia","Alabama","Kentucky","Mississippi","Tennessee","Arizona","Louisiana",
       "Oklahoma","Texas") #16
south_vector <- c("Connecticut", "Illinois", "Indiana", "Iowa", "Maine", "Massachusetts", "Michigan", "Minnesota", "New Hampshire", "New Jersey", "New York", "Ohio", "Pennsylvania", "Rhode Island", "Vermont", "Wisconsin")
south_vector

## Data Cleaning and extracting----

data$income<-as.numeric(gsub(",","",data$X2010))
view(data$income)

South_Data<-data %>% dplyr::filter(State %in% south_vector)

sort_Sincome <- sort(South_Data$income)

North_Data <- data %>% dplyr::filter(State %in% North_vector)
North_Data

Sort_Nincome <- sort(North_Data$income)






#plotting using ggplot2
ggplot(South_Data,aes(x=State,y=sort_Sincome))+geom_bar(stat = "identity",color="black",width = 0.5, fill=rgb(0.1,0.4,0.5,0.7))+coord_flip()+theme_classic()+labs(y="income")
ggplot(North_Data,aes(x=State,y=sort_Sincome))+geom_bar(stat = "identity",color="black",width = 0.5, fill=rgb(0.1,0.4,0.5,0.7))+coord_flip()+theme_classic()+labs(y="income")

ggqqplot(South_Data$income,color = "gold1",
         ggtheme = theme_minimal())


ggplot(North_Data,aes(x=State,y=sort_Sincome))+geom_bar(stat = "identity",width=0.6,fill="darksalmon")+coord_flip()+labs(y="income")+theme_classic()

## creating vectors for mean of different states----

mean_Sdata <- (median(South_Data$income))
mean_Ndata <- (median(North_Data$income))
class(South_Data$income)
mean_Sdata

## Performing t test ----

t.test(data$income , mu = mean_Sdata )

t.test(South_Data$income , mu = mean_Sdata, alternative = "less")

t.test(South_Data$income,mu=mean_Sdata,alt="greater")
#knock -out


t.test(North_Data$income,mu=mean_Ndata,alt="less")

t.test(North_Data$income,mu=mean_Ndata,alt="greater")


#two sided test
t.test(North_Data$income,alternative = "two.side")
t.test(South_Data$income,alternative = "two.side")


t.test(data$income,)

