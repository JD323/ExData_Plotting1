#read the data
data<-read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

#create merged Date/Time column
library(lubridate)
data$DateTime<-dmy_hms(paste(data$Date,data$Time)) #uses lubridate package

#subset data by date
data$Date<-as.Date(data$Date, "%d/%m/%Y")
powerData<-subset(data, Date>="2007-02-01"&Date<="2007-02-02")

#create plot 4
#set frame
par(mfrow = c(2,2))
#draw upper left plot
plot(powerData$DateTime, powerData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
#draw upper right plot
plot(powerData$DateTime, powerData$Voltage, xlab="datetime", ylab="Voltage", type="l")
#draw lower left plot
plot(powerData$DateTime, powerData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(powerData$DateTime, powerData$Sub_metering_2, col="red")
lines(powerData$DateTime, powerData$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lwd=c(2,2,2), col=c("black", "red", "blue"), bty="n")
#draw lower right plot
plot(powerData$DateTime, powerData$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

#save plot to file
dev.copy(png, "plot4.png", width=480, height=480)
dev.off()