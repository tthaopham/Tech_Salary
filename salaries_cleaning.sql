CREATE DATABASE salaries_cleaning;
USE salaries_cleaning;

--  1. TOP 20 AVERAGE TOTAL SALARY BY COMPANY & TITLE
SELECT company_top5, title, avg(totalyearlycompensation) as avg_ttl_sal
FROM salary
GROUP BY company_top5, title
ORDER BY avg_ttl_sal DESC
LIMIT 20;

-- 2. BASE SALARY INFO BY COMPANY AND <5 YEARS OF EXPERIENCE 
SELECT company_top5, avg(yearsofexperience) as avg_experience, avg(basesalary) as avg_base_salary
FROM salary
WHERE yearsofexperience < 5
GROUP BY company_top5
ORDER BY avg_base_salary DESC;

-- 3. TOP 20 TITLE BY AVERAGE SALARY 
SELECT title, company_top5, min(totalyearlycompensation) as min_comp, max(totalyearlycompensation) as max_comp, avg(totalyearlycompensation) as avg_comp
FROM salary
GROUP BY title, company_top5
ORDER BY avg_comp DESC
LIMIT 20;

-- 4. BASE SALARY INFO BY COMPANY, TITLE AND <5 YEARS OF EXPERIENCE 
SELECT company_top5, title, avg(yearsofexperience) as avg_experience, avg(basesalary) as avg_base_salary
FROM salary
WHERE yearsofexperience < 5 AND title LIKE '%DATA%'
GROUP BY company_top5, title
ORDER BY avg_base_salary DESC;


