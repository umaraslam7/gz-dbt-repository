SELECT *
FROM {{ref("stg_raw_adwords")}}
UNION all
SELECT *
FROM {{ref("stg_raw_bing")}}
UNION all
SELECT *
FROM {{ref("stg_raw_criteo")}}
UNION all
SELECT *
FROM {{ref("stg_raw_facebook")}}

