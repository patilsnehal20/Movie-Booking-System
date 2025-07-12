Schemas of all required tables 

mysql> show tables;
+-----------------+
| Tables_in_mini2 |
+-----------------+
| admin           |
| booked_seats    |
| bookings        |
| customers       |
| movies          |
| seat_info       |
| seats           |
| showtimes       |
| theaters        |
+-----------------+
9 rows in set (0.34 sec)

mysql> desc admin;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| username | varchar(50) | NO   | PRI | NULL    |       |
| password | varchar(50) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.03 sec)

mysql> desc booked_seats;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| seat_id     | int         | NO   | PRI | NULL    | auto_increment |
| seatname    | varchar(10) | YES  |     | NULL    |                |
| showtime_id | int         | YES  | MUL | NULL    |                |
| customer_id | int         | YES  | MUL | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> desc bookings;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| booking_id  | int           | NO   | PRI | NULL    | auto_increment |
| customer_id | int           | YES  | MUL | NULL    |                |
| showtime_id | int           | YES  | MUL | NULL    |                |
| tot_amt     | decimal(10,2) | YES  |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> desc customers;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| customer_id  | int          | NO   | PRI | NULL    | auto_increment |
| name         | varchar(100) | NO   |     | NULL    |                |
| email        | varchar(100) | NO   | UNI | NULL    |                |
| password     | varchar(50)  | NO   |     | NULL    |                |
| phone_number | varchar(15)  | YES  |     | NULL    |                |
| address      | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> desc movies;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| movie_id     | int          | NO   | PRI | NULL    | auto_increment |
| title        | varchar(100) | NO   |     | NULL    |                |
| genre        | varchar(50)  | YES  |     | NULL    |                |
| language     | varchar(50)  | YES  |     | NULL    |                |
| duration     | int          | YES  |     | NULL    |                |
| release_date | date         | YES  |     | NULL    |                |
| rating       | decimal(3,1) | YES  |     | NULL    |                |
| director     | varchar(100) | YES  |     | NULL    |                |
| cast         | varchar(255) | YES  |     | NULL    |                |
| description  | text         | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
10 rows in set (0.01 sec)

mysql> desc seat_info;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| seat_category | varchar(50)   | NO   | PRI | NULL    |       |
| seat_price    | decimal(10,2) | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc seats;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| seatname | varchar(20) | NO   | PRI | NULL    |       |
| category | varchar(50) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc showtimes;
+-------------+------+------+-----+---------+----------------+
| Field       | Type | Null | Key | Default | Extra          |
+-------------+------+------+-----+---------+----------------+
| showtime_id | int  | NO   | PRI | NULL    | auto_increment |
| movie_id    | int  | YES  | MUL | NULL    |                |
| theater_id  | int  | YES  | MUL | NULL    |                |
| show_date   | date | YES  |     | NULL    |                |
| show_time   | time | YES  |     | NULL    |                |
+-------------+------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> desc theaters;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| theater_id | int          | NO   | PRI | NULL    | auto_increment |
| name       | varchar(100) | NO   |     | NULL    |                |
| location   | varchar(255) | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)



Create commands for all tables in mysql database

CREATE TABLE admin (
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE booked_seats (
    seat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    seatname VARCHAR(10),
    showtime_id INT,
    customer_id INT,
    FOREIGN KEY (showtime_id) REFERENCES showtimes(showtime_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE bookings (
    booking_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    showtime_id INT,
    tot_amt DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (showtime_id) REFERENCES showtimes(showtime_id)
);

CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE movies (
    movie_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    language VARCHAR(50),
    duration INT,
    release_date DATE,
    rating DECIMAL(3,1),
    director VARCHAR(100),
    cast VARCHAR(255),
    description TEXT
);

CREATE TABLE seat_info (
    seat_category VARCHAR(50) NOT NULL PRIMARY KEY,
    seat_price DECIMAL(10,2)
);

CREATE TABLE seats (
    seatname VARCHAR(20) NOT NULL PRIMARY KEY,
    category VARCHAR(50)
);

CREATE TABLE showtimes (
    showtime_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    theater_id INT,
    show_date DATE,
    show_time TIME,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (theater_id) REFERENCES theaters(theater_id)
);

CREATE TABLE theaters (
    theater_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255)
);



Mysql Procedure to calculate bill/amount to pay by user after booking seat

mysql> DROP PROCEDURE IF EXISTS calculate_money1;
Query OK, 0 rows affected (0.10 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE calculate_money1(
    ->     IN p_customer_id INT,
    ->     IN p_showtime_id INT,
    ->     OUT p_total_amount DECIMAL(10, 2)
    -> )
    -> BEGIN
    ->     DECLARE total DECIMAL(10, 2) DEFAULT 0.0;
    ->
    ->     -- Calculate total amount based on seat categories
    ->     SELECT SUM(CASE
    ->         WHEN s.category = 'Platinum' THEN 600
    ->         WHEN s.category = 'Gold' THEN 500
    ->         WHEN s.category = 'Silver' THEN 400
    ->         ELSE 0
    ->     END) INTO total
    ->     FROM booked_seats bs
    ->     JOIN seats s ON bs.seatname = s.seatname
    ->     WHERE bs.customer_id = p_customer_id AND bs.showtime_id = p_showtime_id;
    ->
    ->     SET p_total_amount = total;
    -> END //
Query OK, 0 rows affected (0.02 sec)