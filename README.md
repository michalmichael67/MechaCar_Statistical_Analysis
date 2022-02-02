# MechaCar_Statistical_Analysis

## Deliverable 1: Linear Regression to Predict MPG
### Requirements
The MechaCar_mpg.csv is a dataset that shows the results of an mpg test done on 50 MechaCars prototypes. Vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance are different metrics that were collected for each vehicle to help MechaCar understand the car performance. In this analysis, the goal is to understand if/ how those metrics can predict mpg.
### Results
![mpg_prediction.png](Resources/mpg_prediction.png) 

From the above screenshot the Linear Regression Model is: 
mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

### Inference
- According to the output, vehicle length and ground clearance are most likely to provie a non-random amount of variance to the mpg values (we can see this from the p-values for the vairables). This means that changing the vehicle length or ground clearance will have an effect on the mpg of a car.  
- In a model like this, our initial hypothesis is that the slope of the model is 0 and the alternate hypothese is that the slope is not zero. Our p-value is 5.35e-11 which is a significant value - this means that we can reject our null hypothesis and accept that the slope of the model is not zero.
- To understand the effective predictability, we need to look at the r-quared value. Our r-squared value is 0.7149 which means that ~71.49% of the mpg values can be predicted by this model. This is a relatively high level of mpg values that can be predicted. At a minimum, it would be helpful to use this model as a base expectation for mpg.
