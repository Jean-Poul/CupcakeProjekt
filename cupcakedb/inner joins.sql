use cupcakedb;
SELECT first_name, last_name, u.users_id, email, password, o.order_id, order_date,
orderline_id, quantity, sum,
t.topping_id, t.name as topping_name, t.price as topping_price,
b.bottom_id, b.name as bottom_name, b.price as bottom_price
FROM users u
inner join `order` o on u.users_id = o.users_id
inner join orderline ol on o.order_id = ol.order_id
inner join topping t on ol.topping_id = t.topping_id
inner join bottom b on ol.bottom_id = b.bottom_id;