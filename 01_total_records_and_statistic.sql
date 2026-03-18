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