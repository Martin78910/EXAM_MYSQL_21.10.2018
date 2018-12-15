SELECT pl.planet_name, count(pl.planet_name) journeys_count
FROM (
        SELECT p.name planet_name
        FROM planets p
        JOIN spaceports sp
        on p.id = sp.planet_id
        JOIN journeys j
        on sp.id = j.destination_spaceport_id
     ) pl
GROUP BY planet_name
ORDER BY journeys_count DESC, planet_name;
