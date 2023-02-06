CREATE DATABASE salaries_cleaning;
USE salaries_cleaning;

SELECT company_top5, title, location, avg(yearsofexperience) as avg_experience, avg(basesalary) as avg_base_salary
FROM salary
GROUP BY company_top5, location, title
ORDER BY avg_base_salary DESC;

SELECT company_top5, title, min(totalyearlycompensation) as min_comp, max(totalyearlycompensation) as max_comp, avg(totalyearlycompensation) as avg_comp
FROM salary
GROUP BY company_top5, title
ORDER BY company_top5, max_comp;


