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
-----------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION get_wallet_bal(f_id IN NUMBER) --This function retrieves the customers WALLET BALANCE.
	RETURN NUMBER 
	IS wallet_bal NUMBER(5,2);
	
	BEGIN
		SELECT wallet 
		INTO wallet_bal
		FROM customers
		WHERE f_id IN customer_id;
		RETURN (wallet_bal);
	END;
/
SELECT DISTINCT get_wallet_bal(5) FROM customers; --Function Call Example


CREATE OR REPLACE FUNCTION get_ord_total (f_bk_id IN NUMBER) --This function retrieves the customers ORDER TOTAL. Essentially it is the price of one book.
	RETURN NUMBER					     --since there is not quantity option yet. 
	IS ord_total NUMBER(5,2);
	
	BEGIN
		SELECT price
		INTO ord_total
		FROM books
		WHERE f_bk_id IN book_id;
		RETURN (ord_total);
	END;
/
SELECT DISTINCT get_ord_total(1) FROM books; --Function Call Example

	
---------------------------------REPORTS----------------------------------------------------------------------------------------------------------
[April 14th, 2018]
--Concluded scripting and a little testing of the first procedure using "p_new_ord(1,1,1)". Procedure call accepts 3 parameters; customer id, store id, and book id. 
--ORDER_TOTAL and WALLET_BAL columns currently remain NULL until function is more fleshed out. 
[April 16th, 2018]
--I wrote up a query for testing to ensure that the relationship between tables is valid. Will update with more queries involving
--more than 2 tables. 
[April 18th, 2018]
--Function started and tested. There is an error w/logic, I need to get it to return a single row instead of all rows in table. 
[April 23rd, 2018]
--Solved my issue with the functions. Now they retrieve the single value that is needed for the calculations. In addition to that,
--a second function was created for retrieving order totals which will be used for more calculations. 
