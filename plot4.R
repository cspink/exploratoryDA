source("readingPreparing.R")

## Naming png file
png(file = "plot4.png", bg = "white")

## Defining grid of subpics
par(mfrow=c(2,2))

#Drawing pic 1
with(ss, plot(Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l",  xaxt="n"))
lablist<-as.vector(c("Thu", "Fri", "Sat"))
text(seq(1, 2881, by=1440), par("usr")[3] - 0.2, labels = lablist,  pos = 1, xpd = TRUE)

#Drawing pic 2
with(ss, plot(Voltage, xlab="datetime", ylab="Voltage", type="l",  xaxt="n"))
lablist<-as.vector(c("Thu", "Fri", "Sat"))
text(seq(1, 2881, by=1440), par("usr")[3] - 0.2, labels = lablist,  pos = 1, xpd = TRUE)

#Drawing pic 3
plot(ss$Time, ss$Sub_metering_1,  type="n", ylab="Energy sub metering", xlab="", xaxt="n")
points(ss$Time, ss$Sub_metering_1,  type="l")
points(ss$Time, ss$Sub_metering_2,  type="l", col="red")
points(ss$Time, ss$Sub_metering_3,  type="l", col="blue")
axis(1, ss$Date, format(ss$Date, "%a"))
legend("topright", pch="-", col = c("black", "red", "blue"), lwd=2, seg.len=3, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Drawing pic 4
with(ss, plot(Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l",  xaxt="n"))
lablist<-as.vector(c("Thu", "Fri", "Sat"))
text(seq(1, 2881, by=1440), par("usr")[3] - 0.2, labels = lablist,  pos = 1, xpd = TRUE)

#Closing file handle
dev.off()