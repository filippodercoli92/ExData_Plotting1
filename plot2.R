## Loading dataset to R, converting numerical values
data <- read.csv("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", 
                 colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
## Subsetting only the days I need
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

##Converting date and time 
dateTime <- paste(data$Date, data$Time)
dateTime <- strptime(dateTime, "%e/%m/%Y %H:%M:%S")

##plot2

## Opening PNG device
png(file = "plot2.png")
## Creating graph
plot(dateTime, data$Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatts)", 
     type = "l")
## Closing device
dev.off()