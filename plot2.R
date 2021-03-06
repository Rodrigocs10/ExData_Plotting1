cols <- c("Date", "Time", "Global_active_power", "Global_reactive_power", 
          "Voltage" , "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
consumption <- read.csv("household_power_consumption.txt", sep = ";", 
                        na.strings = "?", skip = 66636, nrows = 2880, col.names = cols)
library(datasets)

## Draw

with(consumption, plot(Global_active_power, ylab = "Global Active Power (kilowatts)",
                       xlab = "", type = "l",  main = ""))

dev.copy(png, file = "plot2.png")

dev.off()

