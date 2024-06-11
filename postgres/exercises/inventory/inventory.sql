CREATE TABLE salesmen(
  salesman_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  city VARCHAR(30) NOT NULL,
  comission NUMERIC(3,2) NOT NULL
);

CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  city VARCHAR(30) NOT NULL,
  grade NUMERIC(3) NOT NULL,
  salesman_id BIGINT NOT NULL
);

CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  purch_atm NUMERIC(8, 2),
  ord_date DATE,
  customer_id BIGINT NOT NULL,
  salesman_id BIGINT NOT NULL
);

-- add foreign key

ALTER TABLE customers
ADD CONSTRAINT fk_salesman_id FOREIGN KEY(salesman_id) REFERENCES salesmen(salesman_id);

ALTER TABLE orders
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_salesman_id FOREIGN KEY(salesman_id) REFERENCES salesmen(salesman_id);

-- adding data

INSERT INTO salesmen(name, city, comission) VALUES
  ('Isobel', 'West Ephraimport', 2.12),
  ('Emmitt', 'West Jordanefurt', 2.12),
  ('Cedrick', 'Norvalton', 2.12),
  ('Nicole', 'Port Tony', 2.12),
  ('Schuyler', 'East Mac', 2.12),
  ('Carlee', 'Lake Ole', 2.12),
  ('Gia', 'Ibrahimborough', 2.12),
  ('Randal', 'Fabianland', 2.12),
  ('Olaf', 'West Hazelfurt', 2.12),
  ('Xzavier', 'South Andresville', 2.12),
  ('Ari', 'Boston', 2.12);

--- select

SELECT salesman_id FROM salesmen;

-- ==========================================

DROP TABLE IF EXISTS salesmen, customers, orders;
