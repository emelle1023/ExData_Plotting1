source("loadData.R")

png(filename="plot2.png",
    width=480, height=480,
    bg ="transparent",
    units="px")

plot(x=hpc2$DateTime, 
     y=hpc2$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()

