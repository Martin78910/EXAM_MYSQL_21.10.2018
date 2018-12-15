INSERT INTO travel_cards(card_number, job_during_journey, colonist_id, journey_id)
    SELECT
      (
        CASE
          WHEN c.birth_date > '1980-01-01' THEN concat_ws('', year(c.birth_date), day(c.birth_date), substr(c.ucn, 1, 4))
          ELSE concat_ws('', year(c.birth_date), month(c.birth_date), substr(c.ucn, 7, 10))
        END
      ) AS card_number,
      (
        CASE
          WHEN c.id % 2 = 0 THEN 'Pilot'
          WHEN c.id % 3 = 0 THEN 'Cook'
          ELSE 'Engineer'
        END
      ) AS job_during_journey,
      c.id,
      (
        substr(c.ucn, 1,1)
      ) AS journey_id
    FROM colonists c
    WHERE c.id between 96 AND 100;
