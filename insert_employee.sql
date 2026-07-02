INSERT INTO employee (id, first_name, last_name, position, driver_class, division_id, start_date, manager_id) 
VALUES (&1, '&2', '&3', '&4', '&5', &6, TO_DATE('&7', 'DD.MM.YYYY'), &8);