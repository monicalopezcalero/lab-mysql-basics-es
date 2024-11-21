USE  bank;
-- Query 1
/* SELECT client_id from client
WHERE district_id = 1
ORDER BY client_id ASC
limit 5; */

-- Query 2
SELECT MAX(client_id) from client
WHERE district_id = 72
ORDER BY client_id ASC;

-- Query 3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4
SELECT DISTINCT status
FROM loan
ORDER BY 1 ASC;

-- Query 5
SELECT loan_id
FROM loan
ORDER BY amount DESC
LIMIT 1;

-- Query 6
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Query 7
SELECT account_id, amount
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Query 8
SELECT DISTINCT k_symbol
FROM `order`;

-- Query 9
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11
SELECT DISTINCT amount
FROM `order`
WHERE account_to = 30067122;

-- Query 12
SELECT trans_id, date, type, amount
FROM `trans`
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13
SELECT district_id, count(distinct client_id)
FROM `client`
WHERE district_id < 10
GROUP BY 1
ORDER BY district_id ASC;

-- Query 14
SELECT type, count(distinct card_id) as count_card
FROM `card`
GROUP BY 1
ORDER BY 2 DESC;

-- Query 15
SELECT account_id, sum(amount)
FROM `loan`
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Query 16
SELECT date, count(DISTINCT loan_id)
FROM `loan`
WHERE date < 930907
GROUP BY 1
ORDER BY 1 DESC;

-- Query 17
SELECT 
    DATE(date) AS loan_date, 
    duration, 
    COUNT(*) AS num_loans
FROM 
    loan
WHERE 
    DATE(date) BETWEEN '1997-12-01' AND '1998-01-01'
GROUP BY 1,2
ORDER BY 1 ASC, 2 ASC;

-- Query 18
SELECT type, sum(amount) as total_sum
FROM `trans`
WHERE account_id = 396
GROUP BY 1
ORDER BY 1;