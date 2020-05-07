## Loading dataset to R, converting numerical values
data <- read.csv("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", 
                 colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
## Subsetting only the days I need
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

##plot1

## Opening PNG device
png(file = "plot1.png")
## Creating graph
hist(data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
## Closing device
dev.off()



