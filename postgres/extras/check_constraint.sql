DROP SCHEMA IF EXISTS test CASCADE;

CREATE SCHEMA IF NOT EXISTS test;

CREATE TABLE test.cars (
    id SERIAL PRIMARY KEY,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT color_check CHECK (color IN ('red', 'blue', 'green'))
);

INSERT INTO test.cars (make, model, year, color) VALUES ('Honda', 'Civic', 2019, 'black');

DROP SCHEMA IF EXISTS test CASCADE;
