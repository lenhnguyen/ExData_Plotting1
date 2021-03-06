HHPC <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HHPC<-HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"),]
GAP <- as.numeric(HHPC$Global_active_power)
GRP <- as.numeric(HHPC$Global_reactive_power)
Volt <- as.numeric(HHPC$Voltage)
dt <- strptime(paste(HHPC$Date, HHPC$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(dt,GAP, col="black",type="l",xlab="",ylab="Global Active Power")
plot(dt,Volt, col="black",type="l",xlab="datetime",ylab="Voltage")
plot(dt,HHPC$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(dt,HHPC$Sub_metering_2,col="red")
lines(dt,HHPC$Sub_metering_3,col="blue")
legend("topright",inset=.01,  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"),lwd=c(1,1,1),box.lty=0)
plot(dt,GRP, col="black",type="l",xlab="datetime",ylab="Global_reactive_power",cex=0.1)
dev.off()