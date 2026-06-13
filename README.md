# Self-Service Analytics Engine

This repo contains the orchestration, dbt models, and metadata recipes for a prototype analytics self-service engine.

Pipeline:

Gmail -> Fivetran -> Databricks -> dbt silver/gold -> Unity Catalog -> Genie/Lakeview/Power BI -> DataHub
