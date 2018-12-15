SELECT count(c.id) count
FROM colonists c
JOIN travel_cards tc
ON  c.id = tc.colonist_id
JOIN journeys j
ON tc.journey_id = j.id  
WHERE purpose = 'Technical';


