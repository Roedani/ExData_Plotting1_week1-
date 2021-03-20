
### uploading the data
data_file <- ("household_power_consumption.txt")
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

### substting the dates to be used for plot
new_data <- subset(data[data$Date %in% c("1/2/2007","2/2/2007"), ])

## preparing data for the second plot
date_time <- strptime(paste(new_data$Date, new_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
new_data$Global_active_power <- as.numeric(new_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, new_data$Global_active_power, "l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()
