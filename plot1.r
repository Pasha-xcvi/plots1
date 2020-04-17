#dataset is imported thtough File->import dataset
#Reformatting of the date field in the dataset
household_power_consumption[,"Date"] <- as.Date(household_power_consumption[,"Date"],format = "%d/%m/%Y")




#create a subset for the selected timeline between 01-02 and 02-02 in 2007
mysub <- subset(household_power_consumption,Date == "2007-02-01" | Date == "2007-02-02")




#convert the filed of global active power from string of characters to numeric field
gap<-as.numeric(mysub$Global_active_power)


#define the desired graph format to be saved along with its dimensions 


png("plot1.png",width = 480, height = 480)


#create a histogram plot for global active power along with desired characteristics
hist(gap, col = "red", main = "Global Active Power",


xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
#save the graph

dev.off()
