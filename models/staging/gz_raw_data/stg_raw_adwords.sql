with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaign_name,
        CAST(ads_cost AS INT64) AS ads_cost,
        impression,
        click

    from source

)

select * from renamed
