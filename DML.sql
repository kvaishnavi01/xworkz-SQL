CREATE DATABASE TRANSPORTATION;
USE TRANSPORTATION;

CREATE TABLE airlines_info (
    id INT,
    airline_name VARCHAR(50),
    code VARCHAR(10),
    headquarters VARCHAR(50),
    fleet_size INT
);

CREATE TABLE country_info (
    id INT,
    country_name VARCHAR(50),
    capital VARCHAR(50),
    continent VARCHAR(30),
    population BIGINT
);

CREATE TABLE state_info (
    id INT,
    state_name VARCHAR(50),
    country VARCHAR(50),
    chief_minister VARCHAR(50),
    population BIGINT
);


ALTER TABLE airlines_info
ADD founded_year INT,
ADD ceo_name VARCHAR(50),
ADD international VARCHAR(5);

ALTER TABLE country_info
ADD official_language VARCHAR(30),
ADD currency VARCHAR(20),
ADD is_developed VARCHAR(5);

ALTER TABLE state_info
ADD area_sqkm INT,
ADD state_code VARCHAR(10),
ADD is_union_territory VARCHAR(5);


ALTER TABLE airlines_info
RENAME COLUMN code TO airline_code,
RENAME COLUMN headquarters TO hq_location,
RENAME COLUMN fleet_size TO total_aircraft;

ALTER TABLE country_info
RENAME COLUMN capital TO capital_city,
RENAME COLUMN continent TO region,
RENAME COLUMN population TO total_population;

ALTER TABLE state_info
RENAME COLUMN country TO nation,
RENAME COLUMN population TO total_population,
RENAME COLUMN chief_minister TO cm_name;


ALTER TABLE airlines_info
MODIFY founded_year VARCHAR(10),
MODIFY ceo_name VARCHAR(100),
MODIFY total_aircraft SMALLINT;

ALTER TABLE country_info
MODIFY currency VARCHAR(50),
MODIFY total_population BIGINT,
MODIFY official_language VARCHAR(50);

ALTER TABLE state_info
MODIFY area_sqkm BIGINT,
MODIFY cm_name VARCHAR(100),
MODIFY state_code VARCHAR(5);


INSERT INTO airlines_info VALUES 
(1, 'IndiGo', '6E', 'Gurgaon', 300, '2006', 'Pieter Elbers', 'Yes'),
(2, 'Air India', 'AI', 'New Delhi', 150, '1932', 'Campbell Wilson', 'Yes'),
(3, 'SpiceJet', 'SG', 'Gurgaon', 90, '2005', 'Ajay Singh', 'Yes'),
(4, 'GoAir', 'G8', 'Mumbai', 60, '2005', 'Kaushik Khona', 'Yes'),
(5, 'Vistara', 'UK', 'Gurgaon', 50, '2013', 'Vinod Kannan', 'Yes'),
(6, 'AirAsia India', 'I5', 'Bangalore', 40, '2014', 'Sunil Bhaskaran', 'Yes'),
(7, 'Alliance Air', '9I', 'Delhi', 20, '1996', 'Vineet Sood', 'No'),
(8, 'TruJet', '2T', 'Hyderabad', 10, '2015', 'K V Pradeep', 'No'),
(9, 'Star Air', 'OG', 'Bangalore', 8, '2019', 'Simran Singh', 'No'),
(10, 'Air Deccan', 'DN', 'Mumbai', 5, '2003', 'Capt. Gopinath', 'No'),
(11, 'Akasa Air', 'QP', 'Mumbai', 30, '2021', 'Vinay Dube', 'Yes'),
(12, 'Jet Airways', '9W', 'Mumbai', 120, '1993', 'Sanjiv Kapoor', 'Yes'),
(13, 'Zoom Air', 'ZO', 'Delhi', 4, '2017', 'Koustav Dhar', 'No'),
(14, 'Blue Dart', 'BZ', 'Chennai', 6, '1995', 'Balfour Manuel', 'No'),
(15, 'Cargo Air', 'CG', 'Delhi', 7, '2001', 'Manoj Singh', 'No'),
(16, 'Tata SIA', 'TS', 'Mumbai', 15, '2015', 'Rajesh Kumar', 'Yes'),
(17, 'Jet Konnect', 'S2', 'Mumbai', 25, '2008', 'Naresh Goyal', 'Yes'),
(18, 'Kingfisher', 'IT', 'Bangalore', 110, '2005', 'Vijay Mallya', 'Yes'),
(19, 'Paramount Airways', 'I7', 'Chennai', 9, '2005', 'M Thiagarajan', 'No'),
(20, 'Air Odisha', 'AO', 'Bhubaneswar', 3, '2011', 'Sujeet Kumar', 'No');



INSERT INTO country_info VALUES 
(1, 'India', 'New Delhi', 'Asia', 1400000000, 'Hindi', 'INR', 'No'),
(2, 'USA', 'Washington D.C.', 'North America', 331000000, 'English', 'USD', 'Yes'),
(3, 'UK', 'London', 'Europe', 67000000, 'English', 'GBP', 'Yes'),
(4, 'Australia', 'Canberra', 'Australia', 25000000, 'English', 'AUD', 'Yes'),
(5, 'Germany', 'Berlin', 'Europe', 83000000, 'German', 'EUR', 'Yes'),
(6, 'France', 'Paris', 'Europe', 67000000, 'French', 'EUR', 'Yes'),
(7, 'Russia', 'Moscow', 'Europe', 144000000, 'Russian', 'RUB', 'No'),
(8, 'China', 'Beijing', 'Asia', 1439000000, 'Mandarin', 'CNY', 'No'),
(9, 'Brazil', 'Brasília', 'South America', 211000000, 'Portuguese', 'BRL', 'No'),
(10, 'Japan', 'Tokyo', 'Asia', 126000000, 'Japanese', 'JPY', 'Yes'),
(11, 'South Korea', 'Seoul', 'Asia', 52000000, 'Korean', 'KRW', 'Yes'),
(12, 'South Africa', 'Pretoria', 'Africa', 59000000, 'Zulu', 'ZAR', 'No'),
(13, 'Italy', 'Rome', 'Europe', 60000000, 'Italian', 'EUR', 'Yes'),
(14, 'Canada', 'Ottawa', 'North America', 38000000, 'English', 'CAD', 'Yes'),
(15, 'Mexico', 'Mexico City', 'North America', 128000000, 'Spanish', 'MXN', 'No'),
(16, 'Argentina', 'Buenos Aires', 'South America', 45000000, 'Spanish', 'ARS', 'No'),
(17, 'Nigeria', 'Abuja', 'Africa', 206000000, 'English', 'NGN', 'No'),
(18, 'Egypt', 'Cairo', 'Africa', 100000000, 'Arabic', 'EGP', 'No'),
(19, 'Saudi Arabia', 'Riyadh', 'Asia', 34000000, 'Arabic', 'SAR', 'No'),
(20, 'Turkey', 'Ankara', 'Europe', 82000000, 'Turkish', 'TRY', 'No');

INSERT INTO state_info VALUES 
(1, 'Karnataka', 'India', 'Siddaramaiah', 70000000, 191791, 'KA', 'No'),
(2, 'Maharashtra', 'India', 'Eknath Shinde', 112000000, 307713, 'MH', 'No'),
(3, 'Tamil Nadu', 'India', 'M. K. Stalin', 72000000, 130058, 'TN', 'No'),
(4, 'Gujarat', 'India', 'Bhupendra Patel', 64000000, 196024, 'GJ', 'No'),
(5, 'Uttar Pradesh', 'India', 'Yogi Adityanath', 230000000, 243286, 'UP', 'No'),
(6, 'Rajasthan', 'India', 'Bhajan Lal Sharma', 80000000, 342239, 'RJ', 'No'),
(7, 'Kerala', 'India', 'Pinarayi Vijayan', 35000000, 38863, 'KL', 'No'),
(8, 'Delhi', 'India', 'Arvind Kejriwal', 20000000, 1484, 'DL', 'Yes'),
(9, 'Punjab', 'India', 'Bhagwant Mann', 31000000, 50362, 'PB', 'No'),
(10, 'Bihar', 'India', 'Nitish Kumar', 124000000, 94163, 'BR', 'No'),
(11, 'West Bengal', 'India', 'Mamata Banerjee', 97000000, 88752, 'WB', 'No'),
(12, 'Odisha', 'India', 'Naveen Patnaik', 46000000, 155707, 'OD', 'No'),
(13, 'Assam', 'India', 'Himanta Biswa Sarma', 35000000, 78438, 'AS', 'No'),
(14, 'Jharkhand', 'India', 'Champai Soren', 39000000, 79714, 'JH', 'No'),
(15, 'Chhattisgarh', 'India', 'Vishnu Deo Sai', 29000000, 135192, 'CG', 'No'),
(16, 'Goa', 'India', 'Pramod Sawant', 1500000, 3702, 'GA', 'No'),
(17, 'Haryana', 'India', 'Nayab Saini', 29000000, 44212, 'HR', 'No'),
(18, 'Himachal Pradesh', 'India', 'Sukhvinder Sukhu', 7000000, 55673, 'HP', 'No'),
(19, 'Tripura', 'India', 'Manik Saha', 4000000, 10486, 'TR', 'No'),
(20, 'Jammu & Kashmir', 'India', 'Manoj Sinha', 13500000, 222236, 'JK', 'Yes');

SET SQL_SAFE_UPDATES = 0;


UPDATE airlines_info SET ceo_name = 'Ajay Kumar' WHERE id = 1;
UPDATE airlines_info SET founded_year = '1990' WHERE id = 2;
UPDATE airlines_info SET total_aircraft = 100 WHERE id = 3;
UPDATE airlines_info SET hq_location = 'Pune' WHERE id = 4;
UPDATE airlines_info SET international = 'No' WHERE id = 5;
UPDATE airlines_info SET airline_name = 'Air India Express' WHERE id = 6;
UPDATE airlines_info SET airline_code = 'IX' WHERE id = 7;
UPDATE airlines_info SET ceo_name = 'Rajiv Mehra' WHERE id = 8;
UPDATE airlines_info SET total_aircraft = 12 WHERE id = 9;
UPDATE airlines_info SET international = 'Yes' WHERE id = 10;


UPDATE country_info SET currency = 'INR-₹' WHERE id = 1;
UPDATE country_info SET is_developed = 'Yes' WHERE id = 2;
UPDATE country_info SET official_language = 'British English' WHERE id = 3;
UPDATE country_info SET total_population = 26000000 WHERE id = 4;
UPDATE country_info SET capital_city = 'Berlin City' WHERE id = 5;
UPDATE country_info SET region = 'Western Europe' WHERE id = 6;
UPDATE country_info SET currency = 'RUR' WHERE id = 7;
UPDATE country_info SET is_developed = 'Yes' WHERE id = 8;
UPDATE country_info SET country_name = 'Brasil' WHERE id = 9;
UPDATE country_info SET total_population = 130000000 WHERE id = 10;


UPDATE state_info SET cm_name = 'Basavaraj Bommai' WHERE id = 1;
UPDATE state_info SET total_population = 118000000 WHERE id = 2;
UPDATE state_info SET state_code = 'TM' WHERE id = 3;
UPDATE state_info SET area_sqkm = 200000 WHERE id = 4;
UPDATE state_info SET is_union_territory = 'Yes' WHERE id = 5;
UPDATE state_info SET nation = 'Bharat' WHERE id = 6;
UPDATE state_info SET cm_name = 'Vijay Pinarayi' WHERE id = 7;
UPDATE state_info SET area_sqkm = 1500 WHERE id = 8;
UPDATE state_info SET total_population = 32000000 WHERE id = 9;
UPDATE state_info SET is_union_territory = 'Yes' WHERE id = 10;


DELETE FROM airlines_info WHERE id = 20;
DELETE FROM airlines_info WHERE total_aircraft < 10 AND international = 'No';
DELETE FROM airlines_info WHERE ceo_name = 'Vijay Mallya' OR airline_code = 'BZ';
DELETE FROM airlines_info WHERE id IN (17, 18);
DELETE FROM airlines_info WHERE id NOT IN (1, 2, 3, 4, 5);
DELETE FROM airlines_info WHERE total_aircraft BETWEEN 20 AND 50;
DELETE FROM airlines_info WHERE founded_year NOT BETWEEN '2000' AND '2010';


DELETE FROM country_info WHERE id = 20;
DELETE FROM country_info WHERE currency = 'CNY' AND is_developed = 'No';
DELETE FROM country_info WHERE region = 'Africa' OR official_language = 'Spanish';
DELETE FROM country_info WHERE id IN (11, 13);
DELETE FROM country_info WHERE id NOT IN (1, 3, 5, 7);
DELETE FROM country_info WHERE total_population BETWEEN 50000000 AND 90000000;
DELETE FROM country_info WHERE total_population NOT BETWEEN 100000000 AND 1500000000;


DELETE FROM state_info WHERE id = 20;
DELETE FROM state_info WHERE is_union_territory = 'Yes' AND area_sqkm < 2000;
DELETE FROM state_info WHERE cm_name = 'Nitish Kumar' OR cm_name = 'Manik Saha';
DELETE FROM state_info WHERE id IN (14, 15);
DELETE FROM state_info WHERE id NOT IN (1, 2, 3, 4, 5);
DELETE FROM state_info WHERE area_sqkm BETWEEN 50000 AND 100000;
DELETE FROM state_info WHERE total_population NOT BETWEEN 30000000 AND 100000000;


SELECT * FROM airlines_info WHERE international = 'Yes';

SELECT * FROM country_info WHERE region = 'Europe';

SELECT * FROM state_info WHERE total_population > 80000;



SELECT * FROM airlines_info WHERE total_aircraft > 50 AND international = 'Yes';
SELECT * FROM airlines_info WHERE airline_code = 'AI' OR ceo_name = 'Naresh Goyal';
SELECT * FROM airlines_info WHERE id IN (1, 3, 5, 7);
SELECT * FROM airlines_info WHERE id NOT IN (2, 4, 6, 8);
SELECT * FROM airlines_info WHERE total_aircraft BETWEEN 10 AND 100;
SELECT * FROM airlines_info WHERE total_aircraft NOT BETWEEN 20 AND 40;


SELECT * FROM country_info WHERE region = 'Asia' AND is_developed = 'No';
SELECT * FROM country_info WHERE currency = 'USD' OR currency = 'EUR';
SELECT * FROM country_info WHERE id IN (1, 4, 5);
SELECT * FROM country_info WHERE id NOT IN (2, 3, 6);
SELECT * FROM country_info WHERE total_population BETWEEN 50000000 AND 1000000000;
SELECT * FROM country_info WHERE total_population NOT BETWEEN 100000000 AND 200000000;


SELECT * FROM state_info WHERE is_union_territory = 'No' AND area_sqkm > 100000;
SELECT * FROM state_info WHERE cm_name = 'Mamata Banerjee' OR cm_name = 'Bhajan Lal Sharma';
SELECT * FROM state_info WHERE id IN (6, 7, 8, 9);
SELECT * FROM state_info WHERE id NOT IN (10, 11, 12);
SELECT * FROM state_info WHERE area_sqkm BETWEEN 10000 AND 200000;
SELECT * FROM state_info WHERE total_population NOT BETWEEN 5000000 AND 80000000;





CREATE TABLE books_info (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(6,2),
    published_year INT,
    publisher VARCHAR(50),
    in_stock VARCHAR(5)
);

CREATE TABLE employees_info (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary INT,
    joining_year INT,
    city VARCHAR(50),
    is_permanent VARCHAR(5)
);

CREATE TABLE students_info (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(50),
    grade VARCHAR(2),
    age INT,
    gender VARCHAR(10),
    college VARCHAR(100),
    is_hosteller VARCHAR(5)
);


INSERT INTO books_info VALUES 
(1, 'Inferno', 'Dan Brown', 'Thriller', 499.99, 2013, 'Random House', 'Yes'),
(2, 'The Alchemist', 'Paulo Coelho', 'Fiction', 299.00, 1988, 'HarperOne', 'Yes'),
(3, '1984', 'George Orwell', 'Dystopian', 199.00, 1949, 'Secker & Warburg', 'Yes'),
(4, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 399.50, 1960, 'J.B. Lippincott', 'Yes'),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 150.00, 1925, 'Scribner', 'No'),
(6, 'Sapiens', 'Yuval Noah Harari', 'History', 450.00, 2011, 'Harvill Secker', 'Yes'),
(7, 'Ikigai', 'Francesc Miralles', 'Self-Help', 350.00, 2016, 'Penguin', 'Yes'),
(8, 'Atomic Habits', 'James Clear', 'Self-Help', 499.00, 2018, 'Avery', 'Yes'),
(9, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 300.00, 1997, 'Warner Books', 'No'),
(10, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 200.00, 1999, 'Universities Press', 'Yes'),
(11, 'Think and Grow Rich', 'Napoleon Hill', 'Self-Help', 250.00, 1937, 'The Ralston Society', 'Yes'),
(12, 'The Monk Who Sold His Ferrari', 'Robin Sharma', 'Spiritual', 275.00, 1997, 'Jaico', 'Yes'),
(13, 'Harry Potter 1', 'J.K. Rowling', 'Fantasy', 450.00, 1997, 'Bloomsbury', 'Yes'),
(14, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 350.00, 1937, 'George Allen & Unwin', 'No'),
(15, 'The Power of Now', 'Eckhart Tolle', 'Spiritual', 300.00, 1997, 'Namaste Publishing', 'Yes'),
(16, 'Man’s Search for Meaning', 'Victor Frankl', 'Psychology', 199.00, 1946, 'Beacon Press', 'Yes'),
(17, 'The Secret', 'Rhonda Byrne', 'Motivational', 250.00, 2006, 'Atria Books', 'Yes'),
(18, 'Deep Work', 'Cal Newport', 'Productivity', 399.00, 2016, 'Grand Central', 'Yes'),
(19, 'Quiet', 'Susan Cain', 'Psychology', 375.00, 2012, 'Crown', 'Yes'),
(20, 'Can’t Hurt Me', 'David Goggins', 'Memoir', 450.00, 2018, 'Lioncrest Publishing', 'Yes');


INSERT INTO employees_info VALUES
(1, 'Amit Kumar', 'HR', 'Manager', 75000, 2015, 'Delhi', 'Yes'),
(2, 'Neha Verma', 'IT', 'Developer', 65000, 2019, 'Bangalore', 'Yes'),
(3, 'Raj Mehta', 'IT', 'Tester', 50000, 2020, 'Hyderabad', 'No'),
(4, 'Sonal Shah', 'Finance', 'Analyst', 55000, 2018, 'Mumbai', 'Yes'),
(5, 'Nikhil Jain', 'Sales', 'Executive', 45000, 2017, 'Pune', 'No'),
(6, 'Divya Patel', 'Admin', 'Clerk', 30000, 2016, 'Chennai', 'Yes'),
(7, 'Rahul Singh', 'Marketing', 'Lead', 70000, 2014, 'Delhi', 'Yes'),
(8, 'Meera Das', 'Finance', 'Manager', 80000, 2013, 'Kolkata', 'Yes'),
(9, 'Ankit Rana', 'IT', 'Developer', 67000, 2021, 'Noida', 'No'),
(10, 'Simran Kaur', 'HR', 'Executive', 40000, 2020, 'Delhi', 'Yes'),
(11, 'Pooja Joshi', 'Support', 'Rep', 35000, 2022, 'Ahmedabad', 'Yes'),
(12, 'Aditya Sharma', 'Sales', 'Manager', 60000, 2017, 'Chandigarh', 'Yes'),
(13, 'Reema Shah', 'Marketing', 'Executive', 48000, 2021, 'Surat', 'No'),
(14, 'Arjun Reddy', 'Finance', 'Clerk', 32000, 2022, 'Vizag', 'Yes'),
(15, 'Neeraj Rawat', 'IT', 'Architect', 90000, 2012, 'Bangalore', 'Yes'),
(16, 'Tina Paul', 'HR', 'Executive', 43000, 2020, 'Hyderabad', 'No'),
(17, 'Kabir Khan', 'IT', 'Intern', 20000, 2023, 'Delhi', 'No'),
(18, 'Ishaan Roy', 'Admin', 'Officer', 47000, 2018, 'Kolkata', 'Yes'),
(19, 'Gauri Kulkarni', 'IT', 'Developer', 65000, 2019, 'Mumbai', 'Yes'),
(20, 'Alok Nath', 'Support', 'Manager', 58000, 2016, 'Jaipur', 'Yes');


INSERT INTO students_info VALUES
(1, 'Ananya Sharma', 'BSc', 'A', 19, 'Female', 'XYZ College', 'Yes'),
(2, 'Ravi Kumar', 'BCom', 'B', 20, 'Male', 'ABC College', 'No'),
(3, 'Sneha Jain', 'BTech', 'A', 21, 'Female', 'Tech University', 'Yes'),
(4, 'Aditya Rao', 'BA', 'C', 22, 'Male', 'Arts College', 'No'),
(5, 'Priya Mehta', 'BCA', 'B', 20, 'Female', 'XYZ College', 'Yes'),
(6, 'Karan Shah', 'BBA', 'A', 21, 'Male', 'Business School', 'Yes'),
(7, 'Simran Gill', 'BCom', 'A', 19, 'Female', 'Commerce College', 'Yes'),
(8, 'Aryan Patel', 'BSc', 'C', 18, 'Male', 'ABC College', 'No'),
(9, 'Neha Reddy', 'BTech', 'B', 20, 'Female', 'Tech University', 'Yes'),
(10, 'Rahul Joshi', 'BCA', 'B', 22, 'Male', 'XYZ College', 'No'),
(11, 'Isha Kapoor', 'BBA', 'A', 21, 'Female', 'Business School', 'Yes'),
(12, 'Sahil Jain', 'BA', 'C', 23, 'Male', 'Arts College', 'No'),
(13, 'Pooja Singh', 'BSc', 'A', 20, 'Female', 'ABC College', 'Yes'),
(14, 'Dev Verma', 'BCom', 'B', 22, 'Male', 'Commerce College', 'No'),
(15, 'Aisha Khan', 'BTech', 'A', 21, 'Female', 'Tech University', 'Yes'),
(16, 'Kunal Rawat', 'BCA', 'C', 20, 'Male', 'XYZ College', 'No'),
(17, 'Ritika Das', 'BA', 'B', 19, 'Female', 'Arts College', 'Yes'),
(18, 'Manav Singh', 'BSc', 'C', 18, 'Male', 'ABC College', 'No'),
(19, 'Avni Bhatt', 'BBA', 'A', 21, 'Female', 'Business School', 'Yes'),
(20, 'Yash Garg', 'BCom', 'C', 22, 'Male', 'Commerce College', 'Yes');


UPDATE books_info SET price = 350.00 WHERE id = 5;
UPDATE books_info SET published_year = 2015 WHERE id = 6;
UPDATE books_info SET genre = 'Self-Help' WHERE id = 8;
UPDATE books_info SET in_stock = 'No' WHERE id = 9;
UPDATE books_info SET price = 250.00 WHERE id = 11;
UPDATE books_info SET publisher = 'Penguin Random House' WHERE id = 13;
UPDATE books_info SET title = 'The Power of Habit' WHERE id = 7;
UPDATE books_info SET price = 500.00 WHERE id = 17;
UPDATE books_info SET genre = 'Motivational' WHERE id = 19;
UPDATE books_info SET author = 'David Goggins' WHERE id = 20;


UPDATE employees_info SET salary = 80000 WHERE id = 1;
UPDATE employees_info SET department = 'Marketing' WHERE id = 5;
UPDATE employees_info SET city = 'Delhi' WHERE id = 7;
UPDATE employees_info SET is_permanent = 'No' WHERE id = 9;
UPDATE employees_info SET salary = 72000 WHERE id = 10;
UPDATE employees_info SET joining_year = 2020 WHERE id = 13;
UPDATE employees_info SET department = 'Finance' WHERE id = 4;
UPDATE employees_info SET designation = 'Analyst' WHERE id = 6;
UPDATE employees_info SET city = 'Pune' WHERE id = 11;
UPDATE employees_info SET is_permanent = 'Yes' WHERE id = 15;


UPDATE students_info SET grade = 'B' WHERE id = 4;
UPDATE students_info SET age = 22 WHERE id = 5;
UPDATE students_info SET course = 'MCA' WHERE id = 9;
UPDATE students_info SET is_hosteller = 'No' WHERE id = 8;
UPDATE students_info SET gender = 'Male' WHERE id = 10;
UPDATE students_info SET college = 'University of ABC' WHERE id = 12;
UPDATE students_info SET grade = 'A' WHERE id = 13;
UPDATE students_info SET name = 'Rajiv Reddy' WHERE id = 15;
UPDATE students_info SET course = 'MBA' WHERE id = 16;
UPDATE students_info SET gender = 'Female' WHERE id = 17;


DELETE FROM books_info WHERE id = 3;
DELETE FROM books_info WHERE price > 300.00 AND in_stock = 'Yes';
DELETE FROM books_info WHERE genre = 'Spiritual' OR genre = 'History';
DELETE FROM books_info WHERE id IN (4, 5, 7);
DELETE FROM books_info WHERE id NOT IN (10, 11);
DELETE FROM books_info WHERE published_year BETWEEN 2000 AND 2015;
DELETE FROM books_info WHERE price NOT BETWEEN 200 AND 400;


DELETE FROM employees_info WHERE id = 8;
DELETE FROM employees_info WHERE salary < 40000 AND city = 'Delhi';
DELETE FROM employees_info WHERE department = 'HR' OR department = 'Finance';
DELETE FROM employees_info WHERE id IN (3, 6, 13);
DELETE FROM employees_info WHERE id NOT IN (1, 2, 9);
DELETE FROM employees_info WHERE joining_year BETWEEN 2010 AND 2020;
DELETE FROM employees_info WHERE salary NOT BETWEEN 50000 AND 70000;

DELETE FROM students_info WHERE age > 21;
DELETE FROM students_info WHERE course = 'BCom' AND grade = 'B';
DELETE FROM students_info WHERE gender = 'Female' OR is_hosteller = 'Yes';
DELETE FROM students_info WHERE id IN (2, 4, 6);
DELETE FROM students_info WHERE id NOT IN (10, 12, 16);
DELETE FROM students_info WHERE age BETWEEN 18 AND 21;
DELETE FROM students_info WHERE grade NOT BETWEEN 'A' AND 'B';


SELECT * FROM books_info WHERE price > 300;

SELECT * FROM employees_info WHERE city = 'Delhi';

SELECT * FROM students_info WHERE gender = 'Female';


SELECT * FROM books_info WHERE genre = 'Self-Help' AND in_stock = 'Yes';
SELECT * FROM books_info WHERE genre = 'Self-Help' OR genre = 'History';
SELECT * FROM books_info WHERE id IN (1, 2, 3);
SELECT * FROM books_info WHERE id NOT IN (4, 5);
SELECT * FROM books_info WHERE price BETWEEN 200 AND 500;
SELECT * FROM books_info WHERE price NOT BETWEEN 200 AND 500;

SELECT * FROM employees_info WHERE department = 'IT' AND salary > 60000;
SELECT * FROM employees_info WHERE department = 'HR' OR department = 'Finance';
SELECT * FROM employees_info WHERE id IN (3, 7, 9);
SELECT * FROM employees_info WHERE id NOT IN (1, 2);
SELECT * FROM employees_info WHERE joining_year BETWEEN 2015 AND 2020;
SELECT * FROM employees_info WHERE salary NOT BETWEEN 50000 AND 70000;

SELECT * FROM students_info WHERE grade = 'A' AND age > 20;
SELECT * FROM students_info WHERE course = 'BCom' OR course = 'BSc';
SELECT * FROM students_info WHERE id IN (1, 4, 7);
SELECT * FROM students_info WHERE id NOT IN (5, 6);
SELECT * FROM students_info WHERE age BETWEEN 18 AND 22;
SELECT * FROM students_info WHERE grade NOT BETWEEN 'B' AND 'C';


UPDATE books_info SET price = 200.00 WHERE genre = 'Dystopian' AND in_stock = 'No';
UPDATE books_info SET publisher = 'New Publisher' WHERE genre = 'Motivational' OR genre = 'Spiritual';
UPDATE books_info SET price = 350.00 WHERE id IN (4, 5, 6);
UPDATE books_info SET price = 250.00 WHERE id NOT IN (7, 8);
UPDATE books_info SET published_year = 2020 WHERE price BETWEEN 200 AND 400;
UPDATE books_info SET price = 450.00 WHERE price NOT BETWEEN 200 AND 300;


UPDATE employees_info SET salary = 80000 WHERE department = 'HR' AND city = 'Delhi';
UPDATE employees_info SET city = 'Mumbai' WHERE department = 'Finance' OR department = 'IT';
UPDATE employees_info SET salary = 65000 WHERE id IN (1, 4, 7);
UPDATE employees_info SET salary = 70000 WHERE id NOT IN (3, 5);
UPDATE employees_info SET is_permanent = 'No' WHERE joining_year BETWEEN 2015 AND 2020;
UPDATE employees_info SET salary = 55000 WHERE salary NOT BETWEEN 40000 AND 70000;


UPDATE students_info SET grade = 'B' WHERE course = 'BCom' AND age > 20;
UPDATE students_info SET course = 'MCA' WHERE grade = 'A' OR gender = 'Female';
UPDATE students_info SET age = 22 WHERE id IN (1, 5, 9);
UPDATE students_info SET age = 19 WHERE id NOT IN (6, 10);
UPDATE students_info SET grade = 'C' WHERE age BETWEEN 18 AND 20;
UPDATE students_info SET grade = 'A' WHERE grade NOT BETWEEN 'B' AND 'C';
