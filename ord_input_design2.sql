CREATE OR REPLACE PROCEDURE p_new_ord(
	p_customer_id IN ORDERS.customer_id%TYPE,
	p_store_id IN ORDERS.store_id%TYPE,
	p_book_id IN ORDERS.book_id%TYPE)

AS
BEGIN
	INSERT INTO ORDERS (order_no, customer_id, store_id, book_id)
	VALUES (seq_orders_id.NEXTVAL, p_customer_id, p_store_id, p_book_id);
END p_new_ord;
	
	
---------------------------------REPORTS----------------------------------------------------------------------------------------------------------
[April 14th, 2018]
--Concluded scripting and a little testing of the first procedure using "p_new_ord(1,1,1)". Function call accepts 3 parameters; customer id, store id, and book id. 
--ORDER_TOTAL and WALLET_BAL columns currently remain NULL until function is more fleshed out. 
