-- mléko
SELECT
	YEAR,
	round(avg(payroll_value), 0) AS average_payroll,
	price_category_code,
	round(avg(price_value), 2) AS average_price
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL TABPSPF
WHERE YEAR = 2006
	AND price_category_code = '114201' 
GROUP BY price_category_code, YEAR
ORDER BY YEAR;

SELECT
	YEAR,
	round(avg(payroll_value), 0) AS average_payroll,
	price_category_code,
	round(avg(price_value), 2) AS average_price
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL
WHERE YEAR = 2018
	AND price_category_code = '114201' 
GROUP BY price_category_code, YEAR
ORDER BY YEAR;
	
-- chléb
SELECT
	YEAR,
	round(avg(payroll_value),0) AS average_payroll,
	price_category_code,
	round(avg(price_value), 2) AS average_price
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL
WHERE YEAR = 2006
	AND price_category_code = '111301' 
GROUP BY price_category_code, YEAR
ORDER BY YEAR;

SELECT
	YEAR,
	round(avg(payroll_value), 0) AS average_payroll,
	price_category_code,
	round(avg(price_value),2) AS average_price
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL
WHERE YEAR = 2018
	AND price_category_code = '111301' 
GROUP BY price_category_code, YEAR
ORDER BY YEAR;
SELECT *
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL TABPSPF;

SELECT *
FROM CZECHIA_PRICE_CATEGORY CPC;