SELECT * FROM "Order";
SELECT * FROM "User";
SELECT * FROM product;
DELETE FROM "User" WHERE id = 1;
DELETE FROM "Order" WHERE id =1;
DELETE FROM product WHERE id= 2;
update "User" set firstname_lastname = '{Мартынов Антон}' where id = 6;
update product set price = 11 where id = 5;
update "Order" set productid = 2 where id = 3;