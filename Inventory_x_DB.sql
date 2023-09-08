-- CREATE DATABASE inventory_x_db;



-- USE inventory_x_db;



-- -- CREATION OF ALL ENTITIES

-- CREATE TABLE users (
-- id INT NOT NULL,
-- email VARCHAR(255) NOT NULL,
-- password VARCHAR(255) NOT NULL,
-- phone_no VARCHAR(225),
-- DOB DATE,
-- gender ENUM('male', 'female'),
-- created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
-- PRIMARY KEY(id)
-- );

-- ALTER TABLE users
-- ADD COLUMN user_type ENUM ('customer', 'admin')
-- AFTER gender;

-- CREATE TABLE customers (
-- id INT NOT NULL,
-- name VARCHAR(255) NOT NULL,
-- interests VARCHAR(255),
-- verified BOOLEAN DEFAULT FALSE,
-- user_id INT,
-- FOREIGN KEY (user_id) REFERENCES users(id),
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE admin (
-- id INT NOT NULL,
-- name VARCHAR(255) NOT NULL,
-- role VARCHAR(255),
-- user_id INT,
-- FOREIGN KEY (user_id) REFERENCES users(id),
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE items (
-- id INT NOT NULL,
-- name VARCHAR(255) NOT NULL,
-- price VARCHAR(255) NOT NULL,
-- size ENUM ('small', 'medium', 'big'),
-- category ENUM ('electric', 'acoustic', 'semi-acoustic', 'midi'),
-- added_at DATETIME DEFAULT CURRENT_TIMESTAMP,
-- description VARCHAR(255),
-- admin_id INT,
-- FOREIGN KEY (admin_id) REFERENCES admin(id),
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE orders (
-- id INT NOT NULL,
-- created_at DATETIME,
-- status ENUM ('created', 'processing', 'processed', 'failed', 'canceled', 'in-transit', 'delivered'),
-- items_id INT,
-- customers_id INT,
-- FOREIGN KEY (items_id) REFERENCES items(id),
-- FOREIGN KEY (customers_id) REFERENCES customers(id),
-- PRIMARY KEY (id)
-- );



-- --INSERTING RECORDS INTO ENTITIES
-- -- USERS

-- INSERT INTO users
-- (id, email, password, phone_no, DOB, gender)
-- VALUES(1, 'user1@fmail.com', 'my_pass123', '90218722981', '1997-04-11', 'female');

-- INSERT INTO users
-- (id, email, password, phone_no, DOB, gender)
-- VALUES(2, 'user2@pmail.com', 'aforapple', '92797440473', '1999-02-19', 'female');

-- INSERT INTO users
-- (id, email, password, phone_no, DOB, gender)
-- VALUES(3, 'mycontact@gmail.com', 'password12345', '9288990005', '2004-11-13', 'male');

-- INSERT INTO users
-- (id, email, password, phone_no, DOB, gender)
-- VALUES(4, 'denny@yahoo.com', 'unexpected_1290', '8102998347', '1981-10-11', 'male');



-- -- CUSTOMERS

-- INSERT INTO customers
-- (id, name, interests, verified, user_id)
-- VALUES(1, 'Adewale Paul', 'singing, dancing, traveling, eating', false, 1);

-- INSERT INTO customers
-- (id, name, interests, verified, user_id)
-- VALUES(2, 'Gracious Pelumi', 'singing, rehearsing, creating contents, traveling', true, 2);

-- INSERT INTO customers
-- (id, name, interests, verified, user_id)
-- VALUES(3, 'Agelebe Dennis', 'playing guitar, live concerts, fighting, evil things', true, 4);



-- -- ADMIN

-- INSERT INTO admin
-- (id, name, role, user_id)
-- VALUES(2, 'Miracle Peter', 'Inventory manager', 3);



-- -- ITEMS

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(1, '“Reach Out To Asia” Fender Stratocaster', '$2,700,000', 'medium', 'electric', 'In 2005, Bryan Adams created a project called “Reach Out To Asia” to help the victims of the earthquake and tsunami in the Indian Ocean. His guitar was signed by 19 different artists.', 2);

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(2, 'John Lennon’s 1962 Gibson J-160E Acoustic-Electric', '$2,400,000', 'medium', 'semi-acoustic', 'This £161 guitar was used by The Beatles to compose songs like “She Loves You,” but was somehow lost after a performance in 1963. It magically reappeared many years later.', 2);

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(3, 'Jimi Hendrix’ Fender Stratocaster', '$2,000,000', 'big', 'electric', 'Jimi Hendrix used this guitar to perform “The Star-Spangled Banner” at Woodstock in 1969, which was a legendary show. The buyer was none other than the co-founder of Microsoft.', 2);

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(4, 'Bob Marley’s Washburn 22-Series Hawk', '$1,200,000', 'small', 'acoustic', 'Bob Marley only used seven guitars for the duration of his career. The Washburn 22-Series Hawk is one of them, and the Jamaican government naturally declared it a national treasure.', 2);

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(5, '1958 Gibson “Korina” 1958 Explorer', '$1,100,000', 'medium', 'electric', 'This model didn’t belong to any particular guitarist, but the likes of Slash used it. We can, of course, attribute part of the value to the fact that Gibson only ever made ten Korinas.', 2);

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(6, 'Jerry Garcia’s “Wolf”', '$1,900,000', 'medium', 'semi-acoustic', 'Jerry Garcia has a long history of famous guitars, and his “Wolf” is one of the most valuable. It originally had a peacock logo back in 1973 until Garcia replaced it with a wolf sticker.', 2);

-- INSERT INTO items
-- (id, name, price, size, category, description, admin_id)
-- VALUES(7, 'Eric Clapton’s “Blackie”', '$965,000', 'big', 'electric', 'Bob Dylan wasn’t known for playing electric guitar until 1964. That’s when he performed with this guitar live for the first time. His fans didn’t appreciate it, but whoever bought it certainly did.', 2);



-- -- ORDERS

-- INSERT INTO orders
-- (id, created_at, status, items_id, customers_id)
-- VALUES(1, '2023-06-11 11:23:04', 'delivered', 4, 2);

-- INSERT INTO orders
-- (id, created_at, status, items_id, customers_id)
-- VALUES(2, '2023-07-21 19:08:34', 'processed', 2, 1);

-- INSERT INTO orders
-- (id, created_at, status, items_id, customers_id)
-- VALUES(3, '2023-08-02 00:38:42', 'failed', 6, 3);

-- INSERT INTO orders
-- (id, created_at, status, items_id, customers_id)
-- VALUES(4, '2004-10-22 10:30:27', 'canceled', 7, 1);

-- INSERT INTO orders
-- (id, created_at, status, items_id, customers_id)
-- VALUES(5, '2023-06-06 14:01:29', 'in-transit', 7, 3);

-- INSERT INTO orders
-- (id, created_at, status, items_id, customers_id)
-- VALUES(6, '2001-12-26 18:11:03', 'delivered', 2, 2);



-- SHOW TABLES



-- -- GETTING RECORDS

-- SELECT name, price, size FROM items;
-- SELECT * FROM users;
-- SELECT * FROM items WHERE id > 3;



-- -- UPDATING RECORDS

-- UPDATE users 
-- SET user_type = 'customer' 
-- WHERE id < 3;

-- UPDATE users
-- SET email = 'user1@gmail.com'
-- WHERE id = 1;



-- -- DELETING RECORDS

-- DROP TABLE items, orders;
-- DROP TABLE admin;


