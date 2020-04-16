#Loading and subset dataset
pow<-read.table("C:/Users/liel/Documents/CorseraDataScience/Exploratory Analysis/household_power_consumption.txt",na.strings="?",header=TRUE,sep=";")
powSm<-subset(pow,Date=="1/2/2007"|Date=="2/2/2007")
#plotting and save as png file
png("C:/Users/liel/Documents/GitHub/ExData_Plotting1/plot1.png", width=480, height=480)
hist(powSm$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
