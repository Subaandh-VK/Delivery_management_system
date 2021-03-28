-- Foreign Keys for order table
ALTER TABLE ONLY migrate.Orders
ADD CONSTRAINT fk_code_transporter FOREIGN KEY (code_transporter) REFERENCES migrate.transporter;


-- Foreign Keys for parcel table
ALTER TABLE ONLY migrate.Parcel
ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES migrate.Orders;

-- Foreign Keys for order_details table
ALTER TABLE ONLY migrate.Order_details
ADD CONSTRAINT fk_parcel_id FOREIGN KEY (parcel_id) REFERENCES migrate.Parcel;

-- Foreign Keys for parcel_tracker table

ALTER TABLE ONLY migrate.parcel_tracker
ADD CONSTRAINT fk_parcel_id FOREIGN KEY (parcel_id) REFERENCES migrate.parcel;
ALTER TABLE ONLY migrate.parcel_tracker
ADD CONSTRAINT fk_code_status_ref FOREIGN KEY (code_status_ref) REFERENCES migrate.status_manager;