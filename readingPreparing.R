## First read the data 
household <- read.csv2("household_power_consumption.txt")

## Make date column date objects
household[,1]<-as.Date(strptime(as.character(household[,1]), "%d/%m/%Y"))

### filter the data in the range below
library(dplyr)
ss <- filter(household, Date > as.Date("2007-01-31"), Date < as.Date("2007-02-03"))

## Use chron to handle times
library(chron)
dtimes <- strptime(as.character(paste(ss[,1], ss[,2])), "%Y-%m-%d %H:%M:%S")
dtparts = t(as.data.frame(strsplit(as.character(dtimes),' ')))
row.names(dtparts) = NULL
ss[,2] <-  chron(dates=dtparts[,1],times=dtparts[,2],format=c('y-m-d','h:m:s'))

## Make the other columns numbers as well
ss[, 3] <- as.numeric(as.character( ss[, 3] ))
ss[, 4] <- as.numeric(as.character( ss[, 4] ))
ss[, 5] <- as.numeric(as.character( ss[, 5] ))
ss[, 6] <- as.numeric(as.character( ss[, 6] ))
ss[, 7] <- as.numeric(as.character( ss[, 7] ))
ss[, 8] <- as.numeric(as.character( ss[, 8] ))
ss[, 9] <- as.numeric(as.character( ss[, 9] ))




