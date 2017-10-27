dataFile <- "exdata/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#What does stringAsFactors do? 
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
dt <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()