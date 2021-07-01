-- Comments in SQL Start with dash-dash --

--Get app with ID 1880
playstore=# SELECT *
playstore-# FROM analytics
playstore-# WHERE ID = 1880;

--Apps last updated Aug 1, 2018
playstore=# SELECT id, app_name
FROM analytics
WHERE last_updated = 'August 01,2018';

--Count number of apps per category
playstore=# SELECT category, COUNT(*)
FROM analytics
GROUP BY category;


--5 most reviewed apps and number of reviews
playstore=# SELECT app_name, rating
playstore-# FROM analytics
playstore-# ORDER BY reviews DESC LIMIT(5);


--Most reviewd with a rating greater than 4.8
playstore=# SELECT MAX(app_name)
playstore-# FROM analytics
playstore-# WHERE rating > 4.8;


--Avg rating for each category ordered by highest rated
playstore=# SELECT category, AVG(rating)
playstore-# FROM analytics
playstore-# GROUP BY category
playstore-# ORDER BY avg DESC;


--Name, Price, Rating of most expensive app w/ rating < 3
playstore=# SELECT app_name, price, rating
FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;


--Apps with min installs not exceeding 50 and rating > 0
--Ordered highest rated -> lowest 
playstore=# SELECT app_name
FROM analytics
WHERE min_installs < 50 AND rating > 0
ORDER BY rating DESC;

--All apps rated less than 3 with at least 10,000 reviews
playstore=# SELECT app_name
playstore-# FROM analytics
playstore-# WHERE rating < 3 AND reviews >= 10000;

--Top 10 apps between ten cent and a dollar
playstore=# SELECT  app_name, price
playstore-# FROM analytics
playstore-# WHERE price > .10 AND price < 1.00
playstore-# ORDER BY price ASC
playstore-# LIMIT 10;


--Most out of date app
playstore=# SELECT *
FROM analytics
ORDER BY last_updated
LIMIT 1;


--Most expensive
playstore=# SELECT app_name, price
playstore-# FROM analytics
playstore-# ORDER BY price DESC
playstore-# LIMIT 1;


--All reviews in Play Store
playstore=# SELECT COUNT(reviews)
playstore-# FROM analytics;

--Categories w/ more than 300 apps
playstore=# SELECT category
playstore-# FROM analytics
playstore-# GROUP BY category
playstore-# HAVING COUNT (*) > 300;


--Min installs/review porportion
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;


