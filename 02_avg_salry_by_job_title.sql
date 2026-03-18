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