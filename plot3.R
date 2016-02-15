## plot 3

hpc <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
hpc <- subset(hpc, Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(datetime, as.numeric(as.character(hpc$Sub_metering_1)), 
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(datetime, as.numeric(as.character(hpc$Sub_metering_2)), col = "red")
lines(datetime, as.numeric(as.character(hpc$Sub_metering_3)), col = "blue")

legend("topright",lty = 1, col = c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()
