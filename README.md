# SQL--job-salary-prediction-analysis
💰 Job Salary Prediction Analysis

---

## Dataset used
-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/job_salary_prediction_dataset.csv">RAW.job-salary-prediction-dataset</a>

---

## 📋 Project Overview
This project analyzes job salary data to identify key factors influencing compensation and build predictive insights using MySQL, with assistance from DeepSeek AI for query optimization and analysis guidance.

---

## 🛠️ Tools & Technologies Used

### Database & Querying
- **MySQL 8.0**: Primary tool for data analysis and querying
- **MySQL Workbench**: Database management and visualization

### AI Assistance
- **DeepSeek AI**: 
  - Query optimization and performance tuning
  - Complex SQL query generation
  - Data analysis methodology guidance
  - Statistical insights and interpretation
  - Code documentation and best practices
 
---

## 🎯 Objectives
- Identify salary patterns across different job titles
- Analyze impact of experience, education, and skills on salary
- Understand geographic and industry variations in compensation
- Build foundation for salary prediction modeling

## 📊 Dataset Description
The dataset includes the following features:
- **job_title**: Position title/role
- **experience_years**: Years of professional experience
- **education_level**: Highest education attained
- **skills_count**: Number of relevant skills
- **industry**: Industry sector
- **company_size**: Organization size (Small/Medium/Large)
- **location**: Geographic location
- **remote_work**: Remote work availability
- **certifications**: Number of professional certifications
- **salary**: Annual compensation (target variable)

## 🔍 Key Analysis Performed

### 1. Exploratory Data Analysis
- Salary distribution analysis
- Missing value identification
- Outlier detection

### 2. Feature Impact Analysis
- Experience vs Salary correlation
- Education premium analysis
- Skills count impact
- Geographic salary variations

### 3. Statistical Insights
- Industry-wise compensation benchmarks
- Company size impact on salaries
- Remote work premium analysis

---

## 📊 Key Business Questions Answered

| # | Question | SQL File |
|:--:|----------|----------|
| 1 | Check total records and basic statistics? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/01_total_records_and_statistic.sql">SQL-query</a> |
| 2 | Average salary by job title with count of positions? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/02_avg_salry_by_job_title.sql">SQL-query</a> |
| 3 | Salary progression with experience? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/03_salary_progression_with_experience.sql">SQL-query</a> |
| 4 | Salary by education level? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/04_salary_by_education_level.sql">SQL-query</a> |
| 5 | Salary analysis by location and remote work? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/05_salary_analysis_location_and_remote_work.sql">SQL-query</a> |
| 6 | Industry-wise salary analysis? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/06_industry_salary_analysis.sql">SQL-query</a> |
| 7 | Correlation between skills count and salary? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/07_correlation_between_skillscount_and_salary.sql">SQL-query</a> |
| 8 | Salary by company size? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/08_salary_by_company_size.sql">SQL-query</a> |
| 9 | Certification impact on salary? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/09_certifications_impact_on_salary.sql">SQL-query</a> |
| 10 | Combined factors affecting salary? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/10_combined_factors_affecting_salary.sql">SQL-query</a> |



