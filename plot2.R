#read the data
data<-read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

#create merged Date/Time column
library(lubridate)
data$DateTime<-dmy_hms(paste(data$Date,data$Time)) #uses lubridate package

#subset data by date
data$Date<-as.Date(data$Date, "%d/%m/%Y")
powerData<-subset(data, Date>="2007-02-01"&Date<="2007-02-02")

#create plot2 
plot(powerData$DateTime, powerData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

#save plot to file
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()