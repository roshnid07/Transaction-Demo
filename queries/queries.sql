CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(45) NOT NULL,
  `creationDate` datetime NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO test.customer
(customerId, customerName, creationDate)
VALUES(1, 'john', '2019-01-24 15:18:47.000');
INSERT INTO test.customer
(customerId, customerName, creationDate)
VALUES(2, 'steven', '2019-02-24 15:19:39.000');
INSERT INTO test.customer
(customerId, customerName, creationDate)
VALUES(3, 'charles', '2019-03-24 15:19:43.000');
INSERT INTO test.customer
(customerId, customerName, creationDate)
VALUES(4, 'james', '2019-04-24 15:19:45.000');

CREATE TABLE `transaction` (
  `transactionid` int(11) NOT NULL,
  `transactionamount` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `transactiondate` datetime NOT NULL,
  PRIMARY KEY (`transactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(1, 120, 1, '2019-06-14 15:28:24.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(101, 50, 1, '2019-06-15 15:29:39.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(102, 60, 1, '2019-06-18 15:29:44.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(103, 80, 1, '2019-07-24 15:29:55.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(104, 110, 1, '2019-07-12 15:29:58.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(105, 120, 1, '2019-07-24 15:30:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(106, 55, 1, '2019-08-01 15:30:04.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(107, 40, 1, '2019-08-09 15:30:07.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(108, 75, 1, '2019-08-24 15:30:09.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(109, 75, 1, '2019-08-24 15:31:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(201, 50, 2, '2019-06-15 15:29:39.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(202, 60, 2, '2019-06-18 15:29:44.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(203, 60, 2, '2019-07-24 15:29:55.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(204, 110, 2, '2019-07-12 15:29:58.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(205, 120, 2, '2019-07-24 15:30:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(206, 115, 2, '2019-08-01 15:30:04.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(207, 140, 2, '2019-08-09 15:30:07.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(208, 75, 2, '2019-08-24 15:30:09.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(209, 75, 2, '2019-08-24 15:31:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(301, 50, 3, '2019-06-15 15:29:39.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(302, 40, 3, '2019-06-18 15:29:44.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(303, 60, 3, '2019-07-24 15:29:55.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(304, 50, 3, '2019-07-12 15:29:58.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(305, 120, 3, '2019-07-24 15:30:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(306, 70, 3, '2019-08-01 15:30:04.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(307, 120, 3, '2019-08-09 15:30:07.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(308, 75, 3, '2019-08-24 15:30:09.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(309, 75, 3, '2019-08-24 15:31:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(401, 50, 4, '2019-06-15 15:29:39.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(402, 40, 4, '2019-06-18 15:29:44.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(403, 60, 4, '2019-07-24 15:29:55.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(404, 50, 4, '2019-07-12 15:29:58.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(405, 120, 4, '2019-07-24 15:30:00.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(406, 70, 4, '2019-08-01 15:30:04.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(407, 120, 4, '2019-08-09 15:30:07.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(408, 75, 4, '2019-08-24 15:30:09.000');
INSERT INTO test.`transaction`
(transactionid, transactionamount, customerid, transactiondate)
VALUES(409, 75, 4, '2019-08-24 15:31:00.000');
