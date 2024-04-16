SELECT
   orders.orders_id
   , orders.date_date
   , orders.revenue 
   , orders.quantity
   , orders.purchase_cost
   , orders.margin
   , ROUND((orders.margin + ship.shipping_fee - ship.log_cost - ship.ship_cost),2) AS operational_margin
FROM {{ref("int_orders_margin")}} AS orders
LEFT JOIN {{ref("stg_raw_ship")}} AS ship 
ON ship.orders_id = orders.orders_id
   