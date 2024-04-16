SELECT
    (sales.revenue - products.purchase_price) AS margin
    , (sales.quantity * products.purchase_price) AS purchase_cost
FROM {{ref('stg_raw_sales')}} AS sales
LEFT JOIN {{ref('stg_raw_product')}} AS products
ON sales.products_id = products.products_id
