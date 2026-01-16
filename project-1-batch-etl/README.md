Bronze Layer:
- Ingests raw CSV data
- Stores data in Delta Lake format
- Append-only design

Silver Layer:
- Filters invalid records
- Handles null values
- Enforces correct data types

Gold Layer:
- Aggregates cleaned data
- Creates business KPIs (sales and order counts)
- Optimized for analytics and reporting
