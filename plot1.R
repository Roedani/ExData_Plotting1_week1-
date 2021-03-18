

### uploading the data
data_file <- ("household_power_consumption.txt")
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

### substting the dates to be used for plot
new_data <- subset(data[data$Date %in% c("1/2/2007","2/2/2007"), ])

### the script for make the plot
new_data$Global_active_power <- as.numeric(new_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(new_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()





