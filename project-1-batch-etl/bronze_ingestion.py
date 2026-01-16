# Bronze layer ingestion logic will be added here
from pyspark.sql import SparkSession

# Initialize Spark session
spark = SparkSession.builder.getOrCreate()

# Input and output paths
input_path = "/mnt/raw/sales/"
bronze_path = "/mnt/bronze/sales/"

# Read raw CSV data
raw_df = (
    spark.read
    .option("header", "true")
    .option("inferSchema", "true")
    .csv(input_path)
)

# Write data to Bronze Delta table
(
    raw_df.write
    .format("delta")
    .mode("append")
    .save(bronze_path)
)
