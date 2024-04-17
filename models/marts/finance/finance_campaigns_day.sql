SELECT 
    finance.*
    , ROUND( finance.operational_margin - campaign.ads_cost, 2 )AS ads_margin
FROM {{ref("finance_days")}} AS finance
LEFT JOIN {{ref("int_campaigns_day")}} AS campaign
ON finance.date_date = campaign.date_date


