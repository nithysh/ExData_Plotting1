setwd("/Users/nithyashetty/Documents/Career_Advancement/Course_4_Exploratory_Data_Analysis/Week_1")
dataFile <- "./srcData/household_power_consumption.txt"
tbl <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
inpData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

tmpdttm <- strptime(paste(inpData$Date, inpData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
glbActPow <- as.numeric(inpData$Global_active_power)
subm1<-as.numeric(inpData$Sub_metering_1)
subm2 <- as.numeric(inpData$Sub_metering_2)
subm3 <- as.numeric(inpData$Sub_metering_3)
glbRetPow <- as.numeric(inpData$Global_reactive_power)
volt <- as.numeric(inpData$Voltage)

png("week1_assgn1_plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(tmpdttm, glbActPow, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(tmpdttm, volt, type="l", xlab="datetime", ylab="Voltage")

plot(tmpdttm, subm1, type="l", ylab="Energy Submetering", xlab="")
lines(tmpdttm, subm2, type="l", col="red")
lines(tmpdttm, subm3, type="l", col="blue")
legend("topright", c("Metering 1", "Metering 2", "Metering 3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()