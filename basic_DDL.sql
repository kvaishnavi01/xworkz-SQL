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

