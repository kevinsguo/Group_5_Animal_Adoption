# Group_5_Animal_Adoption

# Presentation

## Selected topic

The purpose of this analysis is to review data on animals in the Austin Animal Center to better understand the inventory of the animals and to create a model that predicts the outcome whether that is:

- Adoption
- Transfer
- Return to Owner
- Euthanesia
- Died

## Reason for selecting this topic

The Austin Animal Shelter is the largest no-kill animal shelter in the United States and houses 18,000 animals each year. The shelter is an open intake facility where all lost or surrendered animals are accepted. As the city of Austin grows the number of animal intakes will increase making the burden on the shelter greater. The ability of the shelter to remain no-kill is dependent on having available room to house all of the animals and makes understanding the outcome of the animals and the success of the adoption program incential.

## Source of Data

https://data.world/rdowns26/austin-animal-shelter

The data was sourced from https://data.world which was originally sourced from http://data.austintexas.gov. The data contains information on animal intakes and outcomes of the Austin Animal Shelter over a 3.5 year period.

## Questions we hope to answer with the data

- The distribution of stray animals in Austin.

- Which month has more adoptions?

- Which month does the shelter have the lowest capacity?

- A review of other main factors and their correlation to the outcome. Such as:
  - length of stay
  - age
  - color
  - location of where they found

# GitHub

## Description of the communication Protocols

We communicate with each other regularly via Slack, as well as organize Zoom meeting twice a week in order to keep in track with the project status.

# Technology

### Data Cleaning and Analysis

Jupyter Notebook (Python, Pandas & sqlalchemy) will be used to clean the Pet Adoption data and to connect to Postgres.

### ERD

We used https://www.quickdatabasediagrams.com to create the ERD to show the relationship of the animal_intake and animal_outcome tables going to be used in Postgres.

### Database Storage

Postgres will be used to store the animal_intake and animal_outcome tables that we created from Jupyter Notebook.

### Machine Learning

We will be using K-Nearest Neighbors, RandomForest, and Gradient Boosting.

### Dashboard

We will use Tableau to create an interactive Story to display our results.



# Machine Learning Model

## Output label

Our target variable is Outcome_Type which is a classification variable that has many different classes.  During preprocessing this was reduced and combined to the following values:
- Adoption
- Died
- Return to Owner
- Transfer

## Preprocessing Data

During the preprocessing of the data, bucketing was used on the breed_type and intake_color features to reduce the number of individual values.  Then we used get_dummies to encode the categorical values.  We used LabelEncoder to encode the target variable, outcome_type.

## Provisional machine learning model

For this type of target value, we used K-Nearest Neighbors, RandomForest and Gradient Boosting to determine the best model. The metrics of the models were evaluated using a confusion matrix and a classification report with an emphasis on precision and f-1 score. After the evaluation of the models, the model that had the highest performance and the fastest runtime was the RandomForestClassification model.

The data was split using the train_test_split function with the test set equaling 25% of the data.  The data was then scaled using the StandardScaler function to normalize the data.

# Database 

## Sample Data

- Sample data is saved as CSV file, and performed ETL process using Python Pandas library. (see link: [segment1_clean_data](https://github.com/kevinsguo/Group_5_Animal_Adoption/blob/Cathy/cathytian/segment1_clean_data.ipynb))

- Cleaned dataset is connected and stored in PostgreSQL database using sqlalchemy.

  ![](cathytian/resources/connect.png)

## Provisional Database

- Database includes two tables as shown in below image (intake table and outcome table)

  ![](cathytian/resources/tables.png)

- The tables are inner joined on animal_id using SQL with following ERD relationships

  ![](cathytian/resources/join.png)
  ![](cathytian//segment1_ERD.png)

- The resulting table is transformed back to Pandas DataFrame using sqlalchemy for analysis with machine learning models. 

  ![](cathytian/resources/result.png)
