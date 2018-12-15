SELECT j.id id, p.name planet_name, sp.name spaceport_name, j.purpose journey_purpose
FROM journeys j
JOIN spaceports sp 
ON j.destination_spaceport_id = sp.id
JOIN planets p 
ON sp.planet_id = p.id
ORDER BY DATEDIFF(j.journey_end, j.journey_start)
LIMIT 1;



