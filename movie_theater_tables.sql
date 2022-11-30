-- Creating Tables

-- Create customer table
CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL
);

-- Create movie table
CREATE TABLE movie (
	movie_id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL
);

-- Create concession table
CREATE TABLE concession (
	concession_id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	description varchar(1000),
	calories integer
);

-- Create cart table
CREATE TABLE cart (
	cart_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id)
);

-- Create cart_item table
CREATE TABLE cart_item (
	cart_item_id serial PRIMARY KEY,
	cart_id integer REFERENCES cart(cart_id),
	concession_id integer REFERENCES concession(concession_id),
	quantity integer NOT NULL
);

-- Create ticket table
CREATE TABLE ticket (
	ticket_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id),
	movie_id integer REFERENCES	movie(movie_id),
	movie_quantity integer NOT NULL,
	cart_id integer REFERENCES cart(cart_id),
	price float NOT NULL
);