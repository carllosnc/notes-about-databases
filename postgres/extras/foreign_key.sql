DROP SCHEMA IF EXISTS test CASCADE;

CREATE SCHEMA IF NOT EXISTS test;

CREATE TABLE IF NOT EXISTS test.users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS test.cars (
    id SERIAL PRIMARY KEY,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    user_id BIGINT NOT NULL
);

ALTER TABLE test.cars
    ADD CONSTRAINT cars_user_id_fk
    FOREIGN KEY (user_id) REFERENCES test.users(id);

INSERT INTO test.users (name, email, password) VALUES ('John', 'john@example.com', 'password');

-- erro by constraint
/* INSERT INTO test.cars (make, model, year, user_id) VALUES ('Honda', 'Civic', 2019, 4); */

INSERT INTO test.cars (make, model, year, user_id) VALUES
  ('Honda', 'Civic', 2019, (SELECT id FROM test.users WHERE name = 'John'));

DROP SCHEMA IF EXISTS test CASCADE;

