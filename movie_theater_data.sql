-- Inserting Data

-- Insert data into customer table
INSERT INTO customer (first_name, last_name)
VALUES
	('Dylan', 'Smith'),
	('John', 'Doe'),
	('Jane', 'Doe');

-- Insert data into movie table
INSERT INTO movie ("name")
VALUES 
	('Die Hard'),
	('Inception'),
	('Groundhog Day');
	
-- Insert data into concession table
INSERT INTO concession("name", description, calories)
VALUES
	('Skittles', 'Chewable fruit candies', '500'),
	('Popcorn', 'Salty, buttery, and popped corn', '800'),
	('Soda', 'Carbonated sugar drink', '400');
	
-- Insert data into cart table
INSERT INTO cart(customer_id)
VALUES
	(1),
	(2);

-- Insert data into cart_item table
INSERT INTO cart_item(cart_id, concession_id, quantity)
VALUES
	(1, 2, 1),
	(2, 1, 1),
	(2, 2, 1),
	(2, 3, 2);

-- Insert data into ticket table
INSERT INTO ticket(customer_id, movie_id, movie_quantity, cart_id, price)
VALUES
	(2, 2, 2, 2, 37.99),
	(1, 3, 1, 1, 10.99),
	(1, 1, 1, 1, 10.99),
	(2, 1, 2, 2, 37.99),
	(1, 2, 1, 1, 10.99),
	(2, 3, 2, 2, 37.99);
-- this dude got stuck in a loop and ended up watching groundhog day a bunch of times 
-- getting the same concessions over and over and over again
INSERT INTO ticket(customer_id, movie_id, movie_quantity, cart_id, price)
VALUES
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99),
	(1, 3, 1, 1, 10.99);
	
 