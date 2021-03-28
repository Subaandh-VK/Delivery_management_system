CREATE TABLE migrate.Store (
	num_pos          varchar(10)  not null,
    n_tracking_um    varchar(40) not null,
    in_date          timestamp,
    out_date         timestamp,
    parcel_processed boolean,
    PRIMARY KEY (num_pos, n_tracking_um)
);

INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '154021050000100005', '2013-04-22 16:15:13.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '130505260000100003', '2013-04-25 12:39:36.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '151036010000100005', '2013-04-26 10:50:16.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '154626050000100000', '2013-05-17 09:38:12.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '330727210000000250', '2013-05-23 10:29:17.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('01864', '8V98553949778', '2013-05-27 15:10:15.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '330727200000000258', '2013-06-24 12:27:31.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '12133214869222', '2013-07-04 12:47:23.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '123123123123123123', '2013-10-28 15:08:05.000000', null, null);
INSERT INTO migrate.Store (num_pos, n_tracking_um, in_date, out_date, parcel_processed) VALUES ('20119', '18', '2014-02-03 16:09:26.000000', null, null);