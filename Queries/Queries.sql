-- a.	Give the total number of arrived orders in a Point of Sale 
select COUNT(1) from migrate.parcel_tracker as parcel
where parcel.date_pos_status is not NULL;


-- b.	Give the total number of arrived orders for one specific customer
select migrate.parcel_tracker.parcel_id, migrate.parcel.order_id, migrate.Orders.customer_name from migrate.parcel_tracker
INNER JOIN migrate.parcel 
	on migrate.parcel_tracker.parcel_id = migrate.parcel.parcel_id
	and migrate.parcel_tracker.date_pos_status is not NULL
	
INNER JOIN migrate.orders 
	on migrate.parcel.order_id = migrate.orders.order_id 
	and migrate.orders.customer_name = 'MR PATR'; 

select migrate.orders.customer_name, COUNT(1) from migrate.parcel_tracker
INNER JOIN migrate.parcel 
	on migrate.parcel_tracker.parcel_id = migrate.parcel.parcel_id
	and migrate.parcel_tracker.date_pos_status is not NULL
	
INNER JOIN migrate.orders 
	on migrate.parcel.order_id = migrate.orders.order_id 
	and migrate.orders.customer_name = 'Jack'
	GROUP BY migrate.orders.customer_name;

-- 2. Customer Order pickup
-- a.	Build a search query that will be able to look for customer orders by date, name, or article 
select * from migrate.Orders
where migrate.orders.customer_name = 'MR PATR';

select * from migrate.Orders
where migrate.orders.date_cre = '2013-07-17 16:16:31';

select migrate.order_details.order_details_id, migrate.order_details.article_name,migrate.order_details.category from migrate.Order_details
where migrate.order_details.article_name = 'Hammer';


-- b.	Build a search query that can take at least 2 of the parameters cited in the previous question, 
--leaving the other search parameters optional 

-- Date & Name
select * from migrate.Orders
where migrate.orders.date_cre = '2013-07-17 16:16:31'
and migrate.orders.customer_name = 'MR PATR'

-- Date & Article
select migrate.order_details.order_details_id, migrate.order_details.parcel_id, migrate.order_details.article_name,migrate.parcel.order_id, migrate.Orders.order_id, migrate.Orders.customer_name, migrate.Orders.date_cre from migrate.Order_details
INNER JOIN migrate.parcel on migrate.order_details.parcel_id = migrate.parcel.parcel_id
and migrate.order_details.article_name = 'Cement'
INNER JOIN migrate.Orders on migrate.parcel.order_id = migrate.Orders.order_id
and migrate.Orders.date_cre = '2013-06-25 19:20:04';


-- Name & Article
select migrate.order_details.order_details_id, migrate.order_details.parcel_id, migrate.order_details.article_name,migrate.parcel.order_id, migrate.Orders.order_id, migrate.Orders.customer_name, migrate.Orders.date_cre from migrate.Order_details
INNER JOIN migrate.parcel on migrate.order_details.parcel_id = migrate.parcel.parcel_id
and migrate.order_details.article_name = 'Hammer'
INNER JOIN migrate.Orders on migrate.parcel.order_id = migrate.Orders.order_id
and migrate.Orders.customer_name = ' BRICOM';


-- Combination of two

select migrate.order_details.order_details_id, migrate.order_details.parcel_id, migrate.order_details.article_name,migrate.parcel.order_id, migrate.Orders.order_id, migrate.Orders.customer_name, migrate.Orders.date_cre from migrate.Order_details
INNER JOIN migrate.parcel on migrate.order_details.parcel_id = migrate.parcel.parcel_id
INNER JOIN migrate.Orders on migrate.parcel.order_id = migrate.Orders.order_id
where (migrate.order_details.article_name = 'Hammer')
and (migrate.Orders.date_cre = '2013-05-16 15:56:00')
and (migrate.Orders.customer_name = ' BRICOM');


-- c.	For a specific customer, display the list of orders with the following information :
--	Parcel number (Parcel)
--	Order number (Parcel)
--	Customer name (Orders)
--	Last Status Date (arrival date) (Orders)
--	Parcel Status (Parcel_tracker)

select migrate.parcel.n_tracking_um , migrate.Orders.order_id,migrate.Orders.num_cde_om, migrate.Orders.customer_name,migrate.status_manager.status, migrate.orders.date_delivery_expected from migrate.parcel_tracker as pt
INNER JOIN migrate.status_manager on pt.code_status_ref = status_manager.status_id
INNER JOIN migrate.parcel on pt.parcel_id = migrate.parcel.parcel_id
INNER JOIN migrate.Orders on migrate.parcel.order_id = migrate.Orders.order_id
and migrate.orders.customer_name = ' BRICOM';

-- d.	For a selected order: update the order with a text comment and a status with a value option among :
--	Delivered to customer.
--	Not delivered, to customer wants an item exchange.
--	Not delivered, the customer wants a refund.

select migrate.parcel.order_id, migrate.status_manager.delivery_comments, migrate.status_manager.status from migrate.parcel_tracker as pt
INNER JOIN migrate.status_manager on pt.code_status_ref = status_manager.status_id
INNER JOIN migrate.parcel on pt.parcel_id = migrate.parcel.parcel_id
and migrate.parcel.order_id = 9;

-- a.	Find all the unclaimed orders, although they arrived in the PoS. Restrict the list for orders arrivals older than 30 days.
select * from migrate.parcel_tracker as parcel
LEFT JOIN migrate.order_details on migrate.order_details.parcel_id = parcel.parcel_id
where DATE(migrate.order_details.date_cre) is not null
and DATE(parcel.date_pos_status) - DATE(migrate.order_details.date_cre) >= 30;

-- b.	Calculate the 3 categories the most affected by unclaimed orders
select COUNT(migrate.order_details.category), migrate.order_details.category from migrate.parcel_tracker as pt
INNER JOIN migrate.order_details on pt.parcel_id = migrate.order_details.parcel_id
INNER JOIN migrate.status_manager on pt.code_status_ref = migrate.status_manager.status_id
and migrate.status_manager.status = 'Unclaimed'
GROUP BY migrate.order_details.category
ORDER BY COUNT DESC
limit 3;

-- c. Calculate the overall cost of unclaimed orders
select sum(migrate.order_details.total_price) from migrate.parcel_tracker as pt
INNER JOIN migrate.order_details on pt.parcel_id = migrate.order_details.parcel_id
INNER JOIN migrate.status_manager on pt.code_status_ref = migrate.status_manager.status_id
and migrate.status_manager.status = 'Unclaimed';












