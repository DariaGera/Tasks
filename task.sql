SELECT table1.category_name
FROM
(SELECT adverts.category_name, AVG(costs.cost) as avg_cost
FROM adverts 
INNER JOIN costs 
ON adverts.advert_id=costs.advert_id 
GROUP BY adverts.category_name) as table1
WHERE table1.avg_cost < 500
