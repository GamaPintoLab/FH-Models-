## Title: Top10 models for new data
## Author: Marta Correia
## Date: 11.11.2019

##--------------------------------------------------------------------------------##

## Set directory to the folder which contains the data and downloaded rda files 

setwd("C:/Users/MARTA/Desktop/Top10_models") #example


## Load top10 models

Sel1 <- readRDS("Sel1.rda")
Sel3 <- readRDS("Sel3.rda")
RFEct_A <- readRDS("RFEct_A.rda")
RFEct_BL <- readRDS("RFEct_BL.rda")
RFE78t_B <- readRDS("RFE78t_B.rda")
RFE78t_Ad <- readRDS("RFE78t_Ad.rda")
RFE78ct_Ad <- readRDS("RFE78ct_Ad.rda")
RFE78ct_BL <- readRDS("RFE78ct_BL.rda")
Imp_B <- readRDS("Imp_B.rda")
Imp_AdL <- readRDS("Imp_AdL.rda")


## Import new data

library(readxl)
newdata <- read_excel("newdata.xlsx") #example with excel file

str(newdata) #check if all parameters are considered numeric and if 'newdata' is 
             #considered a table or a data.frame 

attach(newdata) #put parameters of newdata available for predictions

library(tibble)
newdata <- column_to_rownames(newdata, var = "ID") #patients IDs must be set as rownames


## Make predictions for new data

Pred <- predict(Sel1, newdata = "newdata") #newdata = "name of the data.frame with new data"

Pred_class <- cbind(newdata, Pred) #add predictions as an extra column in data table

Pred_class #show table as output 

library(openxlsx)
write.xlsx(Pred_class, "C:/Users/MARTA/Desktop/Top10_models/Pred_class.xlsx") #export table 'Pred_class' as an excel file


#Use similar code for predictions using the other models


## NOTE: FH-positive and FH-negative classes are codified as '1' and '2', respectively 

