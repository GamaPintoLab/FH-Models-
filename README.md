# FH-Models-
Top 10 models for the manuscript Correia et al.

## Description
Classification models that were trained with a paediatric sample of the Portuguese Familial Hypercholesterolaemia study, which comprise both FH-positive and FH-negative individuals. All data has been fully anonymized before analysis. All individuals present in the study fullfil the clinical criteria of Simon Broome, or have TC above the 95th percentile for their age and sex in addition to a family history of hypercholesterolaemia. FH-positive individuals present a pathogenic/likely pathogenic variant in a known FH-related gene (LDLR, APOB, PCSK9), while FH-negative individuals do not present a positive genetic test for FH. 
This set of models corresponds to the best ten models acquired during the work of Correia et al. and they are able to predict the classification of individuals as FH-positive or FH-negative with a sensitivity range of 0.73-0.91 and a specificity range of 0.60-0.92.

## Usage
### Applying the two best models and SB_B to classify new patients using the excel file 'Classify_FH_new'
Download the excel file 'Classify_FH_new' and insert the measures of new individuals for the given parameters, this will apply the formula of the choosen model to new data and classify those individuals as FH-positive or FH-negative (class '1' or class '2', respectively).  

### Applying Top10 models to new data using R
For application of these models to new data R installation is necessary. This can be done by following the instructions in the CRAN website (http://cran.radicaldevelop.com/). The working directory should be changed to the folder containing the data and the downloaded files. 
Each model can be downloaded as a .rda file and be applyed to classify individuals in a new dataset using the code in the R script 'Top10 models for new data'. The new data should be organized as a table in an .xlsx file, according the following rules (see example file test.xlsx): 
 - patients as rows and measured parameters as columns
 - measured parameters as numeric values using . as decimal separator
 - no missing values 
 - have the parameters required by the model to apply (check the parameters in the list bellow)
 
 
Models are organized in three different folders according the availability of the lipid parameters they use:
#### Folder A - models using parameters provided by most clinical laboratories
Imp_B: LDL-C, ApoB/ApoA-I, TG/ApoB	

RFE78t_B: LDL-C, ApoB/ApoA-I	

#### Folder B - models using parameters only available in more specialized clinical laboratories
RFE78t_Ad: ApoA-II, ApoC-II, ApoC-III, sdLDL.Day, BMI

RFE78ct_Ad: Age, ApoA-II, ApoC-II, ApoC-III, sdLDL.Day

#### Folder C - models using at least one ‘Lipoprint’ parameter (only provided by research laboratories)
RFEct_BL: TG/ApoB, TC/HDL-C, TC, LDL1	

Sel3: LDL1, ApoC-III, TC/HDL-C, BMI, Age	

RFEct_A: LDL1, TC, ApoA-II, MIDC, TC/HDL-C	

RFE78ct_BL: TC, TC/HDL-C, MIDB, MIDC, LDL1	

Sel1: LDL1, ApoC-III, TC/HDL-C	

Imp_AdL: ApoA-II, ApoC-III, LDL1	


## Contacts
For any questions regarding the models and their application on new data using R, feel free to send an e-mail to mscorreia@fc.ul.pt

