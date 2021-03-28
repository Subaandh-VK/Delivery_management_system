CREATE TABLE Customer (
	customer_id int NOT NULL,
	account_id int NOT NULL,
    c_name varchar(50),
	c_address varchar(50),
	c_dob date,
    PRIMARY KEY (customer_id)
);

comment on column Customer.c_name is 'Name of the customer';
comment on column Customer.c_address is 'Address of the customer';
comment on column Customer.c_dob is 'birthdate of the customer';

INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (1, 1, 'jack', 'paris', '1986-10-20 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (2, 2, 'jim', 'paris', '1986-1-22 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (3, 3, 'tom', 'paris', '1986-10-2 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (4, 4, 'tim', 'paris', '1986-10-20 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (5,5, 'rose', 'paris', '1986-10-20 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (6,6, 'kylie', 'paris', '1988-10-20 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (7,7, 'angelina', 'paris', '1999-10-20 14:41:10.000000');
INSERT INTO public.customer(customer_id, account_id, c_name, c_address, c_dob) VALUES (8,8, 'Kim', 'paris', '2006-10-20 14:41:10.000000');


CREATE TABLE Account (
	account_id int NOT NULL,
	customer_id int NOT NULL,
	order_id int NOT NULL,
    PRIMARY KEY (account_id)
);

INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (1,1,1);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (2,2,2);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (3,3,3);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (4,4,4);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (5,5,5);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (6,6,6);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (7,7,7);
INSERT INTO public.Account(account_id, customer_id, order_id) VALUES (8,8,8);

CREATE TABLE Orders (
	order_id int NOT NULL,
    account_id int NOT NULL,
	order_details_id int NOT NULL,
	parcel_id int NOT NULL,
	store_id int NOT NULL,
    o_state varchar(50),
	o_placed_date date,
	o_completion_date date,
	o_expected_date date,
    PRIMARY KEY (order_id)
);
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (1,1,1,1,1,'processed', '2020-10-20 14:41:10.000000', '2020-10-21 14:41:10.000000', '2020-10-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (2,2,2,2,2,'pending', '2020-05-20 14:41:10.000000', '2020-05-21 14:41:10.000000', '2020-05-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (3,3,3,3,3,'processed', '2020-11-20 14:41:10.000000', '2020-11-21 14:41:10.000000', '2020-11-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (4,4,4,4,4,'delivered', '2020-12-20 14:41:10.000000', '2020-12-21 14:41:10.000000', '2020-12-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (5,5,5,5,5,'pending', '2020-12-20 14:41:10.000000', '2020-12-21 14:41:10.000000', '2020-12-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (6,6,6,6,6,'processed', '2020-12-20 14:41:10.000000', '2020-12-21 14:41:10.000000', '2020-12-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (7,7,7,7,7,'delivered', '2020-12-20 14:41:10.000000', '2020-12-21 14:41:10.000000', '2020-12-28 14:41:10.000000');
INSERT INTO public.Orders(order_id, account_id, order_details_id, parcel_id, store_id, o_state, o_placed_date, o_completion_date, o_expected_date) VALUES (8,8,8,8,8,'pending', '2020-12-20 14:41:10.000000', '2020-12-21 14:41:10.000000', '2020-12-28 14:41:10.000000');
comment on column Orders.o_state is 'State of the order';
comment on column Orders.o_placed_date is 'Date when the order was placed';
comment on column Orders.o_completion_date is 'Orders competion date';
comment on column Orders.o_expected_date is 'Orders expected arrival date';

CREATE TABLE Order_details (
	order_details_id int NOT NULL,
	order_id int NOT NULL,
	article_id int NOT NULL,
	quantity int NOT NULL,
	price int NOT NULL,
	PRIMARY KEY (order_details_id)
);

INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (1,1,1,5,500);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (2,2,2,50,400);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (3,3,3,15,5000);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (4,4,4,25,6000);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (5,5,5,25,5000);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (6,6,6,25,500);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (7,7,7,25,4000);
INSERT INTO public.order_details(order_details_id, order_id, article_id, quantity, price) VALUES (8,8,8,25,200);

CREATE TABLE Article (
	order_details_id int NOT NULL,
	article_id int NOT NULL,
	supply_id int NOT NULL,
	category varchar(30),
	a_name varchar(30),
	price int NOT NULL,
	PRIMARY KEY (article_id)
);

comment on column Article.a_name is 'Name of the Article like Oven, Drier, Glass';

INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (1,1,1,'Tools', 'Hammer', 500);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (2,2,2,'Tools', 'Screw', 400);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (3,3,3,'TV', 'ELectronics', 5000);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (4,4,4,'Housefurnishing', 'Storage', 6000);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (5,5,5,'TV', 'ELectronics', 5000);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (6,6,6,'cupboard', 'Storage', 500);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (7,7,7,'Fridge', 'ELectronics', 4000);
INSERT INTO public.Article(order_details_id, article_id, supply_id, category, a_name, price) VALUES (8,8,8,'Hanger', 'Storage', 20);

CREATE TABLE Supply (
	supply_id int NOT NULL,
	article_id int NOT NULL,
	warehouse_id int NOT NULL,
	p_name varchar(30),
	PRIMARY KEY (supply_id)
);

comment on column Supply.p_name is 'Name of the provider';

INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (1,1,1,'VKS');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (2,2,2,'SSM');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (3,3,3,'ASD');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (4,4,4,'UPS');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (5,5,5,'VLK');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (6,6,6,'MKA');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (7,7,7,'KLM');
INSERT INTO public.Supply(supply_id, article_id, warehouse_id, p_name) VALUES (8,8,8,'UPS');

CREATE TABLE Warehouse (
	warehouse_id int NOT NULL,
	supply_id int NOT NULL,
	address varchar(100),
	PRIMARY KEY (warehouse_id)
);

INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (1,1,'Paris');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (2,2,'cachan Paris');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (3,3,'kremlin Paris');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (4,4,'villejuif Paris');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (5,5,'nantes');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (6,6,'cannes');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (7,7,'gare du nord Paris');
INSERT INTO public.Warehouse(warehouse_id, supply_id, address) VALUES (8,8,'nord Paris');

CREATE TABLE Parcel (
	parcel_id int NOT NULL,
	transporter_id int NOT NULL,
	p_state varchar(50),
	p_location varchar(50),
	PRIMARY KEY (parcel_id)
);

comment on column Parcel.p_state is 'Current state of the parcel';
comment on column Parcel.p_location is 'Current location of the parcel';

INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (1,1, 'In transit', 'cachan');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (2,2, 'In transit', 'saint michel');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (3,3, 'reached', 'paris');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (4,4, 'In transit', 'kremlin');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (5,5, 'Not picked up', 'villejuif');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (6,6, 'delivered', 'cachan');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (7,7, 'In transit', 'kremlin');
INSERT INTO public.Parcel(parcel_id, transporter_id, p_state, p_location) VALUES (8,8, 'In transit', 'gare du nord');

CREATE TABLE Transporter (
	parcel_id int NOT NULL,
	transporter_id int NOT NULL,
	t_name varchar(50),
	PRIMARY KEY (transporter_id)
);

comment on column Transporter.t_name is 'Name of the transporter';

INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (1,1,'BM');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (2,2,'AN');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (3,3,'SA');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (4,4,'SU');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (5,5,'KS');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (6,6,'VK');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (7,7,'LM');
INSERT INTO public.Transporter(parcel_id, transporter_id, t_name) VALUES (8,8,'KM');


CREATE TABLE Store (
	store_id int NOT NULL,
	order_id int NOT NULL,
	received_date date,
	store_address varchar(50),
	PRIMARY KEY (store_id)
);

INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (1,1,'2020-10-29 14:41:10.000000', 'Cachan');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (2,2,'2020-05-29 14:41:10.000000', 'paris');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (3,3,'2020-11-29 14:41:10.000000', 'kremlin');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (4,4,'2020-12-29 14:41:10.000000', 'gare du nord');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (5,5,'2020-12-29 14:41:10.000000', 'saint michel');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (6,6,'2020-12-29 14:41:10.000000', 'cite universite');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (7,7,'2020-12-29 14:41:10.000000', 'villejuif');
INSERT INTO public.Store(store_id, order_id, received_date, store_address) VALUES (8,8,'2020-12-29 14:41:10.000000', 'Cachan');
-- Foreign keys of Customer
ALTER TABLE ONLY CUSTOMER
ADD CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES Account;

-- Foreign Keys of Account
ALTER TABLE ONLY Account
ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES Orders;
ALTER TABLE ONLY Account
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES Customer;



-- Foreign Keys of Orders
ALTER TABLE ONLY Orders
ADD CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES Account;
ALTER TABLE ONLY Orders
ADD CONSTRAINT fk_order_details_id FOREIGN KEY (order_details_id) REFERENCES Order_details;
ALTER TABLE ONLY Orders
ADD CONSTRAINT fk_parcel_id FOREIGN KEY (parcel_id) REFERENCES Parcel;
ALTER TABLE ONLY Orders
ADD CONSTRAINT fk_store_id FOREIGN KEY (store_id) REFERENCES Store;

-- Foreign Key of order details
ALTER TABLE ONLY Order_details
ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES Orders;
ALTER TABLE ONLY Order_details
ADD CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES Article;

-- Foreign Keys of Article
ALTER TABLE ONLY Article
ADD CONSTRAINT fk_order_details_id FOREIGN KEY (order_details_id) REFERENCES Order_details;
ALTER TABLE ONLY Article
ADD CONSTRAINT fk_supply_id FOREIGN KEY (supply_id) REFERENCES Supply;


-- Foreign keys of Supply
ALTER TABLE ONLY Supply
ADD CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES Article;
ALTER TABLE ONLY Supply
ADD CONSTRAINT fk_warehouse_id FOREIGN KEY (warehouse_id) REFERENCES Warehouse;


--Transporter
ALTER TABLE ONLY Transporter
ADD CONSTRAINT fk_parcel_id FOREIGN KEY (parcel_id) REFERENCES Parcel;

--Store
ALTER TABLE ONLY Store
ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES Orders;