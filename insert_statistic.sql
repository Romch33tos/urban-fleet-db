INSERT INTO statistic (id, report_date, period_type, route_id, total_passengers, total_mileage, repair_costs) 
VALUES (&1, TO_DATE('&2', 'DD.MM.YYYY'), '&3', &4, &5, &6, &7);