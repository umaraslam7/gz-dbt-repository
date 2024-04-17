SELECT
    sales.date_date AS date_date
    , sales.orders_id AS orders_id
    , sales.products_id AS products_id
    , sales.revenue AS revenue
    , sales.quantity AS quantity
    , (sales.revenue - (sales.quantity * products.purchase_price)) AS margin
    , (sales.quantity * products.purchase_price) AS purchase_cost
FROM {{ref('stg_raw_sales')}} AS sales
LEFT JOIN {{ref('stg_raw_product')}} AS products
ON sales.products_id = products.products_id
