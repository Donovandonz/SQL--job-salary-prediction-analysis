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