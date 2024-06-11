DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS manager CASCADE;

--=====================

CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  zip_code VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE employee (
  salary INTEGER NOT NULL,
  department VARCHAR(255) NOT NULL,
  registration_number VARCHAR(255) NOT NULL,

  CONSTRAINT employee_salary_gt_zero CHECK (salary > 0)
) INHERITS (person);

CREATE TABLE manager (
  manager_id INTEGER NOT NULL,

  CONSTRAINT manager_manager_id_gt_zero CHECK (manager_id > 0)
) INHERITS (employee);

INSERT INTO manager (first_name, last_name, age, address, city, state, zip_code, phone, email, salary, department, registration_number, manager_id)
  VALUES
    ('John', 'Doe', 30, '123 Main St', 'New York', 'NY', '10001', '123-456-7890', 'john.doe@example.com', 10000, 'Sales', '12345', 10),
    ('Jane', 'Doe', 25, '456 Elm St', 'San Francisco', 'CA', '94107', '123-456-7890', 'jane.doe@example.com', 10000, 'Sales', '54321', 20),
    ('Bob', 'Smith', 35, '789 Oak St', 'Los Angeles', 'CA', '90003', '123-456-7890', 'bob.smith@example.com', 10000, 'Sales', '76543', 30),
    ('Joe', 'Bloggs', 45, '123 Oak St', 'Chicago', 'IL', '60606', '123-456-7890', 'joe.bloggs@example.com', 10000, 'Sales', '98765', 40);

SELECT first_name FROM manager;

--=====================

DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS manager CASCADE;
