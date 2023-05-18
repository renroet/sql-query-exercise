-- Comments in SQL Start with dash-dash --

-- 1 --
SELECT app_name FROM analytics WHERE id = 1880;
--        app_name         
-------------------------
 -- Web Browser for Android

 -- 2 --
 SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

 -- 3 --
 SELECT COUNT(*) AS num_per_category, category FROM analytics GROUP BY category;

 -- 4 --
 SELECT reviews, app_name FROM analytics ORDER BY reviews DESC LIMIT 5;

 -- 5 --
 SELECT app_name, reviews, rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
--  app_name  | reviews | rating 
------------+---------+--------
 -- Chess Free | 4559407 |    4.8

 -- 6 --
 SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC;

 -- 7 --
 SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--      app_name      | price  | rating 
--------------------+--------+--------
 -- Naruto & Boruto FR | 379.99 |    2.9

 -- 8 -- 
 SELECT app_name, rating  FROM analytics WHERE min_installs <= 50 AND rating IS NOT  NULL  ORDER BY rating DESC;

 -- 9 --
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
--                    app_name                     
-------------------------------------------------
-- The Wall Street Journal: Business & Market News
-- Vikings: an Archer’s Journey
-- Shoot Em Down Free
-- (3 rows)

-- 10 -- 
SELECT * FROM analytics WHERE price BETWEEN .10 AND 1.0 ORDER BY reviews DESC LIMIT 10;

-- 11 --
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;

-- 12 --
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);

-- 13 --
SELECT SUM(reviews) AS total_googleplay_reviews FROM analytics;
-- total_googleplay_reviews 
--------------------------
--               4814575866

-- 14 --
SELECT category, COUNT(*) AS apps_per_category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

-- 15 --
SELECT app_name, reviews, min_installs, (min_installs/reviews) AS proportion FROM analytics WHERE min_installs >= 100000 
