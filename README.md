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
* [Unemployment: Unemployment and median household income data for US counties, also provided by the USDA ](https://www.ers.usda.gov/data-products/county-level-data-sets/county-level-data-sets-download-data/).<br>
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

### Exploratory Data Analysis
Our team's exploratory data analysis (EDA) process involved preparing and cleaning individual data sets for each independent variable in our models, including opioid deaths, opioid prescription rates, education, poverty, unemployment, and personal income.<br> We had to handle each data set differently, such as converting average rates to population values per county, removing unnecessary lines of data (such as state values instead of county values), and converting some data sets from long to wide format. These steps helped us become familiar with each data set.<br><br>

After creating a comprehensive relational schema and loading our cleaned data into Postgres, we utilized AWS to establish a secure connection to our database.<br> This enabled us to easily access and query our data from any location, facilitating efficient analysis and modeling.<br> The combination of a robust relational schema and a reliable cloud infrastructure allowed us to effectively store and manage large amounts of data, laying the foundation for our machine learning approach to predicting opioid overdose deaths.<br><br>
Once we created the final data set using SQL, we had to clean it from null values and suppressed values received from the WONDER data set.<br> We also had to address 'unreliable' crude rates in some counties.<br> To salvage these data points, we calculated the crude rate using the total deaths and total population of the county.<br> Overall, our EDA process allowed us to effectively prepare the data for modeling and gain a deeper understanding of each variable's impact on opioid overdose deaths.<br><br>

### The Analysis Phase of the Project - Using Machine Learning to Analyze Opioid Overdose Deaths Data

The analysis phase of the project aimed to tackle the significant public health challenge posed by the opioid epidemic in the United States. With thousands of opioid overdose deaths every year, we recognized the need for innovative approaches to analyze and predict this issue.<BR>
We employed various machine learning techniques to study opioid overdose data and develop predictive models at the county level.<br>
By harnessing the power of machine learning, we sought to identify high-risk areas and help healthcare professionals and policymakers take proactive measures to prevent opioid overdose deaths.
