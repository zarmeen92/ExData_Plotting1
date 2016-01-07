fileToRead <- "D:/exdata-data-household_power_consumption/household_power_consumption.txt"
myData <- read.table(fileToRead,sep = ";" ,header = TRUE,colClasses = classes, na.strings = "?" , stringsAsFactors =  FALSE)
useData <- subset(myData,Date %in% c("1/2/2007","2/2/2007"))
png("plot4.png",width = 480,height = 480)

par(mfrow = c(2,2))
plot(y, useData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(y, useData$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(y,useData$Sub_metering_1,xlab = "",ylab = "Energy Submetering",col = "black",type  = "l")
lines(y,useData$Sub_metering_2,col = "red",type  = "l")
lines(y,useData$Sub_metering_3,col = "blue",type  = "l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
plot(y, useData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()