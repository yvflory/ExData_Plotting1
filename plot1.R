plot1 <- function() {
    ## open screen device, make file
    png("plot1.png")
    
    ## read in data
    ## had a little problem with the subsetting, so I'm using a manually
    ## subsetted file. Didn't have time to fix that.
    data <- fread("household_power_consumption_subset.txt")
    
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