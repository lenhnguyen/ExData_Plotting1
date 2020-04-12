HHPC <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HHPC<-HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"),]
GAP <- as.numeric(HHPC$Global_active_power)
dt <- strptime(paste(HHPC$Date, HHPC$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
par(mfrow=c(1,1))
plot(dt,GAP,type = "l", col="black",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()