#read data
dt <- read.table("data\\household_power_consumption.txt",sep=";",header = TRUE)

dt$Date<-strptime(dt$Date,format="%d/%m/%Y")
dt<-subset(dt,Date>="2007-02-01")
dt<-subset(dt,Date<="2007-02-02")

png(file="plot1.png")
hist(as.double(dt$Global_active_power),
     col="red",
     main="Global Active Power",
     xlab = "Global Active Power(kilowatts)")
dev.off()