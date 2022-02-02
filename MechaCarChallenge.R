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







