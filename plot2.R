## Creating plot 2

library("sqldf")
consumptiondata <- read.csv.sql("ExData_Plotting1-master/household_power_consumption.txt", sql = "select * from file where Date = '1/2/2007'", header = TRUE, sep = ";")
consumptiondata2 <- read.csv.sql("ExData_Plotting1-master/household_power_consumption.txt", sql = "select * from file where Date = '2/2/2007'", header = TRUE, sep = ";")
powerdata <- rbind(consumptiondata,consumptiondata2)

png("plot2.png")
plot(powerdata$Global_active_power, type = "l", xaxt = "n", ylab = "Global Active Power (kilowatts)", xlab = " ")
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri", "Sat"))
dev.off()

