# Analysis of Global Mental Health Disorders and Suicide Rates 

### File Legend
1. Dashboard - Global Mental Health Disorders 1990-2017.twb --> Tableau workbook. This contains 2 interactive dashboards for data analysis.
2. Data Cleaning and Transforming - Mental Health.rmd --> R markdown file used to clean the dataset.
3. Global_Mental_Health_Disorders_cleaned.csv --> The cleaned dataset, consists of 5460 obs and 16 variables.
4. SQL - Queries for Mental Health Disorders.sql --> SQL Script containing a few queries for some insights into the data.
5. SQL - Table and Values for Mental Health Disorder.sql --> The entire dataset into a SQL Script, just one table.

### Table of Contents

1. Introduction to the Project and Global Mental Health Disorders
2. Dataset Information and Cleaning (R)
3. Exploratory Data Analysis
4. Correlation Matrix
5. Some Insights into the Data (SQL)
6. Interactive Dashboards (Tableau)

### Introduction to the Project

In many countries throughout the world, many people with a various mental illnesses go undiagnosed, leading lives with no support for overcoming these issues. Mental health is usually given less attention and support than it deserves or needs, and even when diagnosed, treatment is not of the best quality. Data can be help with this issue. With enough reliable data, the burden of mental health disease can be reduced, increasing effectiveness of treatments and screening tests.

Mental illness can be defined as psychological symptoms and behaviours, rather than biological tests. This subjective nature can vary vastly between country to country, hospital to hospital, or even doctor to doctor, and diagnosis becomes difficult. The purpose of this analysis is to offer insight into various mental illnesses such as schizophrenia, bipolar disorder, eating disorders, substance abuse, and depression. It will also cover suicide rates and depressive disorders rates. All the data is comprised from 1990-2017, for almost all countries in the world (apart from a few small states). 

The data used in this study was obtained from [https://www.kaggle.com/datasets/thedevastator/uncover-global-trends-in-mental-health-disorder]. This is just a uncleaned compilation of multiple different data sets, which were obtained from Our World In Data and compiled together. The data is separated into 4 tables, with 108533 observations and 10 features (there are more features, but the tables are stacked, so the data cannot be accessed or understood without cleaning the raw dataset). The dataset was cleaned using R. The 4 tables were separated and cleaned individually, and then finally merged together using Excel, giving a combined final working dataset with 5460 observations and 16 features. All missing values were handled, and duplicates were removed. Outliers were kept as this is country data and not individual data. The working dataset was then used to run some queries in SQL for additional insights into the data. Lastly, two interactive dashboards were created in Tableau to understand and interpret the data. One was a global map showcasing the prevalence, in percentages, of the various mental health disorders, the year, and the country. The other was a scatterplot, illustrating the differences between mental health of women and men in various countries and the year. More information is included in the following sections.


### Dataset Information and Cleaning (R)

**The Data, Attribute Information and Cleaning Process** 

Data Source [https://www.kaggle.com/datasets/thedevastator/uncover-global-trends-in-mental-health-disorder]

The dataset was obtained from the kaggle page above, however, the original source is from Our World In Data's mental health page. The author of the kaggle dataset just compiled a few of the tables into one file for use (tables listed below). Our World In Data has an open and free public use policy on their datasets. Because of the way the data was compiled, it was actually quite messy.

The dataset is messy because it is 4 different tables in 1 csv file without any separation. For example, after approximately row 6400, the new table starts but it is in the same column as the the table before. That means columns 4 or 5 are completely different attributes depending on which row you are in. An outline of the tables and attributes is further provided. The R markdown notebook in the repository was used to clean up the entire CSV file and split into the 4 tables respectively, which were then combined in Excel and used for analysis. The data will only focus on yearly values from 1990 to 2017. The cleaned dataset went from 4 tables, 108553 obs and 10 variables to 1 table, 5460 obs and 16 variables. Each of the table belows was its own entity until combined. The cleaned dataset in the respository features the 3 common variables, and then the 13 other variables from each table into one table. Refer to the R markdown file for more information on how the data was cleaned. 

**Note** All tables share the first few columns with each other. The attributes shared are:

Entity: Unique identifier for each country or region included in the data set.
Code: Unique code associated with an Entity/Country or region included in the data set.
Year: Year that the data about that particular Entity/Country was collected.

After this, the tables have different features.

**Table 1: Mental Health Disorders in %**

- Schizophrenia (%): Percentage of people with schizophrenia in that country/region during that year.
- Bipolar disorder (%): Percentage of people with Bipolar Disorders in that country/region during that year.
- Eating disorders (%): Percentage of people with Eating Disorders in that country/region during that year.
- Anxiety disorders (%): Percentage of people with Anxiety disorders in that country/region during that year.
- Drug use disorders (%): Percentage of people with Drug use disorders in that country/region during that year.
- Depression (%): Percentage of people with Depression in that country/region during that year.
- Alcohol use disorders (%): Percentage of people with alcohol use disorders in that country/region during that year.

**Table 2: Mental Health Disorder Per Sex in %**

- Prevalence in males (%): Percentage of mental health disorders in males in that country during that year.
- Prevalence in females (%):  Percentage of mental health disorders in females in that country during that year.

**Table 3: Table 3: Suicide and Depression per 100k inhabitants**

- Suicide rate (deaths per 100,000 individuals): Suicide deaths/100,000 in that country in that year.
- Depressive disorder rates (number suffering per 100,000): Number of individuals suffering from depression per 100,000 in that country in that year.
Population: The total population.

**Table 4: Total Prevalence - Depressive Disorders**
- Prevalence - Depressive Disorders: The total number of people suffering from depression in that country during that year. This is for both sexes and all ages combined. In other words, the total number of people suffering from depressive disorders. This is not a percentage or a rate. 


## Exploratory Data Analysis

### Correlation Matrix

![image](https://github.com/hasham-zahid/Data-Analysis-of-Global-Mental-Health-Disorders/assets/148837970/b3ea3e9e-301b-4691-a777-8e12e9833d22)

### Some Insights into the Data (SQL)

Among countries with the highest number of suicides on average, Greenland is number one with an incredibly high 78 suicides per 100,000 inhabitants. Greenland again, has the highest number of depressive disorders from any country in the world on average. It also has an extremely high percentage of mental health disorders for females, far more than the second highest country. For males, its still the highest but not by much, unlike the female prevalence. 

Drug, Alcohol and Substance abuse disorders are also interesting. Surprisingly, the USA has the highest number of drug related mental health disorders. Eastern Europe on the other hand (countries such Russia, Belarus, Estonia, Ukraine, etc.) has the highest number of alcohol related mental health disorders, with the top 10 countries being almost filled completely with Eastern European countries.

### Interactive Dashboards (Tableau)

These are the two interactive dashboards that were created in Tableau. The map lists all 7 mental health disorders with a slider bar for the year to see the change in that specific disease over the years. The scatterplot demonstrates the relationship between the prevalence of male and female disorders. The dots represent countries, and there is a slider for the years. Hovering over the drops will give more info on the specific country and  that specific year. Countries can also be searched for.  
**NOTE**: These are only screenshot previews of the dashboards, as they cannot be posted on github. The dashboard is availble in the above file.

<img width="1117" alt="Screenshot 2024-01-12 011837" src="https://github.com/hasham-zahid/Data-Analysis-of-Global-Mental-Health-Disorders/assets/148837970/81d8affa-d95f-4b64-bea2-5e6d1edc1168">

<img width="1116" alt="Screenshot 2024-01-11 195728" src="https://github.com/hasham-zahid/Data-Analysis-of-Global-Mental-Health-Disorders/assets/148837970/dd060250-74e6-406a-8838-846b81913fa0">


