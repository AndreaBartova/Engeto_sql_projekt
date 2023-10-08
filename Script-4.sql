SELECT *
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL TABPSPF;

WITH price_year_change AS (
    SELECT
        YEAR,
        price_category_code,
        LAG(price_value) OVER (PARTITION BY price_category_code ORDER BY year) AS price_last_year,
        price_value,
        LAG(payroll_value) OVER (PARTITION BY industry_branch_code ORDER BY year) AS payroll_last_year,
        payroll_value
    FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL
)
SELECT
	YEAR,
    round((price_value - price_last_year) / price_last_year * 100,2) AS average_change_price,
    round((payroll_value - payroll_last_year) /payroll_last_year * 100,2) AS average_chance_payroll
FROM price_year_change
GROUP BY year
ORDER BY average_change_price ASC;
