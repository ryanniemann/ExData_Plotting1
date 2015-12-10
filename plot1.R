#Read the power consumption dataset from Data folder in workgin directory
HPC_data <- read.csv("./Data/household_power_consumption.txt", 
                     header=TRUE, sep=';', na.strings="?", 
                     check.names=FALSE, stringsAsFactors=FALSE, 
                     comment.char="", quote='\"')

#Subset the data over the 2-day period in February, 2007
HPC_data$Date <- as.Date(HPC_data$Date, format="%d/%m/%Y") 
data <- subset(HPC_data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

#Plot1
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#Create and save the PNG file 
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

