CREATE OR REPLACE PROCEDURE p_new_ord(
	p_Order_No    IN ORDERS.Order_No%TYPE,
	p_Customer_ID IN ORDERS.Customer_ID%TYPE,
	p_Store_ID    IN ORDERS.Store_ID%TYPE,
	p_Book_ID     IN ORDERS.Book_ID%TYPE,
	p_Order_Total IN ORDERS.Order_Total%TYPE,
	p_Wallet_Bal  IN ORDERS.Wallet_Bal%TYPE)
IS
BEGIN

	--Continue Building upon procedure.

