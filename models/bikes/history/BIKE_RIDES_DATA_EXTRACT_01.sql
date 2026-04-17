{{
    config(
            materialized = 'table',
            database = var('bike_db'),
            schema = var('hst_sch'),
            alias = 'BIKE_RIDES_DATA_EXTRACT'
    )
}}
WITH BIKE AS
(
SELECT
RIDE_ID, 
RIDEABLE_TYPE, 
STARTED_AT, 
ENDED_AT, 
START_STATION_NAME, 
START_STATION_ID,
END_STATION_NAME, 
END_STATION_ID, 
START_LAT, 
START_LNG, 
END_LAT, 
END_LNG, 
MEMBER_CASUAL, 
FILENAME, 
FILE_ROW_NUMBER, 
LOAD_TS

FROM {{source('bike','BIKE_RIDES_DATA_EXTRACT')}}
)
SELECT * FROM BIKE