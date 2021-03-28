CREATE TABLE migrate.Status_manager (
    status_id integer  not null,
    code_sit        smallint not null,
    code_just       smallint not null,
    label_sit       varchar(50),
    label_just      varchar(50),
	PRIMARY KEY (status_id)
);

ALTER TABLE ONLY migrate.status_manager
RENAME COLUMN label_sit TO delivery_comments;

ALTER TABLE ONLY migrate.status_manager
RENAME COLUMN label_just TO status;

UPDATE migrate.status_manager
SET status = 'Claimed'
where status_id >= 1;

UPDATE migrate.status_manager
SET status = 'Unclaimed'
where status_id >= 50;

UPDATE migrate.status_manager
SET delivery_comments = 'Delivered to customer'
where status_id >= 10 and status_id <= 20 or status='claimed';

UPDATE migrate.status_manager
SET delivery_comments = 'Not Delivered the customer wants refund'
where status_id >= 20 and status_id <= 30 or status = 'Unclaimed';

UPDATE migrate.status_manager
SET delivery_comments = 'Not Delivered the customer wants exchange'
where status_id >= 30 or status = 'Unclaimed';

INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (71, 140, 220, 'delivery au customer', 'RÃ©serve customer');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (82, 160, 410, 'not delivered', 'product missing');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (83, 160, 420, 'not delivered', 'product degraded');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (84, 160, 510, 'not delivered', 'NPAI');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (85, 160, 520, 'not delivered', 'recipient absent');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (86, 160, 530, 'not delivered', 'refusal customer');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (61, 150, 320, 'Do not deliver to customer', 'parcel not compliant (degraded)');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (22, 110, 330, 'Handling logistic BM - GaranciÃ¨res', 'parcel exceeding');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (25, 120, 330, 'Handling logistic BM - Anais', 'parcel exceeding');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (28, 120, 330, 'Handling logistic BM - Albon', 'parcel exceeding');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (21, 110, 320, 'Handling logistic BM - GaranciÃ¨res', 'parcel degraded');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (24, 120, 320, 'Handling logistic BM - Anais', 'parcel degraded');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (27, 120, 320, 'Handling logistic BM - Albon', 'parcel degraded');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (72, 140, 320, 'delivery to customer', 'parcel degraded');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (80, 160, 230, 'not delivered', 'Litige customer');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (81, 160, 320, 'not delivered', 'parcel degraded');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (87, 160, 540, 'not delivered', 'not withdrawn');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (15, 100, 100, 'Handling fournisseur', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (20, 110, 100, 'Handling logistic BM - GaranciÃ¨res', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (23, 120, 100, 'Handling logistic BM - Anais', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (26, 120, 100, 'Handling logistic BM - Albon', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (50, 130, 100, 'Handling pos', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (60, 150, 100, 'deliverede au customer', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (70, 140, 100, 'delivery au customer', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (10, 100, 100, 'Sending order', 'parcel compliant');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (51, 120, 320, 'Handling pos parcel degraded', 'do not give to customer');
INSERT INTO migrate.Status_manager (status_id, code_sit, code_just, label_sit, label_just) VALUES (52, 120, 330, 'Handling pos parcel en exceeding', 'do not give to customer');