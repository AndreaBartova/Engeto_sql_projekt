SELECT *
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL TABPSPF;

WITH price_year_change AS (
    SELECT
        price_category_code,
        YEAR,
        LAG(price_value) OVER (PARTITION BY price_category_code ORDER BY YEAR) AS price_previous_year,
        price_value
    FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL
)
SELECT
    price_category_code,
    AVG((price_value - price_previous_year) / price_previous_year * 100) AS average_change
FROM price_year_change
GROUP BY price_category_code
ORDER BY average_change ASC;

-- 112,101 -nejmenší procentuální nárůst

SELECT *
FROM CZECHIA_PRICE_CATEGORY CPC;