## Available Data

In This folder you will find the rate of prescriptions for each county over a 4 year period.  Ideally you will find this in the main branch of our project with the paragraph below included in our main ReadMe.

One of the many dependent factors on our analysis we are hoping to include is that of the amount of opioids prescribed in each county.  The simple idea being that one major talking point of the opioid crisis in the US is that it is in part due to the number of prescription opioids used as painkillers in medicine.  These rates can be found on the [CDC website](https://www.cdc.gov/drugoverdose/rxrate-maps/index.html) and essentially say the number of prescriptions filled per 100 people over the course of the year.


### Patrick's Info for my slide(s)
I was responsible for our Random Forest model, which we used to try and identify if a county would be in the to 25% by crude rate based on our features.  Futhermore, we wanted to use the Random Forest model to identify which features would be most significant.

I would talk us through the results, but some of the major points, Accuracy Score of .81 so decent.  Precision which is the reliability to trust the result(.84 for class 0 and .72 for class 1) and Recall which is how many which were 0/1 were diagnosed 0/1 (.93 for 0 and .48 for 1), I want to highlight this would err on the side of false negatives.<br>
![Random Forest Results](Resources/RandomForest2.png)

The importance of the included features can be seen here.  The two most important features are population and then percapitaincome<br>
![Feature Importance](Resources/FeatureImportance2.png)

The Receiver Operating Characteristic Curve and the AUC score can be seen here.  This is a meaure of the True positive rate vs the false positive rate.  Note that it is looking at the probabilties of how each datapoint is classified instead of the final outcome.<br>
![ROC Curve](Resources/AUCPositiveClassifier2.png)

Because categorizing the data essentially means we have one "Class" with less results I tried out using the SMOTEEN process in conjunction with the Random Forest Model to generate more data.  The model wasn't quite as good as can be seen below, although it does have a higher recall for class 1 which means it would err on the side of false positives.<br>
![SMOTEEN Results](Resources/RandomForestSmoteen2.png)

## OLD README
# Opioid Overdose Death Prediction
## Selected Topic
Our team, consisting of Anastassia Tatarskaja, Iris Belensky, Milos Popov, Olga Mironova, and Patrick Gilchrist from the University of Denver, has chosen to work on predicting the rate of opioid overdose deaths in US counties based on basic socio-economic variables and the dispensing rate of prescription opioids for that county.
​
## Reason for Topic Selection
We selected this topic because the opioid crisis is a major public health concern in the United States, and understanding the factors that contribute to opioid overdose deaths can help inform targeted prevention and intervention strategies.<br>
By using machine learning algorithms, we hope to identify patterns in historical opioid deaths data and predict future trends, ultimately enabling more effective allocation of resources.
​
## Data Sources
We will be using data from the following sources to analyze various socio-economic variables and opioid dispensing rates in the context of opioid overdose deaths:
​
* [Death by Opioid Type: Detailed mortality data provided by the CDC WONDER database](https://wonder.cdc.gov/).<br>
* [Education: Educational attainment data for adults age 25 and older in US counties, provided by the USDA](https://www.ers.usda.gov/data-products/county-level-data-sets/county-level-data-sets-download-data/).<br>
* [Unemployment: Unemployment and median household income data for US counties, also provided by the USDA ](https://www.ers.usda.gov/data-products/county-level-data-sets/county-level-data-sets-download-data/).<br>
* [Income: Personal income data by county and metropolitan area, including government social benefits, provided by the Bureau of Economic Analysis](https://www.bea.gov/data/income-saving/personal-income).<br>
* [Dispensing Rate: US county opioid dispensing rates based on prescriber location, provided by the CDC](https://www.cdc.gov/drugoverdose/rxrate-maps/county2020.html).<br><br>

## ERD Rough Draft
A rough draft of our SQL schema can be found at the following path in our repository Olga/Final_Project_SQL_Draft.sql.<br><br>
## Research Questions
Our project aims to answer the following questions:
​
* Can we predict the rate of opioid overdose deaths by county based on basic socio-economic variables AND the dispensing rate of prescription opioids for that county?<br>
* Which of the selected factors contribute the most to our prediction for the rate of opioid deaths?<br><br>
### Exploratory Data Analysis Questions
Additionally, we will explore the following questions during our data analysis:
​
* What is the trajectory of opioid deaths in the counties that we have focused on over the years?<br>
* What is the correlation (if any) of opioid deaths to education (income/poverty/unemployment/prescription rate) in the counties we have chosen?<br>
* Which of our independent variables shows the strongest correlation to overdose deaths?<br>
* Which form of opioid is responsible for the most deaths in the counties we have chosen?<br>

​
### Exploratory Data Analysis
Our EDA process began with the preparation of the individual data sets that we found for the independent variables for our models. Each variable (opioid deaths, opioid prescription rates, education, poverty, unemployment, and personal income) data set needed to be handled differently – some data sets needed to have average rates converted to population values per county, some needed to be cleaned of unnecessary lines of data (such as state values opposed to county values), and some needed to be converted to a wide format as opposed to a long format. These processes allowed us to familiarize ourselves with each data set.<br><br>
Once the final data set was created using SQL, we had to clean it from null values and from the suppressed values received from the WONDER data set. Additionally, some counties had ‘unreliable’ crude rates. However, we were able to salvage these data points by calculating the crude rate using the total deaths and the total population of the county.<br><br>
Finally, we are primarily using Tableau to create visualizations that further explore each variable and the relationships between those variables such as the table below.<br><br>
Please see our Tableau story at this link:
<br><br>
https://public.tableau.com/app/profile/iris.bel8090/viz/Final_Project_Workbook/Story1?publish=yes
<br>

### Presentation
A rough draft of our presentation can be found at Anastassia/Group%201%20Final%20Project%20Presentation.pdf within this repository.

## Communication Protocols
Our team communicates and collaborates effectively using a variety of tools and methods, including:<br>

​
Official Slack channel:
* We have a dedicated Slack channel created specifically for this project, allowing us to discuss progress, share resources, and ask questions in real-time.<br>
* Zoom meetings: We hold regular Zoom meetings to discuss project updates, clarify doubts, and plan our next steps.<br>
* Email: For more formal communication, we use email to share important documents, updates, and meeting invitations.<br>
* GitHub: We use GitHub for version control and collaboration, allowing us to work together and manage changes to our project files, including Jupyter Notebooks and PostgreSQL scripts.<br><br>
By using these communication tools and protocols, we can effectively coordinate our efforts and work together as a team to develop a machine learning model for predicting opioid overdose deaths based on various socio-economic factors and opioid dispensing rates.<br>
## Plan for the Machine Learning Model
​
In this segment of our project, we plan to develop a machine learning model to predict total overdose deaths based on a set of socioeconomic and demographic factors. The dataset includes features such as population, education, unemployment, poverty, income, and dispensing rate, which will be used as predictors for the target variable, total overdose deaths.<br> <br>
​
To accomplish this, we will first import the necessary libraries, such as pandas, numpy, and scikit-learn. We will then load our dataset and preprocess it by handling missing values, dropping unnecessary columns, and performing any other required data cleaning steps.<br> <br>
​
Next, we will create the feature matrix (X) and the target vector (y) by selecting the appropriate columns from the dataset. The data will then be split into training and test sets, with 80% of the data used for training and 20% for testing.<br> <br>
​
To ensure that our machine learning models can effectively learn from the data, we will scale the features using StandardScaler from scikit-learn. This will help normalize the data and make it suitable for training.<br> <br>
​
We plan to explore two different machine learning algorithms for this task: a neural network (MLPRegressor) and a random forest (RandomForestRegressor). We will train both models on the training data and make predictions on the test data. The performance of each model will be evaluated using mean squared error (MSE) and R2 score.<br> <br>
​
After evaluating both models, we will compare their performance and choose the best one based on the evaluation metrics. If necessary, we can also explore incorporating other models, such as those that utilize confusion matrices for evaluation, to further improve our predictions and potentially gain additional insights.<br> <br>
​
By following this plan, we hope to create a robust machine learning model that can accurately predict total overdose deaths based on the socioeconomic and demographic factors provided in our dataset.<br> <br>
​
### Segment 2 Progress
Team members Milos Popov, Olga Mironova, and Patrick Gilchrist worked on developing different machine learning models to predict opioid overdose rates. Each model can be found on our separate branches numbered 2. These are preliminary results that can be further optimized in the final segment of our project.<br><br>
We understand that time is limited and the goal is to quickly get a functioning machine learning model. Therefore, we want to emphasize that our early versions of the models may not work well. However, we will use as much of the remaining time as possible to improve and refine our models.
We appreciate any feedback or suggestions from our peers and mentors to help us improve our models.<br><br>
Additionally, Olga was able to get our database connected in AWS which allows us to all have easy access for our models.<br><br>
A table showing the correlation amongst our features.
![Heat Map Showing correlation amongst features](Milos/Machine%20Learning%20Models/correlation%20matrix.png)
​
## Data Disclaimer and Compliance
​
Our team is committed to ensuring the responsible and ethical use of data in our research and analysis. In the development of our machine learning model for predicting opioid overdose deaths, we have used data obtained from the National Center for Health Statistics (NCHS), a reputable source that adheres to strict data privacy regulations.
​
In accordance with the Public Health Service Act (42 U.S.C. 242m(d)), our team has taken the necessary precautions to abide by the data use restrictions outlined by NCHS. We understand the importance of protecting the privacy of individuals and establishments represented in the data, and we are committed to using the data solely for health statistical reporting and analysis.
​
To comply with these restrictions, we have:
​
* Used the data exclusively for health statistical reporting and analysis in the context of our project.
* Ensured that any sub-national geographic data presented or published does not include death counts of 9 or fewer, or death rates based on counts of nine or fewer.
* Made no attempts to discover the identity of any person or establishment included in the data.
* Committed to reporting any inadvertent discoveries of personal or establishment identities to the NCHS Confidentiality Officer, and refraining from disclosing or using such information.<br><br>
While these data use restrictions may impose certain limitations on our analysis, we are confident in our ability to develop a reliable machine learning model that can provide valuable insights into the factors influencing opioid overdose deaths. By adhering to these guidelines, our team aims to maintain the highest standards of ethical research and analysis, while ensuring the privacy and confidentiality of individuals and establishments represented in the data.
​
## Individual Branches
Our team members have created individual branches on GitHub for their contributions to the project.<br><br>
​
Our team members have devised a well-structured and balanced approach to work on their individual branches on GitHub, with the goal of completing the ETL process, creating a comprehensive database for the project in PostgreSQL, and compiling and evaluating a machine learning model that effectively answers the project's research questions.<br><br>
​
Each team member will utilize their respective expertise and strengths to ensure that their assigned tasks are completed efficiently and professionally.<br><br>
By doing so, we aim to maintain a high level of quality and consistency throughout the entire project, ultimately producing impactful and reliable research results.
