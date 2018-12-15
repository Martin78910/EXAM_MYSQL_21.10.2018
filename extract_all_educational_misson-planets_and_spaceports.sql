SELECT p.name planet_name, sp.name spaceport_name
FROM planets p
JOIN spaceports sp
on p.id = sp.planet_id
JOIN journeys j on sp.id = j.destination_spaceport_id
WHERE j.purpose = 'Educational'
ORDER BY spaceport_name DESC ;