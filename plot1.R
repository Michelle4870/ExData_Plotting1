## Creating Plot 1

library("sqldf")
consumptiondata <- read.csv.sql("ExData_Plotting1-master/household_power_consumption.txt", sql = "select * from file where Date = '1/2/2007'", header = TRUE, sep = ";")
consumptiondata2 <- read.csv.sql("ExData_Plotting1-master/household_power_consumption.txt", sql = "select * from file where Date = '2/2/2007'", header = TRUE, sep = ";")
powerdata <- rbind(consumptiondata,consumptiondata2)

png("plot1.png")
hist(powerdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

