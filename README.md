# Opioid Overdose Death Prediction
## Selected Topic
Our team, consisting of Anastassia Tatarskaja, Iris Belensky, Milos Popov, Olga Mironova, and Patrick Gilchrist from the University of Denver, has chosen to work on predicting the rate of opioid overdose deaths in US counties based on basic socio-economic variables and the dispensing rate of prescription opioids for that county.

## Reason for Topic Selection
We selected this topic because the opioid crisis is a major public health concern in the United States, and understanding the factors that contribute to opioid overdose deaths can help inform targeted prevention and intervention strategies.<br>
By using machine learning algorithms, we hope to identify patterns in historical opioid deaths data and predict future trends, ultimately enabling more effective allocation of resources.
 
## Data Sources
We will be using data from the following sources to analyze various socio-economic variables and opioid dispensing rates in the context of opioid overdose deaths:

* [Death by Opioid Type: Detailed mortality data provided by the CDC WONDER database](https://wonder.cdc.gov/).<br>
* [Education: Educational attainment data for adults age 25 and older in US counties, provided by the USDA](https://www.ers.usda.gov/data-products/county-level-data-sets/county-level-data-sets-download-data/).<br>
* [Unemployment: Unemployment and median household income data for US counties, provided by the USDA ](https://www.ers.usda.gov/data-products/county-level-data-sets/county-level-data-sets-download-data/).<br>
* [Income: Personal income data by county and metropolitan area, including government social benefits, provided by the Bureau of Economic Analysis](https://www.bea.gov/data/income-saving/personal-income).<br>
* [Dispensing Rate: US county opioid dispensing rates based on prescriber location, provided by the CDC](https://www.cdc.gov/drugoverdose/rxrate-maps/county2020.html).<br><br>

## Research Questions
Our project aims to answer the following questions:

* **Can we predict the rate of opioid overdose deaths by county based on basic socio-economic variables and the dispensing rate of prescription opioids for that county?**<br>
* Which of the selected factors contribute the most to our prediction for the rate of opioid deaths?<br><br>
### Exploratory Data Analysis Questions
Additionally, we will explore the following questions during our data analysis:

* What is the trajectory of opioid deaths in the counties that we have focused on over the years?<br>
* What is the correlation (if any) of opioid deaths to education (income/poverty/unemployment/prescription rate) in the counties we have chosen?<br>
* Which of our independent variables shows the strongest correlation to overdose deaths?<br><br>


## Individual Branches
Our team members have created individual branches on GitHub for their contributions to the project.

Our team members have devised a well-structured and balanced approach to work on their individual branches on GitHub, with the goal of completing the ETL process, creating a comprehensive database for the project in PostgreSQL, and compiling and evaluating a machine learning model that effectively answers the project's research questions.

Each team member will utilize their respective expertise and strengths to ensure that their assigned tasks are completed efficiently and professionally.

By doing so, we aim to maintain a high level of quality and consistency throughout the entire project, ultimately producing impactful and reliable research results.

## Exploratory Data Analysis
Our team's exploratory data analysis (EDA) process involved preparing and cleaning individual data sets for each independent variable in our models, including opioid deaths, opioid prescription rates, education, poverty, unemployment, and personal income.<br> We had to handle each data set differently, such as converting average rates to population values per county, removing unnecessary lines of data (such as state values instead of county values), and converting some data sets from long to wide format. These steps helped us become familiar with each data set.<br><br>

After creating a comprehensive relational schema and loading our cleaned data into Postgres, we utilized AWS to establish a secure connection to our database.<br> This enabled us to easily access and query our data from any location, facilitating efficient analysis and modeling.<br> The combination of a robust relational schema and a reliable cloud infrastructure allowed us to effectively store and manage large amounts of data, laying the foundation for our machine learning approach to predicting opioid overdose deaths.<br><br>
Once we created the final data set using SQL, we had to clean it from null values and suppressed values received from the WONDER data set.<br> We also had to address 'unreliable' crude rates in some counties.<br> To salvage these data points, we calculated the crude rate using the total deaths and total population of the county.<br> Overall, our EDA process allowed us to effectively prepare the data for modeling and gain a deeper understanding of each variable's impact on opioid overdose deaths.<br><br>

## The Analysis Phase of the Project - Using Machine Learning to Analyze Opioid Overdose Deaths Data

The analysis phase of the project aimed to tackle the significant public health challenge posed by the opioid epidemic in the United States. With thousands of opioid overdose deaths every year, we recognized the need for innovative approaches to analyze and predict this issue.<BR>
We employed various machine learning techniques to study opioid overdose data and develop predictive models at the county level.<br>
By harnessing the power of machine learning, we sought to identify high-risk areas and help healthcare professionals and policymakers take proactive measures to prevent opioid overdose deaths.

 #### [RandomForestClassifier](https://github.com/patgilch17/Group1FinalProject/blob/main/Models/RandomForestGroupProject.ipynb)
 
 
 
 
 
 
 #### [LogReg_SVM_DecisionTrees_Models](https://github.com/patgilch17/Group1FinalProject/blob/main/Models/LogReg_SVM_DecisionTrees_Models.ipynb)
 
 ##### [Logistic Regression](https://github.com/patgilch17/Group1FinalProject/blob/main/Models/LogReg_SVM_DecisionTrees_Models.ipynb) 
 
 Logistic Regression model was used to predict which US counties would be identified as high-level based on the opioid overdose rates. Counties were assigned a class '1' for 'high' and class '0' for low based on the crude rate. High class consisted of counties in the top 25%. The logistic regression model achieved an accuracy score of 75%. 
 
 ##### [Support Vector Machines (SVM)](https://github.com/patgilch17/Group1FinalProject/blob/main/Models/LogReg_SVM_DecisionTrees_Models.ipynb)
 
 The SVM model was used to predict US counties with the high levels of opioid overdose. The model performed similarly to the logistic regression model with an accuracy score of 0.75. 
 
 ##### [Decision Trees](https://github.com/patgilch17/Group1FinalProject/blob/main/Models/LogReg_SVM_DecisionTrees_Models.ipynb)
 
 The Dicision Trees Classifier model permormed a little better than the SVM and logistic regression models with an accuracy score of 77%. 
 
 #### [Deep Neural Models](https://github.com/patgilch17/Group1FinalProject/tree/main/Milos/Machine%20Learning%20Models)
 
##### [MLPRegressor for Predicting Opioid Overdose Deaths without Suppressed Values:](https://github.com/patgilch17/Group1FinalProject/blob/main/Milos/Machine%20Learning%20Models/MLPRegressor%20Model%20for%20Predicting%20Opioid%20Overdose%20Deaths%20without%20Suppressed%20Values.ipynb)
In this project, an MLPRegressor was used to predict opioid overdose death rates in US counties. Data preprocessing steps were performed to check for null values, drop unnecessary columns, and apply one-hot encoding to categorical variables. The MLPRegressor was trained and achieved an R-squared score of 0.682, MSE of 4169.988, and RMSE of 64.575.

##### [MLPRegressor with Imputed Values for Opioid Overdose Prediction:](https://github.com/patgilch17/Group1FinalProject/blob/main/Milos/Machine%20Learning%20Models/Opioid%20Overdose%20Prediction%20using%20MLPRegressor%20with%20Imputed%20Values.ipynb)
 MLPRegressor was used with imputed values to address the missing data problem. Suppressed values were imputed by sampling from a normal distribution with the calculated mean and standard deviation. The model did not perform well, with an R-squared score of -0.593, MSE of 16012.284, and RMSE of 126.540.

##### [Deep Neural Networks for Opioid Overdose Prediction without Suppressed Values:](https://github.com/patgilch17/Group1FinalProject/blob/main/Milos/Machine%20Learning%20Models/Opioid%20Overdose%20Prediction%20using%20Deep%20Neural%20Networks%20(No%20Suppressed%20Values).ipynb)
Deep neural networks were used to predict opioid overdose deaths without suppressed values. The data was split into training, validation, and testing sets, and a deep neural network model with four dense layers was developed. The model achieved an R-squared score of 0.846, MSE of 2484.396, and RMSE of 49.844. The model was used to predict opioid overdose deaths for each county in the testing set for the year 2020 and visualizations were created to evaluate the model's predictions.<br><br>
 
## The technologies, languages, tools and algorithms that the team used throughout the project
 
We used these technologies, libraries and algorithms in combination to perform data cleaning, analysis, and modeling to predict opioid overdose deaths in US counties.
 
* Python: the primary programming language for data analysis and machine learning
* Pandas: a Python library for data manipulation and analysis
* Numpy: a Python library for numerical computing
* Matplotlib and Seaborn: Python libraries for data visualization
* Scikit-learn: a popular machine learning library in Python
* TensorFlow and Keras: open-source libraries for building deep learning models
* Jupyter Notebook: a web-based interactive computing environment for data analysis and modeling
* Tableau: a data visualization tool
* JavaScript and HTML: for creating an interactive website
* Decision trees and Support Vector Machines (SVM): additional machine learning algorithms used in modeling
* RandomForestClassifier: ensemble learning algorithm that builds multiple decision trees and combines their outputs to make predictions
* Postgres SQL: for database management
* AWS: for cloud computing

## The results of the analysis

Our team has made significant progress in using machine learning algorithms to predict the rate of opioid overdose deaths in US counties.<br> By analyzing various socio-economic variables and opioid dispensing rates, we were able to develop models that achieved valuable results.<br> Our ultimate goal is to inform targeted prevention and intervention strategies that can help reduce the number of opioid overdose deaths in the United States.<br><br> We believe that our data-driven approach can make a meaningful contribution to this critical issue and help improve the lives of those affected by the opioid crisis.
 
## Recommendations for future analysis that the team would like to make

There are several recommendations for future analysis that the team would like to make based on their experience working on this project. These recommendations include:

* Finding more cohesive data sets: One of the main challenges the team faced during this project was finding data sets that were cohesive, with rate data that matched population totals. It would be helpful to find data sets that are more cohesive and easier to work with.

* Adding more features to the analysis: While the team had access to a variety of data sets, there is always room for more. Adding features like mortgage rates, access to rehab centers, and demographic information could provide valuable insights into the opioid crisis.

* Face-to-face time:  In future analyses, it would be beneficial to have face-to-face time to facilitate collaboration and brainstorming.

* Presentation limitations: Due to time constraints and technical limitations, the team was unable to present all of their findings and visualizations in the final presentation. It would be helpful to have more time to present and share the results of the analysis.

* Considering alternative cloud computing solutions: While the team used AWS for cloud computing, there may be alternative solutions that could be more efficient and cost-effective. It would be helpful to explore alternative cloud computing solutions to optimize the use of resources.<br><br>
 
##  Data visualization and presentation
 
During the project, the team used various tools and techniques for data visualization and presentation. Two of the primary tools used were Tableau and an interactive web application developed using JavaScript and HTML.

The team used Tableau to create interactive visualizations that allowed users to explore the relationships between different variables and the opioid overdose death rates in US counties. The Tableau visualizations can be found at this link: <br>
[Tableau visualizations](https://public.tableau.com/app/profile/iris.bel8090/viz/Final_Project_Workbook/Story1?publish=yes)
 
The team also developed an interactive web application using JavaScript and HTML that allowed users to explore opioid overdose death rates in US counties by year.  The web application can be found at this link:<br>
[Harnessing the Power of Data: Predicting Opioid Overdose Deaths with Machine Learning](https://patgilch17.github.io/Group1FinalProject/)

We used a variety of data visualization tools and techniques to help users better understand the patterns and trends in the data. The interactive nature of these visualizations allowed users to explore the data in a more engaging and meaningful way.
 
## Data Disclaimer and Compliance<br>
Our team is committed to ensuring the responsible and ethical use of data in our research and analysis. In the development of our machine learning model for predicting opioid overdose deaths, we have used data obtained from the National Center for Health Statistics (NCHS), a reputable source that adheres to strict data privacy regulations.<br>In accordance with the Public Health Service Act (42 U.S.C. 242m(d)), our team has taken the necessary precautions to abide by the data use restrictions outlined by NCHS.<br> We understand the importance of protecting the privacy of individuals and establishments represented in the data, and we are committed to using the data solely for health statistical reporting and analysis.To comply with these restrictions, we have:<br>

* Used the data exclusively for health statistical reporting and analysis in the context of our project.
* Ensured that any sub-national geographic data presented or published does not include death counts of 9 or fewer, or death rates based on counts of nine or fewer.
* Made no attempts to discover the identity of any person or establishment included in the data.
* Committed to reporting any inadvertent discoveries of personal or establishment identities to the NCHS Confidentiality Officer, and refraining from disclosing or using such information.

While these data use restrictions may impose certain limitations on our analysis, we are confident in our ability to develop a reliable machine learning model that can provide valuable insights into the factors influencing opioid overdose deaths.<br> By adhering to these guidelines, our team aims to maintain the highest standards of ethical research and analysis, while ensuring the privacy and confidentiality of individuals and establishments represented in the data.
 
