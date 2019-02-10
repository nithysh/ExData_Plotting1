setwd("/Users/nithyashetty/Documents/Career_Advancement/Course_4_Exploratory_Data_Analysis/Week_1")
dataFile <- "./srcData/household_power_consumption.txt"
tbl <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
inpData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

tmpdttm <- strptime(paste(inpData$Date, inpData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
glbActPow <- as.numeric(inpData$Global_active_power)
png("week1_assgn1_plot2.png", width=480, height=480)
plot(tmpdttm, glbActPow, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
