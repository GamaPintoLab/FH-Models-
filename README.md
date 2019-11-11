# FH-Models-
Top 10 models for the manuscript Correia et al.

## Description
Classification models that were trained with a paediatric sample of the Portuguese Familial Hypercholesterolaemia study, which comprise both FH-positive and FH-negative individuals. All data has been fully anonymized before analysis. All individuals present in the study fullfil the clinical criteria of Simon Broome, or have TC above the 95th percentile for their age and sex in addition to a family history of hypercholesterolaemia. FH-positive individuals present a pathogenic/likely pathogenic variant in a known FH-related gene (LDLR, APOB, PCSK9), while FH-negative individuals do not present a positive genetic test for FH.  
This set of models corresponds to the best ten models acquired during the work of Correia et al. and they are able to predict the classification of individuals as FH-positive or FH-negative with a sensitivity range of 0.73-0.91 and a specificity range of 0.60-0.92.

## Usage
For application of these models to new data R installation is necessary and that can be done by following the instructions of CRAN site (http://cran.radicaldevelop.com/). Afterwards, each model can be downloaded as .rda file and then can be applyied to a new dataset using the code within the provided R script ('Top10 models for new data'). The new data file, preferentially in .xlsx or .txt format, should comprise data in a table according the following rules: 
 - patients as rows and measured parameters as columns
 - measured parameters as numeric values and using a dot as decimal separator
 - no missing values 
 - present the same parameters of the model(s) to apply (check if the parameters of the list bellow are present in your dataset, according to the model(s) you want to apply on your data)

	Imp_B: LDL-C, ApoB/ApoA1, TG/ApoB	
	RFEct_BL: TG/ApoB, TC/HDL-C, TC, LDL1	
	Sel3: LDL1, ApoC3, TC/HDL-C, BMI, Age	
	RFEct_A: LDL1, TC, ApoA2, MIDC, TC/HDL-C	
	RFE78ct_BL: TC, TC/HDL-C, MIDB, MIDC, LDL1	
	RFE78t_B: LDL-C, ApoB/ApoA1	
	Sel1: LDL1, ApoC3, TC/HDL-C	
	Imp_AdL: ApoA2, ApoC3, LDL1	
	RFE78t_Ad: ApoA2, ApoC2, ApoC3, sdLDL.Day, BMI
	RFE78ct_Ad: Age, ApoA2, ApoC2, ApoC3, sdLDL.Day

## Contacts
For any doubts regarding the models and their application on new data using R, feel free to send an e-mail for mscorreia@fc.ul.pt

