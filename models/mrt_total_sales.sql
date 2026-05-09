-- thelook_ecommerceのデータを読み込んで、日別の売上を集計するシンプルなモデル
select
    date(created_at) as order_date,
    sum(sale_price) as total_revenue,
    count(id) as order_count
from `bigquery-public-data.thelook_ecommerce.order_items`
group by 1