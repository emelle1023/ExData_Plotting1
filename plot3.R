source("loadData.R")

png(filename="plot3.png",
    width=480, height=480,
    bg ="transparent",
    units="px")

plot(x=hpc2$DateTime, y=hpc2$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
lines(x=hpc2$DateTime, y=hpc2$Sub_metering_2, col="red", type="l")
lines(x=hpc2$DateTime, y=hpc2$Sub_metering_3, col="blue", type="l")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off()