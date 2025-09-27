use ecommerce;
show tables ;
select * from ecomrec ;
select * from ecomrec limit 5;
select user_id, product_id,product_name,Quantity from ecomrec;
select user_id, product_id,product_name from ecomrec where Quantity > 3;

SELECT user_id,product_id , product_name,quantity,price FROM ecomrec ORDER BY price>300 DESC LIMIT 10;

SELECT user_id, SUM(price) AS total_sales FROM ecomrec GROUP BY user_id;
SELECT AVG(price) AS avg_price FROM ecomrec;

select * from orderitems ;
select * from orders ;
select orderitems.order_item_id,orderitems.product_id,orders.status from orderitems inner join orders on orderitems.order_item_id = orders.order_id;

select orderitems.order_item_id , orders.customer_id from orders left join orderitems on orderitems.order_id = orders.order_id;

select orderitems.product_id , orders.order_date from orders right join orderitems on orderitems.order_id = orders.order_id;

create view price_details AS select product_id , quantity , price from orderitems where price>1500;
select * from price_details;
drop view final_details; 

create index  myindex on orderitems (product_id);

SELECT order_id, quantity
FROM orderitems
WHERE price >(
    SELECT AVG(price) FROM orders
);













 
 





 




