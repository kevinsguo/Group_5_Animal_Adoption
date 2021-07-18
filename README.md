# Group_5_Animal_Adoption

## Purpose

The purpose of this analysis is to review data on animals in the Austin Animal Center to better understand the inventory of the animals and to create a model that predicts the outcome whether that is:

- Adoption
- Transfer
- Return to Owner
- Euthanesia
- Died

The Austin Animal Shelter is the largest no-kill animal shelter in the United States and houses 18,000 animals each year.  The shelter is an open intake facility where all lost or surrendered animals are accepted.  As the city of Austin grows the number of animal intakes will increase making the burden on the shelter greater.  The ability of the shelter to remain no-kill is dependent on having available room to house all of the animals and makes understanding the outcome of the animals and the success of the adoption program incential.  

Further analysis will also include review of other main factors and their correlation to the outcome.  Some of these factors are length of stay, age, color and location of where found.

## Datasource
https://data.world/rdowns26/austin-animal-shelter

The data was sourced from https://data.world which was originally sourced from  http://data.austintexas.gov.  The data contains information on animal intakes and outcomes of the Austin Animal Shelter over a 3.5 year period.   

## Technology
Data Storage - Postgres Database

Exploratory Analysis - Jupyter Notebook (Python)

## Machine Learning Model
Our target variable is Outcome_Type which is a classification variable that has many different classes.  For this type of target value we will use K-Nearest Neighbors, RandomForest and Gradient Boosting.  The metrics of the models will be evaluated using a confusion matrix and a classification report with an emphasis on precision and f-1 score.  After the evaluation of the models we will select the model with the hightest performance to further optimize.  
