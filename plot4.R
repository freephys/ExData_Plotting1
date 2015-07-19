library(dplyr)
library(ggplot2,scales)
house <- read.csv("./household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
house <- house %>% filter(Date =="1/2/2007" | Date =="2/2/2007")

png("plot4.png") 
par(mfrow=c(2,2))

plot(seq(1,length(house$Time),1),house$Global_active_power,xaxt='n',type = 'l',ylab="Global_active_power",xlab="")
axis(side=1,at=seq(0,length(house$Time),length(house$Time)/2),labels=c("Thu","Fri","Sat"))

plot(seq(1,length(house$Time),1),house$Voltage,xaxt='n',type = 'l',ylab="Voltage",xlab="datetime")
axis(side=1,at=seq(0,length(house$Time),length(house$Time)/2),labels=c("Thu","Fri","Sat"))

plot(seq(1,length(house$Time),1),house$Sub_metering_1,xaxt='n',type = 'l',ylab="Energy sub metering",xlab="",yaxt='n')
lines(seq(1,length(house$Time),1),house$Sub_metering_2,xaxt='n',type = 'l',col="red")
lines(seq(1,length(house$Time),1),house$Sub_metering_3,xaxt='n',type = 'l',col="blue")
axis(side=1,at=seq(0,length(house$Time),length(house$Time)/2),labels=c("Thu","Fri","Sat"))
axis(side=2,at=seq(0,40,10),labels=seq(0,40,10),ylim = c(0,40))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),text.col = c("black","red","blue"))

plot(seq(1,length(house$Time),1),house$Global_reactive_power,xaxt='n',type = 'l',ylab="Global_reactive_power",xlab="datetime")
axis(side=1,at=seq(0,length(house$Time),length(house$Time)/2),labels=c("Thu","Fri","Sat"))
dev.off()
