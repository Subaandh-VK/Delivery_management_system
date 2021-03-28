CREATE TABLE migrate.Customer (
	customer_name varchar(50),
	customer_address varchar(50),
	PRIMARY KEY (customer_name)
);


INSERT INTO migrate.Customer (customer_name, customer_address) VALUES ('PATRIC', 'Paris,france');
INSERT INTO migrate.Customer (customer_name, customer_address) VALUES ('REMI D', 'kremlin,france');
INSERT INTO migrate.Customer (customer_name, customer_address) VALUES (' JEAN M', 'cachan,france');
INSERT INTO migrate.Customer (customer_name, customer_address) VALUES (' JEROME', 'Paris,france');
INSERT INTO migrate.Customer (customer_name, customer_address) VALUES (' LIONEL', 'Paris,france');