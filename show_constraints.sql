SELECT table_name, constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name IN ('DIVISION', 'EMPLOYEE', 'VEHICLE', 'ROUTE', 'REPAIR', 'STATISTIC', 'ASSIGNMENT')
ORDER BY table_name, constraint_name;