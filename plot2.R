library(dplyr)
library(ggplot2,scales)
house <- read.csv("./household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
house <- house %>% filter(Date =="1/2/2007" | Date =="2/2/2007")

png("plot2.png")
plot(seq(1,length(house$Time),1),house$Global_active_power,xaxt='n',type = 'l',ylab="Global Active Power (kilowatt)",xlab="")
axis(side=1,at=seq(0,length(house$Time),length(house$Time)/2),labels=c("Thu","Fri","Sat"))
dev.off()