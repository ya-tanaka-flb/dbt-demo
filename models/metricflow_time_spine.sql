{{ config(materialized='table') }}

WITH days AS (
    SELECT date_day
    FROM UNNEST(
        GENERATE_DATE_ARRAY(DATE('2010-01-01'), DATE('2030-12-31'), INTERVAL 1 DAY)
    ) AS date_day
)

SELECT
    CAST(date_day AS DATE) AS date_day
FROM days