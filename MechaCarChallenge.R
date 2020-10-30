library(dbplyr)
MechaCar <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics


SusCoil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- SusCoil %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups = 'keep')
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups= 'keep')

t.test(SusCoil$PSI,mu=1500)
t.test(subset(SusCoil$PSI,SusCoil$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(SusCoil$PSI,SusCoil$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(SusCoil$PSI,SusCoil$Manufacturing_Lot=='Lot3'),mu=1500)

