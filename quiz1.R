# quiz 1

install.packages("data.table")

library(readxl)
library(dplyr)
library(data.table)

setwd("~/R/datastuffz/")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "q1")
df_q1 <- read.csv("q1")
table(df_q1$VAL)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile = "q3.xls")
  
dat <- read_excel("q3_novi.xlsx", skip = 17)
dat <- dat[1:6,]
dat$Zip <- as.numeric(dat$Zip)
dat$Ext <- as.numeric(dat$Ext)

sum(dat$Zip*dat$Ext,na.rm=TRUE) 

# xml - teža tlaka
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml ", destfile = "q4.xml")
q4 <- read_xml("data_restaurants.xml")

#q5

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile="census.csv")
?fread

#GOTOV - 15/15 :D