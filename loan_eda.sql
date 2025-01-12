select * FROM loan_data;

# Adding the id column 
ALTER TABLE loan_data ADD COLUMN app_id SERIAL PRIMARY KEY;

# Avg Loan_to_Income Ratio for each area 
select property_area, round(avg(loan_amount/(applicant_income+coapplicant_income)),0) as loan_income_ratio 
from loan_data
where coapplicant_income <> 0
group by 1
order by 2 desc;

# Avg loan_amount by gender and whether applicant married or not 
SELECT gender, married, round(avg(loan_amount),0) AS avg_loan_amount
FROM loan_data
WHERE loan_amount <> 0
GROUP BY 1,2
ORDER BY 2 desc;

# Avg loan status by marriage status and dependents
SELECT married , dependents, round(AVG(applicant_income),0) as avg_income, round(avg(loan_amount),0) as avg_loan
from loan_data
where loan_amount <>0
group by 1,2
order by 2 desc;

# Top 20 loan amount by property_area
SELECT app_id, property_area,loan_amount_term, loan_amount,
RANK() OVER(PArtition by property_area order by loan_amount)
FROM loan_data
WHERE loan_amount <> 0
ORDER BY 4 DESC
LIMIT 20;

# Top 20 cumulative loan amount by Property Area
SELECT app_id, property_area, loan_amount_term,
SUM(loan_amount) OVER(PArtition by property_area order by loan_amount desc) as total_loan_amount
FROM loan_data
where loan_amount<>0
ORDER BY 4 DESC
LIMIT 20;

