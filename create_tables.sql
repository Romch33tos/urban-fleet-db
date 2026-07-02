CREATE TABLE division (
    id NUMBER(7) PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    type VARCHAR2(50),
    address VARCHAR2(200)
);

CREATE TABLE employee (
    id NUMBER(7) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    position VARCHAR2(100),
    driver_class VARCHAR2(20),
    division_id NUMBER(7),
    start_date DATE,
    manager_id NUMBER(7),
    CONSTRAINT fk_employee_division FOREIGN KEY (division_id) REFERENCES division(id),
    CONSTRAINT fk_employee_manager FOREIGN KEY (manager_id) REFERENCES employee(id)
);

CREATE TABLE vehicle (
    id NUMBER(7) PRIMARY KEY,
    brand VARCHAR2(50),
    model VARCHAR2(50),
    license_plate VARCHAR2(20) NOT NULL,
    vehicle_type VARCHAR2(30),
    division_id NUMBER(7),
    CONSTRAINT fk_vehicle_division FOREIGN KEY (division_id) REFERENCES division(id)
);

CREATE TABLE route (
    id NUMBER(7) PRIMARY KEY,
    route_number VARCHAR2(20) NOT NULL,
    start_point VARCHAR2(200),
    end_point VARCHAR2(200),
    distance NUMBER(10,2)
);

CREATE TABLE repair (
    id NUMBER(7) PRIMARY KEY,
    vehicle_id NUMBER(7) NOT NULL,
    repair_type VARCHAR2(100),
    start_date DATE,
    end_date DATE,
    cost NUMBER(12,2),
    status VARCHAR2(30),
    CONSTRAINT fk_repair_vehicle FOREIGN KEY (vehicle_id) REFERENCES vehicle(id)
);

CREATE TABLE statistic (
    id NUMBER(7) PRIMARY KEY,
    report_date DATE,
    period_type VARCHAR2(20),
    route_id NUMBER(7),
    total_passengers NUMBER(10),
    total_mileage NUMBER(10,2),
    repair_costs NUMBER(12,2),
    CONSTRAINT fk_statistic_route FOREIGN KEY (route_id) REFERENCES route(id)
);

CREATE TABLE assignment (
    id NUMBER(7) PRIMARY KEY,
    vehicle_id NUMBER(7) NOT NULL,
    route_id NUMBER(7) NOT NULL,
    driver_id NUMBER(7) NOT NULL,
    CONSTRAINT fk_assignment_vehicle FOREIGN KEY (vehicle_id) REFERENCES vehicle(id),
    CONSTRAINT fk_assignment_route FOREIGN KEY (route_id) REFERENCES route(id),
    CONSTRAINT fk_assignment_driver FOREIGN KEY (driver_id) REFERENCES employee(id)
);
