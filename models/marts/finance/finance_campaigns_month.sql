SELECT 
    DATE_TRUNC(date_date, MONTH) AS month
    , ROUND(SUM(nb_transactions),0) AS nb_transactions
    , ROUND(SUM(revenue),2) AS revenue
    , ROUND(AVG(average_basket),2) AS average_basket
    , ROUND(SUM(margin),2) AS margin
    , ROUND(SUM(operational_margin),2) AS operational_margin
    , ROUND(SUM(ads_margin),2) AS ads_margin
FROM {{ref("finance_campaigns_day")}}
GROUP BY month
ORDER BY month DESC