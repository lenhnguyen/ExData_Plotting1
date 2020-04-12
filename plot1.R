HHPC <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HHPC<-HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"),]
GAP <- as.numeric(HHPC$Global_active_power)
png("plot1.png", width=480, height=480)
par(mfrow=c(1,1))
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()
