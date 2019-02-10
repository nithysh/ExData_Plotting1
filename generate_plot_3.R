setwd("/Users/nithyashetty/Documents/Career_Advancement/Course_4_Exploratory_Data_Analysis/Week_1")
dataFile <- "./srcData/household_power_consumption.txt"
tbl <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
inpData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

tmpdttm <- strptime(paste(inpData$Date, inpData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
glbActPow <- as.numeric(inpData$Global_active_power)
subm1<-as.numeric(inpData$Sub_metering_1)
subm2 <- as.numeric(inpData$Sub_metering_2)
subm3 <- as.numeric(inpData$Sub_metering_3)
png("week1_assgn1_plot3.png", width=480, height=480)
plot(tmpdttm, subm1, type="l", xlab="", ylab="Energy Submetering")
lines(datetime, subm2, type="l", col="red")
lines(datetime, subm3, type="l", col="blue")
legend("topright", c("Metering 1", "Metering 2", "Metering 3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()