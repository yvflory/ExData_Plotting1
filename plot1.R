plot1 <- function() {
    ## open screen device, make file
    png("plot1.png")
    
    ## read in data
    require(sqldf)
    file <- c("household_power_consumption.txt")
    data <- read.csv.sql(file, header = T, sep=";", 
                                sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')" )
    #data <- fread("household_power_consumption_subset.txt")
    
    ## Make the plot, customised colour, title and x-axis text.
    new_hist <- hist(data[["Global_active_power"]], 
                     main = "Global active power", 
                     xlab = "Global active power (kilowatts)", 
                     col = "red")

    ## close screen device
    dev.off()
}

## Note: also didn't have time to finish the remaining plots - sorry!
## Been to busy...