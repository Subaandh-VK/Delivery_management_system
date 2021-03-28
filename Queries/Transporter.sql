create table migrate.transporter
(
    code  varchar(8) not null,
    labels varchar(50),
	PRIMARY KEY(code)
);

comment on table migrate.transporter is 'Transporters table';

alter table migrate.transporter
    owner to postgres;

INSERT INTO migrate.transporter (code, labels) VALUES ('BM', 'Brico');
INSERT INTO migrate.transporter (code, labels) VALUES ('LD', 'LDD Provider');
INSERT INTO migrate.transporter (code, labels) VALUES ('AF', 'Preparation');
INSERT INTO migrate.transporter (code, labels) VALUES ('AN', 'Order Cancellation');
INSERT INTO migrate.transporter (code, labels) VALUES ('CX', 'parcelSIMO EXPERT');
INSERT INTO migrate.transporter (code, labels) VALUES ('EN', 'Pickup');
INSERT INTO migrate.transporter (code, labels) VALUES ('HC', 'Messagerie BtC');
INSERT INTO migrate.transporter (code, labels) VALUES ('KF', 'KIALA France');
INSERT INTO migrate.transporter (code, labels) VALUES ('TA', 'TATEX');
INSERT INTO migrate.transporter (code, labels) VALUES ('TH', 'TATEX');
INSERT INTO migrate.transporter (code, labels) VALUES ('TN', 'TNT National');
INSERT INTO migrate.transporter (code, labels) VALUES ('ZA', 'Other (stats)');