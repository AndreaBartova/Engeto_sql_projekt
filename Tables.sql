CREATE TABLE t_andrea_bartova_project_sql_primary_final AS
SELECT
	YEAR (cp.date_from),
	cp.value AS price_value,
	cp.category_code AS price_category_code,
	cp2.value AS payroll_value,
	cp2.value_type_code,
	cp2.industry_branch_code,
	cp2.payroll_year,
	eco.country,
	eco.YEAR,
	eco.GDP
	FROM czechia_price cp
JOIN czechia_payroll cp2
	ON cp2.payroll_year = YEAR(cp.date_from)
JOIN economies eco
	ON eco.YEAR = cp2.payroll_year
WHERE cp2.VALUE IS NOT NULL
	AND cp2.VALUE_TYPE_CODE != '316'
	AND cp2.INDUSTRY_BRANCH_CODE IS NOT NULL
	AND eco.country = 'Central Europe and the Baltics';


CREATE TABLE t_andrea_bartova_project_sql_secondary_final AS
SELECT 
	eco.YEAR,
	eco.country,
	eco.GDP,
	eco.taxes,
	con.national_dish
FROM ECONOMIES eco
JOIN countries CON 
	ON con.country = eco.country
WHERE eco.YEAR IN('2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
	AND eco.taxes IS NOT NULL
ORDER BY eco.YEAR ASC;	

SELECT *
FROM  t_andrea_bartova_project_sql_secondary_final;