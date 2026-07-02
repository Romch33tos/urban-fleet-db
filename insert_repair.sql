INSERT INTO repair (id, vehicle_id, repair_type, start_date, end_date, cost, status) 
VALUES (&1, &2, '&3', TO_DATE('&4', 'DD.MM.YYYY'), TO_DATE('&5', 'DD.MM.YYYY'), &6, '&7');