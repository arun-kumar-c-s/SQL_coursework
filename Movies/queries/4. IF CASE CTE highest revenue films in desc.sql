# Calculated columns or derived columns
# Take 1 USD = 80 INR

with cte as (select *, 
IF(currency='USD', revenue*80, revenue) as revenue_inr
from moviesdb.financials)

select *,
CASE 
	WHEN unit = 'thousands' THEN revenue_inr/1000
    WHEN unit = 'billions' THEN revenue_inr*1000
	WHEN unit = 'millions' THEN revenue_inr
END as revenue_million 
FROM cte
ORDER BY revenue_million DESC;

# IF(condition, true_output, false_output)