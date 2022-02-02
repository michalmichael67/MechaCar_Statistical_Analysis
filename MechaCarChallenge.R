# DELIVERABLE 1

# download necessary packages
library(dplyr)

# read in the MecharCar_mpg csv
library(tidyverse)
mecha_car_mpg_table <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mecha_car_mpg_table)

#perform linear regression with 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg_table)

# using summary function, determine p-val and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg_table))

