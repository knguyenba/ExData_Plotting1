dataFile <- "exdata/household_power_consumption.txt"
data <- read.table(dataFile, sep=";")
test <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
Global_active_power <- as.numeric(test$Global_active_power)

#when the fuck can  you do this and when you


png("plot1.png", width=480, height=480)
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
