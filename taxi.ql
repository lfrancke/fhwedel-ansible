CREATE DATABASE taxi;

CREATE EXTERNAL TABLE taxi.yellow (
  VendorID INT,
  tpep_pickup_datetime TIMESTAMP,
  tpep_dropoff_datetime TIMESTAMP,
  passenger_count BIGINT,
  trip_distance DOUBLE,
  RatecodeID BIGINT,
  store_and_fwd_flag STRING,
  PULocationID INT,
  DOLocationID INT,
  payment_type BIGINT,
  fare_amount INT,
  extra DOUBLE,
  mta_tax DOUBLE,
  tip_amount INT,
  tolls_amount BIGINT,
  improvement_surcharge DOUBLE,
  total_amount DOUBLE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/data/taxi/';

LOAD DATA INPATH '/data/taxi' OVERWRITE INTO TABLE taxi.yellow;
ANALYZE TABLE taxi.yellow COMPUTE STATISTICS;
