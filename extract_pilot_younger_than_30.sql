SELECT s.name, s.manufacturer
FROM colonists c
JOIN travel_cards tc
ON tc.colonist_id = c.id
JOIN journeys j
on tc.journey_id = j.id
JOIN spaceships s
on j.spaceship_id = s.id
WHERE year(c.birth_date) > year(DATE_SUB('2019-01-01', INTERVAL 30 YEAR)) and tc.job_during_journey = 'Pilot'
ORDER BY s.name;