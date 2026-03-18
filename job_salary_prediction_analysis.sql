CREATE DATABASE job_salary_prediction;
USE job_salary_prediction;

CREATE TABLE job_staging AS
SELECT *
FROM job_salary_prediction.job_salary_prediction_dataset;

SELECT *
FROM job_staging;

-- IDENTIFY QUALITY DATA ISSUES -- SUCH AS DUPLICATE --

SELECT
ROW_NUMBER() OVER(PARTITION BY job_title, experience_years, education_level, skills_count, industry, company_size, location, remote_work, certifications, salary) AS row_num
FROM job_staging;

WITH duplicate_cte AS
(SELECT
ROW_NUMBER() OVER(PARTITION BY job_title, experience_years, education_level, skills_count, industry, company_size, location, remote_work, certifications, salary) AS row_num
FROM job_staging)
SELECT *
FROM duplicate_cte
WHERE row_num >=1;


-- Delete unwanted Rows --

DELETE FROM your_table
WHERE sex = 'both';


-- Check for NULL values in specific columns --

SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN job_title IS NULL THEN 1 ELSE 0 END) AS null_job_title,
    SUM(CASE WHEN experience_years IS NULL THEN 1 ELSE 0 END) AS null_experience_years,
    SUM(CASE WHEN education_level IS NULL THEN 1 ELSE 0 END) AS null_education_level,
    SUM(CASE WHEN skills_count IS NULL THEN 1 ELSE 0 END) AS null_skills_count,
    SUM(CASE WHEN industry IS NULL THEN 1 ELSE 0 END) AS null_industry,
    SUM(CASE WHEN company_size IS NULL THEN 1 ELSE 0 END) AS null_company_size,
    SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS null_location,
    SUM(CASE WHEN remote_work IS NULL THEN 1 ELSE 0 END) AS null_remote_work,
    SUM(CASE WHEN certifications IS NULL THEN 1 ELSE 0 END) AS null_certifications,
    SUM(CASE WHEN salary IS NULL THEN 1 ELSE 0 END) AS null_salary
FROM job_staging;


-- Standardize Text Formatting --

 UPDATE your_table_name
 SET gender = 
   CASE 
        WHEN UPPER(gender) IN ('M', 'MALE', 'MALE ') THEN 'Male'
        WHEN UPPER(gender) IN ('F', 'FEMALE', 'FEMALE ') THEN 'Female'
        WHEN UPPER(gender) IN ('O', 'OTHER', 'NON-BINARY') THEN 'Other'
        WHEN gender IS NULL OR LTRIM(RTRIM(gender)) = '' THEN 'Unknown'
        ELSE INITCAP(LTRIM(RTRIM(gender)))  -- Capitalize first letter
    END;
    
    
-- Convert date formats to YYYY-MM-DD --

ALTER TABLE your_table 
ADD COLUMN death_date DATE;

SELECT 
    date as original,
    STR_TO_DATE(date, '%d/%m/%Y') as converted_date,
    DATE_FORMAT(STR_TO_DATE(date, '%d/%m/%Y'), '%Y-%m-%d') as formatted_date
FROM your_table;


UPDATE your_table  
SET death_date = STR_TO_DATE(date, '%d/%m/%Y')
WHERE date IS NOT NULL AND date != '';

ALTER TABLE your_table  
MODIFY COLUMN death_date DATE FIRST;

ALTER TABLE your_table
DROP COLUMN date;

ALTER TABLE your_table 
CHANGE COLUMN donation_date date DATE;


-- 1. Initial Data Exploration --

-- Check total records and basic statistics
SELECT 
    COUNT(*) as total_jobs,
    COUNT(DISTINCT job_title) as unique_job_titles,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(STDDEV(salary), 2) as salary_stddev
FROM job_staging;


-- 2. Salary Distribution by Job Title --

-- Average salary by job title with count of positions
SELECT 
    job_title,
    COUNT(*) as position_count,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(MIN(salary), 2) as min_salary,
    ROUND(MAX(salary), 2) as max_salary
FROM job_staging
GROUP BY job_title
ORDER BY avg_salary DESC;


-- 3. Impact of Experience --

-- Salary progression with experience
SELECT 
    experience_years,
    COUNT(*) as sample_size,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(skills_count), 1) as avg_skills
FROM job_staging
GROUP BY experience_years
ORDER BY experience_years;


-- 4. Education Level Analysis --

-- Salary by education level
SELECT 
    education_level,
    COUNT(*) as count,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience
FROM job_staging
GROUP BY education_level
ORDER BY avg_salary DESC;


-- 5. Location and Remote Work Impact --

-- Salary analysis by location and remote work
SELECT 
    location,
    remote_work,
    COUNT(*) as job_count,
    ROUND(AVG(salary), 2) as avg_salary
FROM job_staging
GROUP BY location, remote_work
ORDER BY location, avg_salary DESC;


-- 6. Industry Comparison --

-- Industry-wise salary analysis
SELECT 
    industry,
    COUNT(*) as job_count,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience,
    ROUND(AVG(certifications), 1) as avg_certifications
FROM job_staging
GROUP BY industry
ORDER BY avg_salary DESC;


-- 7. Skills Impact --

-- Correlation between skills count and salary
SELECT 
    skills_count,
    COUNT(*) as sample_size,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience
FROM job_staging
GROUP BY skills_count
ORDER BY skills_count;


-- 8. Company Size Analysis --

-- Salary by company size
SELECT 
    company_size,
    COUNT(*) as company_count,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience
FROM job_staging
GROUP BY company_size
ORDER BY 
    CASE company_size
        WHEN 'Small' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Large' THEN 3
        ELSE 4
    END;
    
    
-- 9. Certifications Impact --

-- Certification impact on salary
SELECT 
    CASE 
        WHEN certifications = 0 THEN 'No certifications'
        WHEN certifications BETWEEN 1 AND 2 THEN '1-2 certifications'
        WHEN certifications BETWEEN 3 AND 5 THEN '3-5 certifications'
        ELSE '5+ certifications'
    END as cert_group,
    COUNT(*) as count,
    ROUND(AVG(salary), 2) as avg_salary,
    ROUND(AVG(experience_years), 1) as avg_experience
FROM job_staging
GROUP BY 
    CASE 
        WHEN certifications = 0 THEN 'No certifications'
        WHEN certifications BETWEEN 1 AND 2 THEN '1-2 certifications'
        WHEN certifications BETWEEN 3 AND 5 THEN '3-5 certifications'
        ELSE '5+ certifications'
    END
ORDER BY avg_salary DESC;


-- 10. Multiple Factors Analysis --

-- Combined factors affecting salary
SELECT 
    education_level,
    experience_years,
    remote_work,
    COUNT(*) as sample_size,
    ROUND(AVG(salary), 2) as avg_salary
FROM job_staging
WHERE experience_years <= 10  -- Focus on reasonable experience range
GROUP BY education_level, experience_years, remote_work
HAVING COUNT(*) > 5  -- Only groups with sufficient data
ORDER BY experience_years, avg_salary DESC;




SELECT *
FROM job_staging;
