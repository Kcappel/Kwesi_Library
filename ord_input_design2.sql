CREATE OR REPLACE PROCEDURE p_new_ord(
	p_customer_id IN ORDERS.customer_id%TYPE,
	p_store_id IN ORDERS.store_id%TYPE,
	p_book_id IN ORDERS.book_id%TYPE)

AS
BEGIN
	INSERT INTO ORDERS (order_no, customer_id, store_id, book_id)
	VALUES (seq_orders_id.NEXTVAL, p_customer_id, p_store_id, p_book_id);
END p_new_ord;

--This query pulls information regarding order specific details. 
SELECT orders.order_no, customers.customer_id, orders.book_id, first_name, last_name, city, state
FROM orders LEFT JOIN customers
ON orders.customer_id = customers.customer_id;
	
	
---------------------------------REPORTS----------------------------------------------------------------------------------------------------------
[April 14th, 2018]
--Concluded scripting and a little testing of the first procedure using "p_new_ord(1,1,1)". Function call accepts 3 parameters; customer id, store id, and book id. 
--ORDER_TOTAL and WALLET_BAL columns currently remain NULL until function is more fleshed out. 
[April 16th, 2018]
--I wrote up a query for testing to ensure that the relationship between tables is valid. Will update with more queries involving
--more than 2 tables. 
