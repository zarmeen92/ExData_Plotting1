fileToRead <- "D:/exdata-data-household_power_consumption/household_power_consumption.txt"
myData <- read.table(fileToRead,sep = ";" ,header = TRUE,colClasses = classes, na.strings = "?" , stringsAsFactors =  FALSE)
useData <- subset(myData,Date %in% c("1/2/2007","2/2/2007"))
png("plot3.png",width = 480,height = 480)
plot(y,useData$Sub_metering_1,xlab = "",ylab = "Energy Submetering",col = "black",type  = "l")
lines(y,useData$Sub_metering_2,col = "red",type  = "l")
lines(y,useData$Sub_metering_3,col = "blue",type  = "l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()