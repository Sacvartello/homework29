CREATE TABLE users(
    id serial PRIMARY KEY,
    us_name varchar(100) NOT NULL CHECK(us_name != ''),
    us_surname varchar(100) NOT NULL,
    phone int CONSTRAINT phone_number CHECK(phone >= 1000),
    email varchar(300) UNIQUE NOT NULL
);

INSERT INTO users (us_name, us_surname, phone, email) VALUES
('us1', 'userovich1', 980775472, 'glikj'),
('us2', 'userovich2', 684876772, 'atejhfmncv'),
('us3', 'userovich3', 235775472, 'fyjzka');


CREATE TABLE books(
    id serial PRIMARY KEY,
    name varchar(256) NOT NULL CHECK(name != ''),
    author varchar(300) NOT NULL CHECK(name != ''),
    year date,
    pages int CHECK(pages >0),
    us_id int REFERENCES users(id),
    UNIQUE(name, author)
);
INSERT INTO books (name, author, year, pages, us_id) VALUES
('Bridge to Terabitiu', 'Katrin Paterson', '2005.05.12',170,1),
('Harry Potter and a Chamber of Secrets', 'J. K. Roling', '2001.01.11',560,1);