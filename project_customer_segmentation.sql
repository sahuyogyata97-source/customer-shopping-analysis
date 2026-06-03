USE project_customer_segmentation;

SELECT * FROM customer;

DESCRIBE customer; 

SELECT gender, COUNT(*) AS total_shopping
FROM customer
GROUP BY gender;

SELECT gender, COUNT(*) AS total_shopping,
       ROUND(COUNT(*) * 100.0/
       (SELECT COUNT(*) FROM customer), 2) AS percentage
       FROM customer
       GROUP BY gender;

SELECT gender, 
      SUM(quantity) AS total_product_sold
FROM customer
GROUP BY gender;

SELECT gender,
      SUM(quantity*price) AS total_revenue
FROM customer
GROUP BY gender;

SELECT category, gender,
     COUNT(*) AS total_purchases
FROM customer
GROUP BY category, gender
ORDER BY category;

SELECT category, payment_method,
     COUNT(*) AS total_purchases
FROM customer     
GROUP BY category, payment_method ;
 
SELECT category, shopping_mall,
     COUNT(*) AS total_purchases
FROM customer     
GROUP BY category, shopping_mall ;
     
SELECT category, age,
     COUNT(*) AS total_purchases
FROM customer     
GROUP BY category, age 
ORDER BY age;     

SELECT 
  CASE
	 WHEN age BETWEEN 18 AND 25 THEN '18-25'
     WHEN age BETWEEN 26 AND 35 THEN '26-35'
     WHEN age BETWEEN 36 AND 45 THEN '36-45'
     WHEN age BETWEEN 46 AND 60 THEN '46-60'
ELSE '60+'  
END AS age_group,
     COUNT(*) AS total_shopping 
FROM customer
GROUP BY age_group
ORDER BY age_group;
     
SELECT 
  CASE
     WHEN age BETWEEN 18 AND 25 THEN '18-25'
     WHEN age BETWEEN 26 AND 35 THEN '26-35'
     WHEN age BETWEEN 36 AND 45 THEN '36-45'
     WHEN age BETWEEN 46 AND 60 THEN '46-60'
ELSE '60+'
     END AS age_group,
     SUM(quantity) AS total_product_sold
FROM customer
GROUP BY age_group
ORDER BY total_product_sold DESC;     
     
SELECT  
   CASE
     WHEN age BETWEEN 18 AND 25 THEN '18-25'
     WHEN age BETWEEN 26 AND 35 THEN '26-35'
     WHEN age BETWEEN 36 AND 45 THEN '36-45'
     WHEN age BETWEEN 46 AND 55 THEN '46-55'
 ELSE '56+' 
     END AS age_category,
     SUM(quantity * price) AS total_revenue
FROM customer    
GROUP BY age_category   
ORDER BY total_revenue DESC;   

SELECT
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    WHEN age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+'
END AS age_group,
ROUND(AVG(quantity * price),2) AS avg_spend
FROM customer
GROUP BY age_group
ORDER BY avg_spend DESC;
     
SELECT  gender, category,
    COUNT(*) AS total_purchases 
FROM customer
GROUP BY  gender, category
ORDER BY gender, total_purchases DESC;

SELECT 
    CASE
       WHEN age BETWEEN 18 AND 25 THEN '18-25'
       WHEN age BETWEEN 26 AND 35 THEN '26-35'
       WHEN age BETWEEN 36 AND 45 THEN '36-45'
       WHEN age BETWEEN 46 AND 55 THEN '46-55'
ELSE '56+'
       END AS age_group,
     category,
     COUNT(*) AS total_purchases
FROM customer
GROUP BY age_group, category
ORDER BY age_group;     

SELECT category, payment_method, shopping_mall,
     COUNT(*) AS total_purchases
FROM customer
GROUP BY category, payment_method, shopping_mall
ORDER BY payment_method, total_purchases DESC;

SELECT category,
    SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY category
ORDER BY total_revenue DESC;

SELECT gender, payment_method,
     COUNT(*) AS total_transaction
FROM customer
GROUP BY gender, payment_method
ORDER BY payment_method ;

SELECT 
   CASE 
      WHEN age BETWEEN 18 AND 25 THEN '18-25'
      WHEN age BETWEEN 26 AND 35 THEN '26-35'
      WHEN age BETWEEN 36 AND 45 THEN '36-45'
      WHEN age BETWEEN 46 AND 55 THEN '46-55'
ELSE '56+'
END AS group_category,
      payment_method,
      COUNT(*) AS total_transactions
FROM customer
GROUP BY group_category, payment_method
ORDER BY group_category ;

SELECT payment_method, category,
     COUNT(*) AS total_transactions
FROM customer
GROUP BY payment_method, category
ORDER BY payment_method ;

SELECT
   payment_method, shopping_mall,
      COUNT(*) AS total_transactions
FROM customer
GROUP BY payment_method, shopping_mall
ORDER BY payment_method ;

SELECT  
    payment_method, 
    SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY payment_method
ORDER BY total_revenue DESC ;

SELECT 
    payment_method,
    COUNT(*) AS total_transactions
FROM customer
GROUP BY payment_method
ORDER BY total_transactions DESC ;





