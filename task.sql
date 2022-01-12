SELECT adverts.category_name, AVG(costs.cost) 
FROM adverts 
INNER JOIN costs 
ON adverts.advert_id=costs.advert_id 
GROUP BY adverts.category_name