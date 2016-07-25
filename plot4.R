#read data
dt <- read.table("data\\household_power_consumption.txt",sep=";",header = TRUE)

dt$Date<-strptime(dt$Date,format="%d/%m/%Y")
dt<-subset(dt,Date>="2007-02-01")
dt<-subset(dt,Date<="2007-02-02")

png(file="plot4.png")
par(mfrow=c(2,2),mar=c(4,4,2,1))

plot(as.double(dt$Global_active_power),
     type = "l",
     xlab = "",
     ylab = "Global Active Power(kilowatts)")

plot(as.double(dt$Voltage),
     type = "l",
     xlab = "Datetime",
     ylab = "Voltage")

plot(as.double(dt$Sub_metering_1),
     type = "l",
     xlab = "",
     ylab = "",
     col = "black")
lines(as.double(dt$Sub_metering_2),col="red")
lines(as.double(dt$Sub_metering_3),col="blue")
legend("topright",pch=0,
       col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(as.double(dt$Global_reactive_power),
     type = "l",
     xlab = "Datetime",
     ylab = "Global Reactive Power")
dev.off()     