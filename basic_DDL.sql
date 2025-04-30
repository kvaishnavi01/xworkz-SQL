Create database Mall;
create database xworkz;
create database Store;
create database PUBG;

USE Store;
create table item_info(id int, item_name varchar(20), brand_name varchar(20), manufc_date varchar(10), epire_date varchar(20), type_info varchar(10), price int, quantity int, size varchar(10), weight int);

USE Mall;
create table store_info(id int, owner_name varchar(20), shop_type varchar(10), owner_mail varchar(20), monthly_income bigint, area int, owner_number bigint, floor_no int, GSTIN int, rent int);

USE xworkz;
create table batch_info(id int, no_intern varchar(10), trainer_mail varchar(20), trainer_name varchar(20), areasqr int, batch_name bigint, floor_no int, trainer_number bigint, hours int, course_name varchar(15));

USE  PUBG;
create table match_info(match_id int, no_players int, map_name varchar(10), server_name varchar(10), match_type varchar(10), winner_name varchar(10), event_name varchar(10), difficulty_level int, no_drops int, duration int);

drop database Store;
Create database Store;
use Store;
create table match_info(match_id int, no_players int, map_name varchar(10), server_name varchar(10), match_type varchar(10), winner_name varchar(10), event_name varchar(10), difficulty_level int, no_drops int, duration int);

DROP DATABASE PUBG;
CREATE DATABASE PUBG;
USE PUBG;
create table match_info(match_id int, no_players int, map_name varchar(10), server_name varchar(10), match_type varchar(10), winner_name varchar(10), event_name varchar(10), difficulty_level int, no_drops int, duration int);


CREATE TABLE Customers (customer_id INT, first_name VARCHAR(50), last_name VARCHAR(50), gender VARCHAR(10), age INT, email VARCHAR(100), phone_number VARCHAR(15), membership_level VARCHAR(20), address TEXT, joined_date DATE);
CREATE TABLE Employees (employee_id INT , first_name VARCHAR(50), last_name VARCHAR(50), emp_role VARCHAR(50), salary INT, email VARCHAR(100), phone_number VARCHAR(15), hire_date varchar(10), store_id INT, EMP_status VARCHAR(20));
CREATE TABLE Products (product_id INT , product_name VARCHAR(100), brand VARCHAR(50), price INT, stock INT, category VARCHAR(50), discount_percent DECIMAL(5,2), store_name INT, manufacture_date VARCHAR(10), expiry_date VARCHAR(10));
CREATE TABLE Orders (order_id INT , customer_NAME VARCHAR(15), product VARCHAR(20), quantity INT, total_amount INT, order_date VARCHAR(10), payment_method VARCHAR(20), order_status VARCHAR(20), store INT, delivery_date VARCHAR(10));


ALTER TABLE Customers ADD nationality VARCHAR(30), ADD loyalty_points INT, ADD dob VARCHAR(20), ADD occupation VARCHAR(50);
ALTER TABLE Employees ADD department VARCHAR(50), ADD shift VARCHAR(20), ADD dob VARCHAR(20), ADD bonus INT;
ALTER TABLE Products ADD origin_country VARCHAR(50), ADD rating VARCHAR(10), ADD supplier_name VARCHAR(100), ADD is_available VARCHAR(5);
ALTER TABLE Orders ADD shipping_address VARCHAR(100), ADD is_paid VARCHAR(5), ADD tracking_id VARCHAR(50), ADD feedback VARCHAR(100);
ALTER TABLE store_info ADD opening_hour VARCHAR(10), ADD closing_hour VARCHAR(10), ADD store_rating VARCHAR(10), ADD security_available VARCHAR(5);


ALTER TABLE Customers DROP COLUMN address;
ALTER TABLE Employees DROP COLUMN EMP_status;
ALTER TABLE Products DROP COLUMN stock;
ALTER TABLE Orders DROP COLUMN customer_NAME;
ALTER TABLE store_info DROP COLUMN GSTIN;


ALTER TABLE Customers RENAME COLUMN first_name TO fname, RENAME COLUMN last_name TO lname, RENAME COLUMN phone_number TO contact, RENAME COLUMN joined_date TO reg_date;
ALTER TABLE Employees RENAME COLUMN first_name TO fname, RENAME COLUMN last_name TO lname, RENAME COLUMN emp_role TO Erole, RENAME COLUMN salary TO monthly_salary;
ALTER TABLE Products RENAME COLUMN product_name TO pname, RENAME COLUMN brand TO brand_name, RENAME COLUMN store_name TO store_id, RENAME COLUMN price TO cost;
ALTER TABLE Orders RENAME COLUMN product TO product_name, RENAME COLUMN store TO store_id, RENAME COLUMN total_amount TO amount, RENAME COLUMN order_status TO ord_status;
ALTER TABLE store_info RENAME COLUMN owner_name TO name, RENAME COLUMN shop_type TO type, RENAME COLUMN area TO sqft, RENAME COLUMN rent TO monthly_rent;


ALTER TABLE Customers MODIFY age INT, MODIFY email VARCHAR(150), MODIFY gender VARCHAR(10), MODIFY reg_date VARCHAR(20);
ALTER TABLE Employees MODIFY monthly_salary INT, MODIFY email VARCHAR(150), MODIFY hire_date VARCHAR(20), MODIFY dob VARCHAR(20);
ALTER TABLE Products MODIFY cost INT, MODIFY rating VARCHAR(10), MODIFY manufacture_date VARCHAR(20), MODIFY expiry_date VARCHAR(20);
ALTER TABLE Orders MODIFY order_date VARCHAR(20), MODIFY delivery_date VARCHAR(20), MODIFY amount INT, MODIFY status VARCHAR(30);
ALTER TABLE store_info MODIFY owner_mail VARCHAR(100), MODIFY monthly_income INT, MODIFY floor_no INT, MODIFY monthly_rent INT;

INSERT INTO Customers (customer_id, fname, lname, gender, age, email, contact, membership_level, reg_date, nationality, loyalty_points, dob, occupation)
VALUES
(21, 'Ravi', 'Kumar', 'Male', 30, 'ravi.kumar@example.com', '9876543210', 'Gold', '2023-01-15', 'Indian', 1500, '1993-05-20', 'Engineer'),
(22, 'Anjali', 'Sharma', 'Female', 28, 'anjali.sharma@example.com', '9876543211', 'Silver', '2023-02-10', 'Indian', 1200, '1995-07-12', 'Designer'),
(23, 'Vikram', 'Singh', 'Male', 35, 'vikram.singh@example.com', '9876543212', 'Platinum', '2023-03-05', 'Indian', 2000, '1988-03-18', 'Manager'),
(24, 'Priya', 'Mehta', 'Female', 26, 'priya.mehta@example.com', '9876543213', 'Gold', '2023-04-22', 'Indian', 1600, '1997-11-30', 'Analyst'),
(25, 'Amit', 'Patel', 'Male', 32, 'amit.patel@example.com', '9876543214', 'Silver', '2023-05-18', 'Indian', 1300, '1991-09-25', 'Consultant');


INSERT INTO Employees (
  employee_id, fname, lname, Erole, monthly_salary, email, phone_number, hire_date,
  store_id, department, shift, dob, bonus
) 
VALUES
(101, 'Suresh', 'Reddy', 'Manager', 60000, 'suresh.reddy@example.com', '9876543215', '2022-06-01', 1, 'Sales', 'Morning', '1985-04-10', 5000),
(102, 'Neha', 'Verma', 'Cashier', 30000, 'neha.verma@example.com', '9876543216', '2022-07-15', 2, 'Finance', 'Evening', '1990-08-22', 3000),
(103, 'Arjun', 'Kapoor', 'Stock Manager', 40000, 'arjun.kapoor@example.com', '9876543217', '2022-08-20', 3, 'Inventory', 'Night', '1988-12-05', 4000),
(104, 'Sneha', 'Gupta', 'Sales Executive', 35000, 'sneha.gupta@example.com', '9876543218', '2022-09-10', 4, 'Sales', 'Morning', '1992-03-14', 3500),
(105, 'Rahul', 'Joshi', 'HR', 45000, 'rahul.joshi@example.com', '9876543219', '2022-10-05', 5, 'Human Resources', 'Evening', '1987-06-30', 4500);


INSERT INTO Products (product_id, pname, brand_name, cost, category, discount_percent, store_id, manufacture_date, expiry_date, origin_country, rating, supplier_name, is_available)
VALUES
(201, 'Laptop', 'Dell', 70000, 'Electronics', 10.00, 1, '2023-01-10', '2025-01-10', 'USA', '4.5', 'Tech Supplies Inc.', 'Yes'),
(202, 'Smartphone', 'Samsung', 50000, 'Electronics', 8.00, 2, '2023-02-15', '2025-02-15', 'South Korea', '4.6', 'Mobile World Ltd.', 'Yes'),
(203, 'Refrigerator', 'LG', 30000, 'Appliances', 12.00, 3, '2023-03-20', '2028-03-20', 'India', '4.4', 'Home Appliances Co.', 'Yes'),
(204, 'Washing Machine', 'Whirlpool', 25000, 'Appliances', 15.00, 4, '2023-04-25', '2028-04-25', 'USA', '4.3', 'Appliance Mart', 'Yes'),
(205, 'Microwave Oven', 'Panasonic', 15000, 'Appliances', 10.00, 5, '2023-05-30', '2028-05-30', 'Japan', '4.7', 'Kitchen Solutions', 'Yes');

INSERT INTO Orders (order_id, product_name, quantity, amount, order_date, payment_method, ord_status, store_id, delivery_date, shipping_address, is_paid, tracking_id, feedback)
VALUES
(301, 'Laptop', 1, 63000, '2023-06-01', 'Credit Card', 'Delivered', 1, '2023-06-05', '123 Main St, Bengaluru', 'Yes', 'TRK123456', 'Excellent service'),
(302, 'Smartphone', 2, 92000, '2023-06-10', 'Debit Card', 'Shipped', 2, '2023-06-15', '456 Park Ave, Bengaluru', 'Yes', 'TRK123457', 'Fast delivery'),
(303, 'Refrigerator', 1, 26400, '2023-06-15', 'Net Banking', 'Processing', 3, '2023-06-20', '789 Lake Rd, Bengaluru', 'No', 'TRK123458', 'Awaiting delivery'),
(304, 'Washing Machine', 1, 21250, '2023-06-20', 'UPI', 'Cancelled', 4, '2023-06-25', '321 Hill St, Bengaluru', 'No', 'TRK123459', 'Order cancelled'),
(305, 'Microwave Oven', 3, 40500, '2023-06-25', 'Cash on Delivery', 'Delivered', 5, '2023-06-30', '654 River Rd, Bengaluru', 'Yes', 'TRK123460', 'Very satisfied');


INSERT INTO store_info (
  id, name, type, owner_mail, monthly_income, sqft, owner_number, floor_no,
  monthly_rent, opening_hour, closing_hour, store_rating, security_available
)
VALUES
(1, 'Tech Store', 'Electronics', 'owner1@techstore.com', 500000, 2000, 9876543220, 1, 25000, '09:00', '21:00', '4.5', 'Yes'),
(2, 'Home Needs', 'Appliances', 'owner2@homeneeds.com', 400000, 1800, 9876543221, 2, 20000, '10:00', '22:00', '4.6', 'Yes'),
(3, 'Gadget World', 'Electronics', 'owner3@gadgetworld.com', 600000, 2200, 9876543222, 3, 30000, '09:30', '21:30', '4.7', 'Yes'),
(4, 'Appliance Hub', 'Appliances', 'owner4@appliancehub.com', 450000, 1900, 9876543223, 4, 22000, '10:00', '22:00', '4.4', 'Yes'),
(5, 'Kitchen Corner', 'Appliances', 'owner5@kitchencorner.com', 350000, 1700, 9876543224, 5, 18000, '10:30', '21:00', '4.3', 'Yes');


