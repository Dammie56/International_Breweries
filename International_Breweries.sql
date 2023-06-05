SELECT * FROM international_breweries;
SELECT years:: INT
FROM international_breweries; 
SELECT * FROM international_breweries;
 SECTION A(PROFIT ANALYSIS)
 
 ---QUESTION 1
SELECT SUM(profit) AS total_profit
FROM international_breweries
WHERE years  IN ('2019','2018','2017');

---QUESTION 2




---QUESTION 3
SELECT countries, SUM(profit) AS highest_profit
FROM international_breweries
WHERE years ='2019'
GROUP BY countries
ORDER BY highest_profit DESC
LIMIT 1;



---QUESTION 4
SELECT years,SUM(profit) AS highest_profit
FROM international_breweries
GROUP BY years
ORDER BY highest_profit DESC
LIMIT 1;



---QUESTION 5
SELECT months,years,SUM(profit) AS profit_generated
FROM international_breweries
WHERE years in ('2019','2018','2017')
GROUP BY years, months
ORDER BY profit_generated ASC
LIMIT 1;



---QUESTION 6
SELECT  MIN(profit) AS min_profit
FROM international_breweries
WHERE years = '2018' AND months ='December'
;



---QUESTION 7
---QUESTION 8
SELECT brands, SUM(profit) AS highest_profit
FROM international_breweries
WHERE countries = 'Senegal'
GROUP BY brands
ORDER BY highest_profit DESC
LIMIT 1;


----BRAND ANALYSIS(SECTION B)

---QUESTION 1
SELECT DISTINCT brands,years
FROM international_breweries
WHERE countries IN ('Togo','Benin','Senegal')
AND years IN ('2019','2018')
ORDER BY brands DESC
LIMIT 3;

----QUESTION 2
SELECT DISTINCT brands
FROM international_breweries
WHERE countries = 'Ghana'
ORDER BY brands DESC 
LIMIT 2;

---QUESTION 3


---QUESTION 4
 SELECT brands,years, countries, region
 FROM international_breweries
 WHERE countries IN ('Ghana','Nigeria') AND brands LIKE '%malt'
 AND years BETWEEN '2018' AND '2019';

---QUESTION 5
SELECT brands, quantity
FROM international_breweries
WHERE countries='Nigeria' AND years = '2019'
ORDER BY quantity DESC;

---QUESTION 6
SELECT brands, quantity, region
FROM international_breweries
WHERE region = 'southsouth' AND countries = 'Nigeria'
ORDER BY quantity DESC;

---QUESTION 7
SELECT brands, SUM(quantity) AS total_consumption
FROM international_breweries
WHERE countries = 'Nigeria'
AND brands NOT LIKE '%malt'
GROUP BY brands
ORDER BY total_consumption DESC;

---QUESTION 8
SELECT brands,SUM(quantity)AS consumption,region
FROM international_breweries
WHERE countries='Nigeria' AND brands LIKE 'budweiser'
GROUP BY brands,region
ORDER BY consumption DESC;


---QUESTION 9
SELECT brands, SUM(quantity) AS consumption,region
FROM international_breweries
WHERE countries ='Nigeria' AND brands LIKE 'budweiser'
AND years = '2019'
GROUP BY brands,region
ORDER BY consumption DESC;


SELECT countries,SUM(profit) AS highest_profit
FROM international_breweries
WHERE months in ('october','november','december') AND YEARS ='2019'
GROUP BY countries 
ORDER BY highest_profit DESC;




---SECTION C (COUNTRY_ANALYSIS)


--QUESTION 1

SELECT DISTINCT countries,SUM(quantity) AS highest_consumption
FROM international_breweries
WHERE brands NOT LIKE 'malt'
GROUP BY countries
ORDER BY highest_consumption DESC
LIMIT 1;

SELECT countries, SUM(quantity) AS consumption
FROM international_breweries
GROUP BY countries
ORDER BY consumption DESC
LIMIT 1;
 

---QUESTION 2
SELECT sales_rep AS "sales_personnel", SUM(quantity) AS quantity
FROM international_breweries
WHERE countries = 'Senegal' AND brands ='Budweiser'
GROUP BY sales_personnel
ORDER BY quantity ASC
;


---QUESTION 3
SELECT countries,SUM(profit) AS highest_profit
FROM international_breweries
WHERE months in ('october','november','december') AND YEARS ='2019'
GROUP BY countries 
ORDER BY highest_profit DESC;

SELECT * FROM international_breweries;



SELECT countries,SUM(profit) AS highest_profit
FROM international_breweries
WHERE months in ('october','november','december') AND YEARS ='2019'
GROUP BY countries 
ORDER BY highest_profit DESC;