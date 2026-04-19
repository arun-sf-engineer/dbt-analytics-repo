{{
    config(
            materialized ='view',
            database = var('bike_db'),
            schema = var('stg_sch')
    )
}}

select *
 from {{ref('BIKE_RIDES_DATA_EXTRACT_01')}}