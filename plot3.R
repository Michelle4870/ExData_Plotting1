## Creating Plot 3

library("sqldf")
consumptiondata <- read.csv.sql("ExData_Plotting1-master/household_power_consumption.txt", sql = "select * from file where Date = '1/2/2007'", header = TRUE, sep = ";")
consumptiondata2 <- read.csv.sql("ExData_Plotting1-master/household_power_consumption.txt", sql = "select * from file where Date = '2/2/2007'", header = TRUE, sep = ";")
powerdata <- rbind(consumptiondata,consumptiondata2)

png("plot3.png")
plot(powerdata$Sub_metering_1, type = "l", xaxt = "n", ylab = "Energy sub metering", xlab = " ", ylim = c(0.0,40.0))
par(new = T)
plot(powerdata$Sub_metering_2, type = "l", xaxt = "n", ylab = " ", xlab = " ", col = "red", yaxt = "n", ylim = c(0.0,40.0))
par(new = T)
plot(powerdata$Sub_metering_3, type = "l", xaxt = "n", ylab = " ", xlab = " ", col = "blue", yaxt = "n", ylim = c(0.0,40.0))
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri", "Sat"))
legend("topright", legend = c("Sub metering 1","Sub metering 2","Sub metering 3"), col = c("black","red","blue"), lwd = 2)
dev.off()
