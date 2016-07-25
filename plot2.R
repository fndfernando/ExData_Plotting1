#read data
dt <- read.table("data\\household_power_consumption.txt",sep=";",header = TRUE)

dt$Date<-strptime(dt$Date,format="%d/%m/%Y")
dt<-subset(dt,Date>="2007-02-01")
dt<-subset(dt,Date<="2007-02-02")

png(file="plot2.png")
plot(as.double(dt$Global_active_power),
     type = "l",
     xlab = "",
     ylab = "Global Active Power(kilowatts)")
dev.off()