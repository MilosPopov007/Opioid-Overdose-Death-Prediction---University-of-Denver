### Segment 1 (Milos Popov):

In this segment of our project, my role was data processing. The primary objective was to load and inspect the opioid deaths data for the years 2016 to 2020, which served as the foundation for our machine learning model. The data included information on opioid-related deaths, such as the year, county, and number of deaths, among other variables.

I started by loading the individual datasets for each year and performed an initial inspection to understand the structure and contents of the data. This step allowed me to identify any inconsistencies, missing values, or discrepancies in the data that needed to be addressed before merging the datasets.

After inspecting the data, I proceeded to merge the individual datasets for each year into a single, consolidated dataframe. This new dataframe provided a comprehensive view of opioid deaths across all the years of interest, making it easier to analyze trends and patterns over time.

To ensure the quality and integrity of the data, I performed a thorough cleaning process on the merged dataframe. This involved dealing with missing values, transforming data types, and standardizing the format of columns where necessary. This step was vital in preparing the data for integration with the rest of the team's data and making it suitable for use in a machine learning model.

Segment 1 focused on loading, inspecting, merging, and cleaning the opioid deaths data for the years 2016 to 2020. This laid the foundation for the project, allowing the team to proceed with loading the data into a database and using it to train and validate a machine learning model that can address the project's research questions.


### Segment 1: Our Plan for the Machine Learning Model

In this segment of our project, we plan to develop a machine learning model to predict total overdose deaths based on a set of socioeconomic and demographic factors. The dataset includes features such as population, education, unemployment, poverty, income, and dispensing rate, which will be used as predictors for the target variable, total overdose deaths.

To accomplish this, we will first import the necessary libraries, such as pandas, numpy, and scikit-learn. We will then load our dataset and preprocess it by handling missing values, dropping unnecessary columns, and performing any other required data cleaning steps.

Next, we will create the feature matrix (X) and the target vector (y) by selecting the appropriate columns from the dataset. The data will then be split into training and test sets, with 80% of the data used for training and 20% for testing.

To ensure that our machine learning models can effectively learn from the data, we will scale the features using StandardScaler from scikit-learn. This will help normalize the data and make it suitable for training.

We plan to explore two different machine learning algorithms for this task: a neural network (MLPRegressor) and a random forest (RandomForestRegressor). We will train both models on the training data and make predictions on the test data. The performance of each model will be evaluated using mean squared error (MSE) and R2 score.

After evaluating both models, we will compare their performance and choose the best one based on the evaluation metrics. If necessary, we can also explore incorporating other models, such as those that utilize confusion matrices for evaluation, to further improve our predictions and potentially gain additional insights.

By following this plan, we hope to create a robust machine learning model that can accurately predict total overdose deaths based on the socioeconomic and demographic factors provided in our dataset.<br><br>

### Segment 2 (Milos Popov): Mchine Learning Models  <br>

Our team, consisting of Anastassia Tatarskaja, Iris Belensky, Milos Popov, Olga Mironova, and Patrick Gilchrist from the University of Denver, is committed to ensuring the responsible and ethical use of data in our research and analysis. In the development of our machine learning model for predicting opioid overdose deaths, we have used data obtained from the National Center for Health Statistics (NCHS), a reputable source that adheres to strict data privacy regulations.

To comply with the data use restrictions outlined by NCHS, we have taken the necessary precautions to ensure the privacy and confidentiality of individuals and establishments represented in the data. We have used the data exclusively for health statistical reporting and analysis in the context of our project, and we have made no attempts to discover the identity of any person or establishment included in the data.

In addition, we have ensured that any sub-national geographic data presented or published does not include death counts of 9 or fewer, or death rates based on counts of nine or fewer. This is to protect the privacy of individuals and establishments represented in the data.

To adhere to these guidelines, we have dropped any rows with suppressed data.





#### MLPRegressor Model for Predicting Opioid Overdose Deaths without Suppressed Values<br>

I used an MLPRegressor to predict opioid overdose death rates in US counties. The MLPRegressor is a type of neural network that can be used for regression problems. It works by taking in input data, passing it through a series of hidden layers, and outputting a prediction. The number of hidden layers and neurons in each layer are hyperparameters that can be adjusted to improve the model's performance.

After reading in a CSV file of opioid data, I performed some data preprocessing steps. I first checked for null values and suppressed values in the 'deaths' and 'cruderate' columns, dropped some unnecessary columns, and applied one-hot encoding to the 'State' and 'county' columns. This is a common preprocessing step for categorical variables, and it allows the model to better understand the relationship between these variables and the target variable, which in this case is 'deaths'.

Next, I split the encoded data into training and testing sets, scaled the features using StandardScaler, and initialized an MLPRegressor with max_iter=500. After training the MLPRegressor on the training data, I used it to predict the opioid overdose death rates on the test data. I then calculated the R-squared score, Mean Squared Error, and Root Mean Squared Error to evaluate the model's performance.

The R-squared score tells us how well the model fits the data, with higher scores indicating a better fit. In this case, the MLPRegressor achieved an R-squared score of 0.682, which means that it is able to explain 68.2% of the variation in the test data.

The Mean Squared Error (MSE) is a measure of the average squared difference between the predicted and actual values. The lower the MSE, the better the model's performance. In this case, the MLPRegressor achieved an MSE of 4169.988.

The Root Mean Squared Error (RMSE) is the square root of the MSE and provides a more interpretable estimate of the average error in the same units as the target variable. In this case, the MLPRegressor achieved an RMSE of 64.575.

My MLPRegressor model shows promise in predicting opioid overdose death rates, there may be room for improvement in terms of model selection and hyperparameter tuning.


#### Opioid Overdose Prediction using MLPRegressor with Imputed Values<br>

To address the missing data in our opioid dataset due to privacy concerns, I tried using an MLPRegressor with imputed values. 

First, I loaded the opioid data into a Pandas dataframe and dropped any rows with missing values. I then split the data into two groups: one with non-suppressed data, and another with only suppressed data. From the non-suppressed group, I calculated the mean and standard deviation of the 'deaths' and 'cruderate' columns.

Next, I imputed the suppressed values by sampling from a normal distribution with the calculated mean and standard deviation. I replaced the suppressed values with the imputed values and merged the two groups back together. I then dropped unnecessary columns and applied one-hot encoding to the 'State' and 'county' columns.

After splitting the encoded data into training and testing sets and scaling the features using StandardScaler, I initialized an MLPRegressor with max_iter=500 and a hidden layer size of (64, 64). I trained the MLPRegressor on the training data and used it to predict the opioid overdose death rates on the test data.

Unfortunately, the MLPRegressor with imputed values did not perform as well as the MLPRegressor without imputed values. The R-squared score was -0.593, which means that the model did not fit the data well. The Mean Squared Error was 16012.284, and the Root Mean Squared Error was 126.540.

Although the results were not promising, this analysis was still useful in testing a possible solution to the missing data problem, it is clear that further exploration is needed to find a more effective solution.


## Opioid Overdose Prediction using Deep Neural Networks (No Suppressed Values)<br>

I split the data set into training, validation, and testing sets based on the year. The training set includes data from 2017-2019, the validation set includes data from 2020, and the testing set also includes data from 2020. StandardScaler is used to scale the input features in all sets.

##### Deep Neural Network Model Development:

A deep neural network model is developed using the Keras API. Deep neural networks are a type of machine learning algorithm that are inspired by the structure and function of the human brain. They consist of multiple layers of interconnected neurons that process input data and generate output predictions.

The model developed in this project includes four dense layers with 128, 64, and 32 neurons in the first three layers, respectively, and a single neuron in the output layer. The activation function used in all layers except the output layer is the rectified linear unit (ReLU). The mean squared error is used as the loss function, and the Adam optimizer is used with a learning rate of 0.001. The model is trained with a batch size of 64 and 50 epochs. The model is compiled and trained using the training set and validated using the validation set.

##### Model Evaluation:

The trained model is evaluated using the testing set. The root mean squared error (RMSE) is used as the evaluation metric, and it is found to be 49.844. The R-squared score and mean squared error (MSE) are also calculated using the sklearn library, and they are found to be 0.846 and 2484.396, respectively. These metrics indicate that the model has good predictive performance.

##### Prediction and Visualization:

The trained model is used to predict opioid overdose deaths for each county in the testing set for the year 2020. A new dataframe is created with county code, deaths, and predicted values for the year 2020. A scatter plot and a bubble chart are created to visualize the predicted versus actual deaths. The scatter plot shows the relationship between the actual and predicted deaths, and a regression line is added to the plot. The bubble chart shows the actual and predicted deaths for each county, with the size and color of the bubbles indicating the number of deaths.

##### Conclusion:

The developed Deep Neural Network Model shows promising results in predicting opioid overdose deaths at the county level. The RMSE and R-squared score indicate that the model has good predictive performance, and the scatter plot and bubble chart provide valuable visualizations to evaluate the model's predictions.

The model's predictive accuracy can be improved by considering additional relevant features such as the availability of addiction treatment centers, the number of healthcare professionals, and the proximity to drug rehabilitation programs, additionally, incorporating temporal data such as trends in drug use and prescription patterns can enhance the model's predictive capabilities.

The developed model can be a valuable tool for public health officials and policymakers to take proactive measures to prevent opioid overdose deaths.
By identifying high-risk areas and implementing targeted interventions, the model can potentially save lives and reduce the devastating impact of the opioid epidemic on communities.


###  Interactive Web Site

In addition to developing the Deep Neural Network Model I built the interactive web site to allow users to explore and filter the data used in the project. The web site was built using JavaScript and deployed via GitHub. Users can filter the data by state, county, and year.
[https://milospopov007.github.io/Opioid-Overdose-Death-Prediction---University-of-Denver/](https://milospopov007.github.io/Opioid-Overdose-Death-Prediction---University-of-Denver/)

### Data Disclaimer and Compliance

Our team is committed to ensuring the responsible and ethical use of data in our research and analysis. In the development of our machine learning model for predicting opioid overdose deaths, we have used data obtained from the National Center for Health Statistics (NCHS), a reputable source that adheres to strict data privacy regulations.

In accordance with the Public Health Service Act (42 U.S.C. 242m(d)), our team has taken the necessary precautions to abide by the data use restrictions outlined by NCHS. We understand the importance of protecting the privacy of individuals and establishments represented in the data, and we are committed to using the data solely for health statistical reporting and analysis.

To comply with these restrictions, we have:

* Used the data exclusively for health statistical reporting and analysis in the context of our project.
* Ensured that any sub-national geographic data presented or published does not include death counts of 9 or fewer, or death rates based on counts of nine or fewer.
* Made no attempts to discover the identity of any person or establishment included in the data.
* Committed to reporting any inadvertent discoveries of personal or establishment identities to the NCHS Confidentiality Officer, and refraining from disclosing or using such information.<br><br>
While these data use restrictions may impose certain limitations on our analysis, we are confident in our ability to develop a reliable machine learning model that can provide valuable insights into the factors influencing opioid overdose deaths. By adhering to these guidelines, our team aims to maintain the highest standards of ethical research and analysis, while ensuring the privacy and confidentiality of individuals and establishments represented in the data.
