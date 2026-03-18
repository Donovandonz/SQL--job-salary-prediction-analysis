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