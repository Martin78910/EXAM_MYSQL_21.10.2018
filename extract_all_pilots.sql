SELECT c.id, CONCAT(first_name, ' ', last_name ) `full_name`
FROM colonists c
JOIN travel_cards tc
ON  c.id = tc.colonist_id  
WHERE job_during_journey = 'Pilot'
ORDER BY c.id ASC;

