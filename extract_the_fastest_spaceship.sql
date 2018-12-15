SELECT ship.name spaceship_name, port.name spaceport_name
FROM spaceships ship
JOIN journeys j on ship.id = j.spaceship_id
JOIN spaceports port ON j.destination_spaceport_id = port.id
ORDER BY ship.light_speed_rate DESC LIMIT 1;