source("readingPreparing.R")

## Naming png file
png(file = "plot1.png", bg = "white")

## Drawing picture
with(ss, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", axes=FALSE))
axis(side = 2, at = c(0,200,400,600,800,1000,1200,1400))
axis(side = 1, at = c(0,2,4,6))

## Closing file handle
dev.off()