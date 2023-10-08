-- Má výška HDP vliv na změny ve mzdách a cenách potravin? 
-- Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?

SELECT *
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL;

SELECT 
	YEAR,
	GDP,
	round(avg(price_value),2) AS average_price,
	round(avg(payroll_value),0) AS average_payroll
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL
GROUP BY YEAR;
