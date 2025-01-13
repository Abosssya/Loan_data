# Project Introduction
Loans are an essential part of the banking industry, and understanding factors such as the loan amount, borrower's income, and loan term that affect loan approval and repayment is essential for making effective decisions. Using Excel, SQL, and Tableau, I examined patterns in loan amounts, demographic data, and credit behavior to offer recommendations that can improve lending strategies and customer orientation.


# Dataset Information
Dataset is taken from Kaggle (link to the dataset : https://www.kaggle.com/datasets/burak3ergun/loan-data-set)
Below is a brief overview of the columns in the data :
Gender: Gender of the loan applicant.

Married: Marital status of the applicant.

Dependents: Number of dependents supported by the applicant.

Education: Education level of the applicant (Graduate/Not Graduate).

Self_Employed: Indicates if the applicant is self-employed.

Applicant_Income: Monthly income of the primary applicant.

Coapplicant_Income: Monthly income of the co-applicant, if applicable.

Loan_Amount: The loan amount requested by the applicant.

Loan_Amount_Term: Duration of the loan repayment in months.

Credit_History: Credit history of the applicant (1 = good, 0 = bad).

Property_Area: Location of the property (Urban, Semiurban, Rural).

Loan_Status: Indicates whether the loan was approved (Y) or not (N).


# Problems to Solve
1) What is the average loan-to-income ratio across different property areas?

2) How does loan approval vary by gender and marital status?

3) What are the characteristics of the top 20 loans by amount and area?

4) How does the average loan amount and income differ by
dependents and marital status?

5) What actionable insights can help banks better target applicants?


# Data Cleaning
### Cleaning the data was an essential step to ensure accuracy and usability. Here are the key processes I undertook:

Handling Missing Values: Filled missing values in important columns like Loan_Amount and Credit_History based on averages or logical assumptions(median, mode).

Standardizing Formats: Ensured numeric values were formatted consistently (e.g., Applicant_Income, Loan_Amount).

Adding Columns: Created new columns such as Area_number and app_id for analysis and ranking.


# Analysis
### To focus on the problems I aimed to solve, certain rows were excluded (e.g., loans with zero amounts or incomes), and new rows were created for better grouping and ranking (e.g., top 20 loans). Key Insights Discovered:
Loan-to-Income Ratio: Semiurban areas showed the highest loan-to-income ratios, indicating that applicants in these areas take on higher financial leverage.

Demographic Trends: Married males applied for the largest average loan amounts.

Top Loans: Urban areas recorded the highest individual loan amounts, highlighting a potential focus area for premium lending products.

Dependents Impact: Applicants with no dependents generally applied for smaller loans compared to those with dependents, aligning with family financial responsibilities.


# Dashboard 
### Link to the dashboard in Tableau Public :
https://public.tableau.com/views/loan_dash/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link


# Conclusion
### Answers to Key Questions:
1) Loan-to-Income Ratio: Semiurban areas have the highest ratios, indicating a higher financial burden for applicants.

2) Demographics: Married males are the top borrowers in terms of loan size, suggesting that banks could focus their marketing efforts on this group.

3) Top Loans: Urban areas dominate in terms of the highest loan amounts, presenting opportunities for premium loan products.

4) Dependents: Applicants with dependents are more likely to take larger loans, potentially due to greater financial responsibilities.

5) Business Recommendations:
Target Marketing: Focus on semiurban and urban areas with tailored lending products for married applicants, especially males.

Risk Assessment: Pay closer attention to loan-to-income ratios in Semiurban areas to mitigate lending risks.

Customized Loan Products: Develop family-focused loan offerings for applicants with dependents to address their financial needs better.











