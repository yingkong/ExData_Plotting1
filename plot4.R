## plot 4

hpc <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
hpc <- subset(hpc, Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)

par(mfrow = c(2,2), mar = c(4, 4, 2, 1))

plot(datetime, as.numeric(as.character(hpc$Global_active_power)), type="l",
     ylab = "Global Active Power (kilowatts)",
     xlab="")

plot(datetime, as.numeric(as.character(hpc$Voltage)), type="l",
     ylab = "Voltage")

plot(datetime, as.numeric(as.character(hpc$Sub_metering_1)), 
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(datetime, as.numeric(as.character(hpc$Sub_metering_2)), col = "red")
lines(datetime, as.numeric(as.character(hpc$Sub_metering_3)), col = "blue")
legend("topright",lty = 1, col = c("black","red","blue"),
       bty = "n",
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(datetime, as.numeric(as.character(hpc$Global_reactive_power)), 
     type="l",
     ylab = "Global_reactive_power")

dev.off()
