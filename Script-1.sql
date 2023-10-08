SELECT *
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL TABPSPF;

SELECT 
	YEAR,
	industry_branch_code,
	payroll_value
FROM T_ANDREA_BARTOVA_PROJECT_SQL_PRIMARY_FINAL TABPSPF 
GROUP BY YEAR, INDUSTRY_BRANCH_CODE 
ORDER BY INDUSTRY_BRANCH_CODE, YEAR;

-- ibc A-2009 pokles o 300kč, Nárůst o 6000kč v roce 2017 a v 2018 pokles o 4000kč, B - 2013 pokles o 1000kc, D-2017 pokles o 2000kc, E-2013 pokles o 400kč, F-2013 pokles o400kč, 2018 pokles o 200kč
-- H-2013 pokles o 100kč, I-2011 pokles o 200kč, J růst mezd stálý, K- pokles 2009 a 2010 ale v rámci 200kč, 2013 pokles o6000kč, 2017 pokles o 3000kč, L- pokles 2009 o 400kč, 2013 pokles o 300kč
-- M- pokles o 2200kč v roce 2010, pokles 2013 o 700kč, 2017 výrazný nárůst o 5000kč, 2018 pokles o 1500kč, N-pokles o 200kč v roce 2013,
-- O-2011 pokles mzdy o 900kč, o 4000kč nárůst v roce 2017, P-2018 nárůst o 3000kč, Q- větší nárůst v roce2017 o 4500kč
-- R- rovnoměrný nárůst, 2018 nárůst o 4000kč, S- pokles o 300kč 2009, 

SELECT *
FROM CZECHIA_PAYROLL_INDUSTRY_BRANCH CPIB;