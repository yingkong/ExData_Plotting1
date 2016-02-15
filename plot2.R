## plot 2

hpc <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
hpc <- subset(hpc, Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
plot(datetime, as.numeric(as.character(hpc$Global_active_power)), type="l",
     ylab = "Global Active Power (kilowatts)",
     xlab="")

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()