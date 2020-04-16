#loading and subsetting dataset
pow<-read.table("C:/Users/liel/Documents/CorseraDataScience/Exploratory Analysis/household_power_consumption.txt",na.strings="?",header=TRUE,sep=";")
powSm<-subset(pow,Date=="1/2/2007"|Date=="2/2/2007")
#data type converting 
datetime<-strptime(paste(powSm$Date, powSm$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
str(powSm)
#plotting and save
png("C:/Users/liel/Documents/GitHub/ExData_Plotting1/plot2.png", width=480, height=480)
with(powSm, plot(datetime,Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type = "l"))
dev.off()
