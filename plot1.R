## plot 1 

hpc <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
hpc <- subset(hpc, Date %in% c("1/2/2007","2/2/2007"))
hist(as.numeric(as.character(hpc$Global_active_power)), col="red", 
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()