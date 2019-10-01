## Title: Top10 models for new data
## Author: Marta Correia
## Date: 16.08.2019

##--------------------------------------------------------------------------------##

## Set directory - the same folder to which rda files were downloaded 

## Load top10 models

Sel1 <- readRDS("Sel1.rda")
Sel3 <- readRDS("Sel3.rda")
RFEct_A <- readRDS("RFEct_A.rda")
RFEct_BL <- readRDS("RFEct_BL.rda")
RFE78t_B <- readRDS("RFE78t_B.rda")
RFE78t_Ad <- readRDS("RFE78t_Ad.rda")
RFE78ct_Ad <- readRDS("RFE78ct_Ad.rda")
RFE78ct_BL <- readRDS("RFE78ct_BL.rda")
Imp78_L <- readRDS("Imp78_L.rda")
Imp_AdL <- readRDS("Imp_AdL.rda")


## Make predictions for new data

Pred <- predict(Sel1, newdata = newdata) #new data = "name of the data.frame with new data"

#Use similar code for predictions using the other models

