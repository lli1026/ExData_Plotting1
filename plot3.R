#Loading and subset
pow<-read.table("C:/Users/liel/Documents/CorseraDataScience/Exploratory Analysis/household_power_consumption.txt",na.strings="?",header=TRUE,sep=";")
powSm<-subset(pow,Date=="1/2/2007"|Date=="2/2/2007")
#data type converting
datetime<-strptime(paste(powSm$Date, powSm$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
str(powSm)
#plot and save
png("C:/Users/liel/Documents/GitHub/ExData_Plotting1/plot3.png", width=480, height=480)
with(powSm,{ plot(datetime,Sub_metering_1,xlab="",ylab="Global Active Power(kilowatts)",type = "l")
        lines(datetime,Sub_metering_2,type = "l",col="red")
        lines(datetime,Sub_metering_3,type = "l",col="blue")
})
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex=0.75)
dev.off()
