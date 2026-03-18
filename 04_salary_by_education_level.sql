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