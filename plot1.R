source("loadData.R")

png(filename="plot1.png",
    width=480, height=480,
    bg ="transparent",
    units="px")

hist(hpc2$Global_active_power,
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red",
     main="Global Active Power",
     breaks = 12,
     ylim=c(0,1200))

dev.off()
