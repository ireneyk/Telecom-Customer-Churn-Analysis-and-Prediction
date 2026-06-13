# Telecom Customer Churn Prediction & Analysis

![Power BI Dashboard Snapshot](dashboard/Summary.png)

## Executive Summary
In the telecommunications sector, customer retention is highly cost-effective compared to new customer acquisition. This project outlines an end-to-end data pipeline designed to analyze historical customer data, isolate the root causes of attrition, and deploy a machine learning classification model to predict high-risk churners. The resulting dashboard and predictions enable stakeholders to transition from reactive to proactive retention strategies.

## Architecture & Technologies
* **Database & ETL:** Microsoft SQL Server (SSMS)
* **Predictive Modeling:** Python (Jupyter, Pandas, Scikit-Learn)
* **Business Intelligence:** Power BI, DAX
* **Version Control:** Git & GitHub

## Implementation Methodology

### 1. Data Engineering (SQL)
* **Data Ingestion:** Orchestrated the extraction of raw CSV files into a SQL Server staging environment (`stg_Churn`).
* **Data Cleansing & Transformation:** Executed queries to handle missing values, standardize categorical variables, and resolve anomalies. 
* **Production Schema:** Engineered a production-ready schema (`prod_Churn`) and established structured views (`vw_ChurnData`, `vw_JoinData`) to isolate historical training data from active customer scoring data.

### 2. Machine Learning Pipeline (Python)
* **Algorithm Selection:** Deployed a Random Forest Classifier to capture complex, non-linear relationships across demographic and account-level features.
* **Feature Engineering:** Built a robust preprocessing pipeline utilizing `LabelEncoder`. Implemented defensive programming logic to gracefully handle previously unseen categorical labels in incoming live data.
* **Scoring:** Processed the active customer base through the trained model, successfully identifying 1,270 high-risk accounts requiring targeted marketing intervention.

### 3. Reporting & Analytics (Power BI)
* **Dashboard Development:** Architected an interactive dashboard connected directly to the SQL Server views.
* **Metric Calculation:** Authored custom DAX measures to track overall churn rate, active user volume, and predicted churn counts.
* **Behavioral Mapping:** Visualized cohort behaviors across contract types, payment methods, and service usage to isolate the primary drivers of customer attrition.

## Key Business Insights
* **Contract Vulnerability:** Customers on month-to-month contracts exhibit a substantially higher churn rate compared to those on 1-year or 2-year commitments.
* **Payment Friction:** Higher attrition correlates strongly with manual payment methods (e.g., mailed or electronic checks) versus automated bank withdrawals.
* **Service Gaps:** Accounts lacking supplementary features, specifically 'Online Security' and 'Tech Support', display a significantly higher baseline probability of churning.

## Repository Structure
```text
├── data/                       # Raw training data and final predicted output (CSV)
├── sql/                        # SQL scripts for staging, transformations, and views
├── notebooks/                  # Jupyter Notebook detailing the Random Forest pipeline
├── dashboard/                  # Power BI source file (.pbix) and static exports
└── README.md                   # Project documentation
