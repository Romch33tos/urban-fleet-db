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
