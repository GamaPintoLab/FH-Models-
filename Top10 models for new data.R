## Title: Top10 models for new data
## Author: Marta Correia
## Date: 16.08.2019

##--------------------------------------------------------------------------------##

## Set directory - the same folder to which rda files were downloaded 

## Load top10 models

Exp1 <- readRDS("Exp1.rda")
Exp3 <- readRDS("Exp3.rda")
RFEcor.top.All <- readRDS("RFEcor.top.All.rda")
RFEcor.top.BL <- readRDS("RFEcor.top.BL.rda")
RFE78top.basic <- readRDS("RFE78top.basic.rda")
RFE78top.advanced <- readRDS("RFE78top.advanced.rda")
RFE78cor.top.advanced <- readRDS("RFE78cor.top.advanced.rda")
RFE78cor.top.BL <- readRDS("RFE78cor.top.BL.rda")
Imp78.lipoprint <- readRDS("Imp78.lipoprint.rda")
Imp.AL <- readRDS("Imp.AL.rda")


## Make predictions for new data

Pred <- predict(Exp1, newdata = newdata) #new data = "name of the data.frame with new data"

#Use similar code for predictions using the other models

