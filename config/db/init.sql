-- Create schema
CREATE SCHEMA IF NOT EXISTS demo;

-- Grant privileges on schema to the application user
GRANT ALL ON SCHEMA demo TO postgres;

-- Set search_path at the DB level
ALTER DATABASE dashboard SET search_path TO demo, public;

-- Create tables
CREATE TABLE demo.user (
    id              SERIAL PRIMARY KEY,
    email           VARCHAR NOT NULL UNIQUE,
    is_active       BOOLEAN NOT NULL DEFAULT TRUE,
    is_superuser    BOOLEAN NOT NULL DEFAULT FALSE,
    full_name       VARCHAR,
    hashed_password VARCHAR NOT NULL
);

CREATE INDEX ix_user_email ON demo.user (email);

CREATE TABLE demo.item (
    id          SERIAL PRIMARY KEY,
    title       VARCHAR NOT NULL,
    description VARCHAR,
    owner_id    INTEGER,
    FOREIGN KEY(owner_id) REFERENCES demo.user (id)
);
