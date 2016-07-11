source("readingPreparing.R")

## Naming png file
png(file = "plot2.png", bg = "white")

## Drawing picture
with(ss, plot(Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l",  xaxt="n"))

## Explicitly labeling ticks -- there probably is a better way
lablist<-as.vector(c("Thu", "Fri", "Sat"))
text(seq(1, 2881, by=1440), par("usr")[3] - 0.2, labels = lablist,  pos = 1, xpd = TRUE)

## Closing file handle
dev.off()
