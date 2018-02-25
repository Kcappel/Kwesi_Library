drop table stores;
drop table customers;
drop table orders;
drop sequence seq_store_id;
drop sequence seq_cust_id;
drop sequence seq_orders_id;

CREATE TABLE STORES (
	Store_ID NUMBER(2),
	Store_Name VARCHAR2(30),
	Address VARCHAR2(25),
	City VARCHAR2(10),
	State CHAR(2),
	Zip_Code NUMBER(5),
	Phone VARCHAR2(12),
		CONSTRAINT pk_store_id PRIMARY KEY (Store_ID));

CREATE TABLE CUSTOMERS (
	Customer_ID NUMBER(2),
	First_Name VARCHAR2(10),
	Last_Name VARCHAR2(10),
	Address VARCHAR2(30),
	City VARCHAR2(20),
	State CHAR(2),
	Phone_Number NUMBER(10),
	Wallet NUMBER(6,2),
		CONSTRAINT pk_customer_id PRIMARY KEY (Customer_ID));
		
CREATE TABLE ORDERS (
	Order_No NUMBER(2),
	Customer_ID NUMBER(2),
	Store_ID NUMBER(2),
	Book_ID NUMBER(2),
	Order_Total NUMBER(6,2),
	Wallet_Bal NUMBER(6,2),
		CONSTRAINT pk_order_no PRIMARY KEY (Order_No),
		CONSTRAINT fk_store_id FOREIGN KEY (Store_ID) REFERENCES stores ON DELETE CASCADE,
		CONSTRAINT fk_customer_id FOREIGN KEY (Customer_ID) REFERENCES customers ON DELETE CASCADE,
		CONSTRAINT fk_book_id FOREIGN KEY (Book_ID) REFERENCES books ON DELETE CASCADE);

CREATE SEQUENCE seq_store_id
START WITH 1
INCREMENT BY 1
MAXVALUE 20;

CREATE SEQUENCE seq_cust_id
START WITH 1
INCREMENT BY 1
MAXVALUE 20;

CREATE SEQUENCE seq_orders_id
START WITH 1
INCREMENT BY 1
MAXVALUE 20;

INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Book People', '603 N Lamar Blvd', 'Austin', 'TX', 78703, 5124725050);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Barnes and Noble', '5601 Brodie Lane', 'Austin', 'TX', 78745, 5128923493);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Half Price Books', '2929 S Lamar Blvd', 'Austin', 'TX', 78704, 5124433138);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Austin Books and Comics', '5002 N Lamar Blvd', 'Austin', 'TX', 78751, 5124544797);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, '12th Street Books', '827 W 12th Street', 'Austin', 'TX', 78701, 5124998828);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'ACC Book Store', '7748 US 290', 'Austin', 'TX', 78736, 5122882303);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Goodwill', '7100 US 290', 'Austin', 'TX', 78736, 5122887700);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Malvern Books', '613 W 29th Street', 'Austin', 'TX', 78705, 5123222097);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'South Congress Books', '1608 S Congress Ave', 'Austin', 'TX', 78704, 5129168882);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'BookWoman', '5501 N Lamar Blvd', 'Austin', 'TX', 78751, 5124722785);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Resistencia Bookstore', '4926 E Cesar Chavez', 'Austin', 'TX', 78702, 5123899881);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Monkeywrench Books', '110 E N Loop Blvd', 'Austin', 'TX', 78751, 5127666925);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Recycled Reads', '5335 Burnet Road', 'Austin', 'TX', 78756, 5123235123);
INSERT INTO STORES 
VALUES (seq_store_id.nextval, 'Balcones Books', '3313 Hancock Drive', 'Austin', 'TX', 78731, 5127929260);

INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Goku', 'Son', '108 Saiyan Way', 'West City', 'TX', 5128646324, 50.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Vegeta', 'Breigh', '5689 Capsule Corp', 'West City', 'TX', 5126398796, 55.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Jon', 'Targaryen', '281 Nights Watch Court', 'Westeros', 'NY', 9294814862, 33.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Daenerys', 'Targaryen', '11 Queens Place', 'Westeros', 'CA', 5104569881, 95.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Naruto', 'Uzumaki', '459 Hokage Road', 'Hidden Leaf', 'AK', 9071564894, 15.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Noob-Noob', 'Sanchez', '1010 Portal Way', 'Multiverse', 'TX', 5120010111, 10.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Anakin', 'Skywalker', '66 Order Road', 'Coruscant', 'TN', 6159781320, 100.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Bruce', 'Wayne', '1939 Bat Cove', 'Gotham', 'NY', 9297891354, 9999.99);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Robert', 'Baratheon', '105 OpenField Blvd', 'Westeros', 'CA', 5104157893, 163.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'John', '117', '117 Spartan Court', 'Halo City', 'PA', 6100238910, 117.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Ash', 'Ketchum', '151 Em All Way', 'Pallet Town', 'TX', 5121584987, 151.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Tom', 'Riddle', '6 Horcrux Ln', 'Hogwarts', 'HI', 8087481685, 87.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Qui-Gon', 'Jinn', '193 Spirit Way', 'Coruscant', 'TX', 5127489165, 0.00);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'Cthulhu', 'R''lyeh', '8291 Ssendam Court', 'Elder Thing', 'AH', 11101111, 111.11);
INSERT INTO CUSTOMERS
VALUES (seq_cust_id.nextval, 'John', 'Wick', '690 GunFu Terrace', 'Daisy City', 'TX', 5121657931, 901.00);
