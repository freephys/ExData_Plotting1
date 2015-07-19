library(dplyr)
library(ggplot2,scales)
house <- read.csv("./household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
house <- house %>% filter(Date =="1/2/2007" | Date =="2/2/2007")

png("plot1.png")
hist(as.numeric(house$Global_active_power),freq = TRUE,col = "red",xlab = "Global_active_power (in kilowatt) ",main = "Global Active Power",yaxt='n')
axis(side = 2, at = seq(0,1200,200),labels=seq(0,1200,200))

dev.off()




