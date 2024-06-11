CREATE TABLE ticket_sales (
  id SERIAL PRIMARY KEY,
  available BOOLEAN NOT NULL
);

-- insert data

INSERT INTO ticket_sales (available) VALUES
(TRUE),
(FALSE),
('t'),
('f'),
('true'),
('false'),
('y'),
('n'),
('yes'),
('no'),
('1'),
('0');

-- SELECT

SELECT * FROM ticket_sales;

DROP TABLE ticket_sales;
