fileToRead <- "D:/exdata-data-household_power_consumption/household_power_consumption.txt"
myData <- read.table(fileToRead,sep = ";" ,header = TRUE,colClasses = classes, na.strings = "?" , stringsAsFactors =  FALSE)
useData <- subset(myData,Date %in% c("1/2/2007","2/2/2007"))
png("plot1.png",width = 480,height = 480)
hist(useData$Global_active_power,xlab = "Global Active Power (kilowatts)" , ylab = "Frequency" , col = "red" ,main = "Global Active Power")
dev.off()