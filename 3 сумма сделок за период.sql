SELECT SUM(price_amount)
FROM acquisition
WHERE term_code = 'cash' and acquired_at BETWEEN '2011-01-01' AND '2013-12-31'