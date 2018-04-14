CREATE OR REPLACE PROCEDURE p_new_ord(
	p_customer_id IN ORDERS.customer_id%TYPE,
	p_store_id IN ORDERS.store_id%TYPE,
	p_book_id IN ORDERS.book_id%TYPE)

IS
BEGIN

	INSERT INTO ORDERS ("Customer_ID", "Store_ID", "Book_ID")
	VALUES (p_customer_id, p_store_id, p_book_id);
	
	COMMIT;
	
END;
/

CREATE OR REPLACE FUNCTION f_ord_total





Below is syntax option
/*CREATE OR REPLACE TRIGGER p_ord_update
AFTER INSERT OR UPDATE ON orders
FOR EACH ROW

DECLARE*/
CREATE OR REPLACE TRIGGER t_ord_update
AFTER INSERT OR 
UPDATE OF customer_id ON ORDERS
FOR EACH ROW

DECLARE
	v_order_no ORDERS.order_no%TYPE
	
	
	
	
	
	
	
---------------------------------REPORTS----------------------------------------------------------------------------------------------------------
[April 13th, 2018]
--Documented purpose and brief descriptions of the functionality needed to properly create an ORDERS_UPDATE package that
--receives input parameters and returns the calculated values required for transaction record keeping. 