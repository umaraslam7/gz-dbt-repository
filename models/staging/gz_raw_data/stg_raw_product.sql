SELECT 
    products_id
    , purchSE_PRICE AS purchase_price
FROM {{source('gz_raw_data','raw_gz_product' )}}
