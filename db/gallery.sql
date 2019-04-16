DROP TABLE assign;
DROP TABLE artists;
DROP TABLE exhibits;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  bio TEXT,
  photo TEXT,
  birth VARCHAR,
  death VARCHAR,
  nationality VARCHAR
);

CREATE TABLE exhibits (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  blurb TEXT,
  photo TEXT,
  room INT,
  run_start VARCHAR,
  run_end VARCHAR,
  visitor_type VARCHAR,
  category VARCHAR
);

CREATE TABLE assign (
  id SERIAL PRIMARY KEY,
  artist_id INT REFERENCES artists(id) ON DELETE CASCADE,
  exhibit_id INT REFERENCES exhibits(id) ON DELETE CASCADE
);
