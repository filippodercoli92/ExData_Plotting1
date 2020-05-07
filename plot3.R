## Loading dataset to R, converting numerical values
data <- read.csv("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", 
                 colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
## Subsetting only the days I need
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

##Converting date and time 
dateTime <- paste(data$Date, data$Time)
dateTime <- strptime(dateTime, "%e/%m/%Y %H:%M:%S")

##plot3

## Opening PNG device
png(file = "plot3.png")
## Creating graph
plot(dateTime, data$Sub_metering_1, xlab = " ", ylab = "Energy sub metering", type = "n")
lines(dateTime, data$Sub_metering_1)
lines(dateTime, data$Sub_metering_2, col = "red")
lines(dateTime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1)
## Closing device
dev.off()