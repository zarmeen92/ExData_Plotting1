fileToRead <- "D:/exdata-data-household_power_consumption/household_power_consumption.txt"
myData <- read.table(fileToRead,sep = ";" ,header = TRUE,colClasses = classes, na.strings = "?" , stringsAsFactors =  FALSE)
useData <- subset(myData,Date %in% c("1/2/2007","2/2/2007"))

x <- paste(useData$Date,useData$Time)
y <- strptime(x, "%m/%d/%y %H:%M:%S")
png("plot2.png",width = 480,height = 480)
plot(y, useData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()