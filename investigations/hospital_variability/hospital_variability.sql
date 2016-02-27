SELECT measure_id, stddev_pop(score) AS stddev_score 
FROM effective_care_probs WHERE score < 100 AND score NOT IN ('Not Available') 
AND state NOT IN ('PR', 'VI') GROUP BY measure_id ORDER BY stddev_score DESC LIMIT 10;