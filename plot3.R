source("readingPreparing.R")

## Naming png file
png(file = "plot3.png", bg = "white")

## Creating a plot withouth content; filling in points
plot(ss$Time, ss$Sub_metering_1,  type="n", ylab="Energy sub metering", xlab="", xaxt="n")
points(ss$Time, ss$Sub_metering_1,  type="l")
points(ss$Time, ss$Sub_metering_2,  type="l", col="red")
points(ss$Time, ss$Sub_metering_3,  type="l", col="blue")

## Creating an axis specifically with the abbreviated day name (Norwegian)
axis(1, ss$Date, format(ss$Date, "%a"))

## Adding a legend
legend("topright", pch="-", col = c("black", "red", "blue"), lwd=2, seg.len=3, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Closing file handle
dev.off()
