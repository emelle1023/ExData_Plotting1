png(filename="plot4.png",
    width=480, height=480,
    bg ="transparent",
    units="px")

par(mfrow = c(2,2))

plot(x=hpc2$DateTime, 
     y=hpc2$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power")

plot(x=hpc2$DateTime,
     y=hpc2$Voltage,
     xlab="datetime",
     ylab="Voltage",
     type="l")

plot(x=hpc2$DateTime, y=hpc2$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
lines(x=hpc2$DateTime, y=hpc2$Sub_metering_2, col="red", type="l")
lines(x=hpc2$DateTime, y=hpc2$Sub_metering_3, col="blue", type="l")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1,
       bty="n")

plot(x=hpc2$DateTime,
     y=hpc2$Global_reactive_power,
     xlab="datetime",
     ylab="Global_reactive_power",
     type="l")

dev.off()