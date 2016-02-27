SELECT state, AVG(score) AS avg_score, stddev_pop(score) AS stddev_score 
FROM effective_care_probs WHERE score < 100 AND score NOT IN ('Not Available') 
AND state NOT IN ('PR', 'VI') GROUP BY state ORDER BY avg_score DESC, stddev_score ASC LIMIT 10;