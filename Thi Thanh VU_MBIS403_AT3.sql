DROP DATABASE CIM7240_AT3;
CREATE DATABASE CIM7240_AT3;
USE CIM7240_AT3;
CREATE TABLE Publishers (
    publisherID INT PRIMARY KEY,
    publisherFirstName VARCHAR(50),
    publisherLastName VARCHAR(50),
    publisherPhoneNumber VARCHAR(15),
    publisherStreet VARCHAR(100),
    publisherSuburb VARCHAR(50),
    publisherState VARCHAR(50),
    publisherPostCode VARCHAR(10),
    publisherEmail VARCHAR(100));
INSERT INTO Publishers VALUES
(101, 'Karen', 'McDermott', '0400123456', '12 Ocean View', 'Perth', 'WA', '6000', 'karen@serenitypress.com'),
(102, 'Lisa', 'Messenger', '0400654321', '55 Creative St', 'Sydney', 'NSW', '2000', 'lisa@collectivehub.com'),
(103, 'Amra', 'Pajalic', '0400987123', '22 Inkstone St', 'Melbourne', 'VIC', '3000', 'amra@pishukinpress.com'),
(104, 'Anna', 'Featherstone', '0400789456', '10 Quill Lane', 'Byron Bay', 'NSW', '2481', 'anna@featherstone.com'),
(105, 'Sulari', 'Gentill', '0400432198', '88 Storybook Ave', 'Canberra', 'ACT', '2600', 'sulari@selfpub.com'),
(106, 'Angela', 'Slatter', '0400765432', '17 Raven Rd', 'Brisbane', 'QLD', '4000', 'angela@slatterbooks.com'),
(107, 'Kate', 'Foster', '0400123412', '45 Lighthouse Ct', 'Gold Coast', 'QLD', '4217', 'kate@fosterink.com'),
(108, 'Bec', 'Evans', '0400678945', '61 Willow Way', 'Hobart', 'TAS', '7000', 'bec@writerelease.com'),
(109, 'Joel', 'Naoum', '0400543210', '99 Editor St', 'Sydney', 'NSW', '2000', 'joel@criticalmass.com.au'),
(110, 'Ashley', 'Kalagian Blunt', '0400234567', '77 Creative Cres', 'Adelaide', 'SA', '5000', 'ashley@akbpress.com');
SELECT * FROM Publishers;
CREATE TABLE Officers (
    officerID INT PRIMARY KEY,
    officerFirstName VARCHAR(50),
    officerLastName VARCHAR(50),
    officerPhoneNumber VARCHAR(15),
    officerStreet VARCHAR(100),
    officerSuburb VARCHAR(50),
    officerState VARCHAR(50),
    officerPostCode VARCHAR(10),
    officerEmail VARCHAR(100));
INSERT INTO Officers VALUES
(201, 'James', 'Taylor', '0401000001', '10 Maple St', 'Sydney', 'NSW', '2000', 'james.taylor@bookorders.com'),
(202, 'Emily', 'Wong', '0401000002', '23 River Rd', 'Melbourne', 'VIC', '3000', 'emily.wong@literaryhq.com'),
(203, 'Daniel', 'Nguyen', '0401000003', '55 Elm Ave', 'Brisbane', 'QLD', '4000', 'daniel.nguyen@ordersystem.com'),
(204, 'Sophie', 'Brown', '0401000004', '78 Pine Lane', 'Perth', 'WA', '6000', 'sophie.brown@orderdesk.com'),
(205, 'Michael', 'Kaur', '0401000005', '12 Oak Street', 'Adelaide', 'SA', '5000', 'michael.kaur@distributionhub.com');

CREATE TABLE Members (
    memberID INT PRIMARY KEY,
    memberFirstName VARCHAR(50),
    memberLastName VARCHAR(50),
    memberPhoneNumber VARCHAR(15),
    memberStreet VARCHAR(100),
    memberSuburb VARCHAR(50),
    memberState VARCHAR(50),
    memberPostCode VARCHAR(10),
    memberEmail VARCHAR(100));
INSERT INTO Members VALUES
(301, 'Ava', 'Thompson', '0411000001', '101 Sunset Blvd', 'Sydney', 'NSW', '2000', 'ava.thompson@email.com'),
(302, 'Liam', 'Harris', '0411000002', '22 Riverbank Rd', 'Melbourne', 'VIC', '3000', 'liam.harris@email.com'),
(303, 'Mia', 'Johnson', '0411000003', '15 Breeze St', 'Brisbane', 'QLD', '4000', 'mia.johnson@email.com'),
(304, 'Noah', 'Lee', '0411000004', '89 Forest Ave', 'Perth', 'WA', '6000', 'noah.lee@email.com'),
(305, 'Grace', 'Clark', '0411000005', '34 Harbour Dr', 'Adelaide', 'SA', '5000', 'grace.clark@email.com'),
(306, 'Benjamin', 'Martin', '0411000006', '77 Cloud Way', 'Hobart', 'TAS', '7000', 'ben.martin@email.com'),
(307, 'Isla', 'Nguyen', '0411000007', '9 Ivy Crescent', 'Canberra', 'ACT', '2600', 'isla.nguyen@email.com'),
(308, 'Jack', 'Singh', '0411000008', '48 Flame Tree Ln', 'Darwin', 'NT', '0800', 'jack.singh@email.com');

CREATE TABLE Books (
    bookID INT PRIMARY KEY,
    bookTitle VARCHAR(100),
    bookSerialNumber VARCHAR(30),
    bookPrice DECIMAL(10,2),
    bookGenre VARCHAR(50),
    publisherID INT,
    FOREIGN KEY (publisherID) REFERENCES Publishers(publisherID));
INSERT INTO Books VALUES
(401, 'The Power of You', 'SP-001', 24.95, 'Self-Help', 101),
(402, 'Inspired Living', 'SP-002', 19.99, 'Motivational', 101),
(403, 'Daring & Disruptive', 'LM-001', 26.99, 'Business', 102),
(404, 'Life & Love', 'LM-002', 21.95, 'Motivational', 102),
(405, 'The Good Daughter', 'AP-001', 22.50, 'Thriller', 102),
(406, 'How to Self-Publish in Australia', 'AF-002', 29.95, 'Self-Help', 104),
(407, 'Crossing the Lines', 'SG-001', 24.95, 'Fiction', 105),
(408, 'After She Wrote Him', 'SG-002', 23.99, 'Thriller', 105),
(409, 'The Path of Thorns', 'AS-002', 24.50, 'Horror', 106),
(410, 'The Bravest Word', 'KF-001', 19.99, 'Fiction', 107),
(411, 'Digital Publishing Basics', 'JN-002', 23.50, 'Technology', 109),
(412, 'My Name Is Revenge', 'AKB-002', 20.99, 'Fiction', 110);

CREATE TABLE Orders (
    orderID INT PRIMARY KEY,
    orderDate DATE,
    publisherID INT,
    officerID INT,
    FOREIGN KEY (publisherID) REFERENCES Publishers(publisherID),
    FOREIGN KEY (officerID) REFERENCES Officers(officerID));
INSERT INTO Orders VALUES
(501, '2025-01-01', 101, 201),
(502, '2025-01-15', 102, 201),
(503, '2025-02-05', 104, 202),
(504, '2025-02-10', 105, 203),
(505, '2025-02-18', 106, 203),
(506, '2025-03-01', 107, 203),
(507, '2025-03-15', 109, 204),
(508, '2025-03-20', 110, 205);
INSERT INTO Orders Values
(509, '2025-04-01', 101,202);
select * from Orders;

CREATE TABLE OrderDetails (
    orderDetailID INT PRIMARY KEY,
    orderID INT,
    bookID INT,
    bookQuantity INT,
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (bookID) REFERENCES Books(bookID));
INSERT INTO OrderDetails VALUES
(601, 501, 401, 50),
(602, 501, 402, 30),
(603, 502, 403, 40),
(604, 502, 404, 20),
(605, 503, 406, 25),
(606, 504, 407, 30),
(607, 504, 408, 15),
(608, 505, 409, 20),
(609, 506, 410, 35),
(610, 507, 411, 40),
(611, 508, 412, 30);
INSERT INTO OrderDetails VALUES
(612, 509, 402, 20);
SELECT * FROM OrderDetails;

CREATE TABLE Invoices (
    invoiceID INT PRIMARY KEY,
    invoiceDate DATE,
    invoiceAmount DECIMAL(10,2),
    publisherID INT,
    FOREIGN KEY (publisherID) REFERENCES Publishers(publisherID));
INSERT INTO Invoices VALUES
(701, '2025-04-04', 2247.00, 101),
(702, '2025-01-15', 1518.60, 102),
(703, '2025-02-05', 748.75, 104),
(704, '2025-02-10', 1108.35, 105),
(705, '2025-02-18', 490.00, 106),
(706, '2025-03-01', 699.65, 107),
(707, '2025-03-15', 940.00, 109),
(708, '2025-03-20', 629.70, 110);


CREATE TABLE Carts (
    cartID INT PRIMARY KEY,
    cartDate DATE,
    cartStatus VARCHAR(50),
    memberID INT,
    FOREIGN KEY (memberID) REFERENCES Members(memberID));
INSERT INTO Carts VALUES
(801, '2025-04-01', 'Pending', 301),
(802, '2025-04-01', 'Completed', 302),
(803, '2025-04-02', 'Pending', 302),   
(804, '2025-04-03', 'Completed', 303),
(805, '2025-04-04', 'Pending', 304),
(806, '2025-04-05', 'Completed', 305),
(807, '2025-04-06', 'Pending', 307);
select * from Carts;

CREATE TABLE CartDetails (
    cartDetailID INT PRIMARY KEY,
    cartID INT,
    bookID INT,
    bookQuantity INT,
    FOREIGN KEY (cartID) REFERENCES Carts(cartID),
    FOREIGN KEY (bookID) REFERENCES Books(bookID));
INSERT INTO CartDetails VALUES
(901, 801, 401, 2),
(902, 801, 402, 1),
(903, 802, 403, 1),
(904, 803, 404, 2),
(905, 803, 405, 1),
(906, 804, 407, 1),
(907, 805, 409, 1),
(908, 805, 408, 1),
(909, 806, 410, 3),
(910, 807, 412, 2);

CREATE TABLE Receipts (
    receiptID INT PRIMARY KEY,
    cartID INT,
    totalPayment DECIMAL(10,2),
    dateOfPayment DATE,
    statusOfPayment VARCHAR(50));
INSERT INTO Receipts (receiptID, cartID, totalPayment, dateOfPayment, statusOfPayment) VALUES
(1001, 801, 69.89, '2025-03-25', 'Paid'),
(1002, 802, 26.99, '2025-03-26', 'Paid'),
(1003, 803, 66.40, '2025-03-27', 'Paid'),
(1004, 804, 24.95, '2025-03-28', 'Pending'),
(1005, 805, 48.49, '2025-03-29', 'Paid'),
(1006, 806, 59.97, '2025-03-30', 'Paid'),
(1007, 807, 41.98, '2025-04-01', 'Paid');

SELECT * FROM Books WHERE bookGenre = 'Fiction';

SELECT bookID, bookTitle FROM Books
WHERE bookID NOT IN (SELECT DISTINCT bookID FROM CartDetails);
SELECT b.bookID, b.bookTitle FROM Books b
LEFT JOIN CartDetails cd ON b.bookID=cd.bookID
WHERE cd.bookID IS NULL;


SELECT 
    m.memberID,
    c.cartID,
    COUNT(DISTINCT cd.bookID) AS NumberOfBooks,
	SUM(cd.bookQuantity) AS BookQuantity
FROM Members m
JOIN Carts c ON m.memberID = c.memberID
JOIN CartDetails cd ON c.cartID = cd.cartID
GROUP BY m.memberID, c.cartID
ORDER BY NumberOfBooks DESC, BookQuantity DESC;


SELECT DISTINCT o.officerID, o.officerFirstName, o.officerLastName
FROM Officers o
JOIN Orders ord ON o.officerID = ord.officerID
JOIN OrderDetails od ON ord.orderID = od.orderID
WHERE od.bookID = 402;

SELECT 
    p.publisherID,
    CONCAT(p.publisherFirstName, ' ', p.publisherLastName) AS PublisherName,
    COUNT(o.orderID) AS NumberOfOrders
FROM 
    Publishers p
JOIN 
    Orders o ON p.publisherID = o.publisherID
GROUP BY 
    p.publisherID, p.publisherFirstName, p.publisherLastName
HAVING 
    COUNT(o.orderID) > 1;






   