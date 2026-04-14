{{
    config(
            materialized = 'view',
            database = var('db_nm'),
            schema = var('sch_nm')
    )
}}

WITH TEST AS
(
    SELECT * FROM {{source('tpch_sf1','CUSTOMER')}}
)
SELECT * FROM TEST