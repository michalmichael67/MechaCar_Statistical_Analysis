# DELIVERABLE 1

# download necessary packages
library(dplyr)

# read in the MecharCar_mpg csv
library(tidyverse)
mecha_car_mpg_table <- read.csv(file = 'Data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mecha_car_mpg_table)

#perform linear regression with 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg_table)

# using summary function, determine p-val and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg_table))


# DELIVERABLE 2

# read in the suspension_coil file
suspension_coil_table <- read.csv(file = 'Data/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil_table)

# create a total_summary dataframe using the summarize() function 
total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI),
                                                     Median = median(PSI),
                                                     Variance = var(PSI),
                                                     SD = sd(PSI),
                                                     .groups = 'keep'
                                                     )

# create a lot_summary dataframe using the groupby() and summarize() function 
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                                   Median = median(PSI),
                                                                                   Variance = var(PSI),
                                                                                   SD = sd(PSI),
                                                                                   .groups = 'keep'
                                                                                   )


# DELIVERABLE 3

# use a t test to determine if the PSI across manufacturing lots is different than the pop mean of 1500 lbs per sq in
t.test(suspension_coil_table$PSI, mu=1500)

# use 3 tests to test if each lot has a PSI that is different than the pop mean of 1500 lbs per sq in
lot_1 <- subset(suspension_coil_table, Manufacturing_Lot == "Lot1")
lot_2 <- subset(suspension_coil_table, Manufacturing_Lot == "Lot2")
lot_3 <- subset(suspension_coil_table, Manufacturing_Lot == "Lot3")

t.test(lot_1$PSI, mu=1500)
t.test(lot_2$PSI, mu=1500)
t.test(lot_3$PSI, mu=1500)






