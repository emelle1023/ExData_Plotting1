setwd("~/Documents/My Courses/Data Science/4. Exploratory Data Analysis/Exercises/Course Projects/Peer Assessment 1/ExData_Plotting1")

URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!file.exists("household_power_consumption.txt")) {    
    if (!file.exists("household_power_consumption.zip")){
        download.file(URL, destfile = "household_power_consumption.zip", method="curl")    
    }
    unzip("household_power_consumption.zip", files = "household_power_consumption.txt")
}

hpc <- read.table("household_power_consumption.txt", sep=";",  header=TRUE,
                  colClasses = c("character", "character", rep("numeric",7)),
                  na="?")
hpc2 <- subset(hpc, Date %in% c("1/2/2007", "2/2/2007"))
x <- paste(hpc2$Date, hpc2$Time)
hpc2$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
