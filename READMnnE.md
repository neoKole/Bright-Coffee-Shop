# Bright Coffee Shop Sales Analysis

**Author:** Neo Kole  
**Project period:** 1 January 2023 – 30 June 2023  
**Project type:** Data Analytics Case Study

## Overview

This project analyses Bright Coffee Shop transaction data for the period January to June 2023. The goal is to turn transaction-level data into useful business information by examining revenue, transaction volume, units sold, store performance, product categories, products, and sales patterns over time.

The dataset contains 149,116 transaction records, three store locations, 80 distinct products, and nine product categories.

## Business Questions

The analysis is designed to answer questions such as:

- What was the total revenue during the reporting period?
- How did revenue change from month to month?
- Which store generated the most revenue?
- Which product categories and products contributed most to revenue?
- How did revenue vary by time of day and by weekday versus weekend?
- How can the results support sales planning, stock management, and staffing decisions?

## Tools Used

- **SQL / Databricks:** Inspect, process, aggregate, and analyse transaction data.
- **Microsoft Excel:** Prepare data, create PivotTables and charts, and build a dashboard.
- **Microsoft PowerPoint:** Present the analysis, findings, limitations, and recommendations.
- **GitHub:** Organise and document the project files.

## Process

1. **Project planning** — Define the business problem, objectives, scope, and analysis questions.
2. **Data inspection** — Review the dataset structure, columns, date range, stores, products, and data quality.
3. **Data processing** — Check data formats and calculate revenue using quantity multiplied by unit price.
4. **SQL analysis** — Calculate key performance indicators and summarise results by month, store, product category, product, and time period.
5. **Excel analysis** — Use PivotTables and charts to compare performance and present the results in a dashboard.
6. **Interpretation** — Identify trends and comparisons supported by the data.
7. **Recommendations** — Suggest practical actions for sales planning, inventory, promotions, and staffing, while distinguishing observations from unverified causes.
8. **Presentation** — Communicate the results and limitations in a PowerPoint presentation.

## Summary of Results

The supplied dataset produced the following headline figures:

- **Total revenue:** 698,812.33
- **Number of transactions:** 149,116
- **Units sold:** 214,470
- **Distinct products:** 80
- **Store locations:** 3
- **Product categories:** 9
- **Highest-revenue month:** June
- **Lowest-revenue month:** February
- **Highest-revenue store:** Hell's Kitchen
- **Highest-revenue product category:** Coffee

The revenue value is shown without a currency symbol because the currency unit was not confirmed in the supplied dataset. Revenue is calculated as transaction quantity multiplied by unit price.

## Key Recommendations

- Investigate the February revenue decline and determine whether it relates to seasonal, operational, or other factors before taking action.
- Review what contributed to the stronger revenue in May and June.
- Compare store performance using revenue, transactions, and units sold.
- Use product and category results to inform stock planning and promotions.
- Use time-of-day patterns to support staffing and service planning.
- Refresh the dashboard regularly as new data becomes available.

## Limitations

- The dataset covers six months only, so it cannot establish full-year seasonality.
- Transaction data shows what was recorded but does not explain causes such as promotions, weather, or local events.
- Revenue is not the same as profit; product costs and margins were not provided.
- Currency was not confirmed, so revenue is reported as a numeric value without a currency symbol.
- Store, category, and product rankings should be checked against the final SQL results and Excel PivotTables before reporting exact values.

## Project Files

Organise the repository using the following folders:

```text
Bright-Coffee-Shop-Sales-Analysis/
├── README.md
├── 1. Project Description and Raw Data/
├── 2. Project Planning/
├── 3. Data Processing/
└── 4. Project Presentation/
```

Suggested contents:

- **1. Project Description and Raw Data:** project description PDF and original CSV dataset.
- **2. Project Planning:** project mind map(s) and Gantt chart.
- **3. Data Processing:** SQL scripts, processed data where appropriate, Excel workbook with PivotTables, graphs, and dashboard.
- **4. Project Presentation:** final PowerPoint presentation and any presentation visuals.

## Conclusion

This project demonstrates a structured data analytics workflow: understanding a business problem, inspecting and processing data, analysing sales with SQL, visualising results in Excel, and communicating evidence-based recommendations. The analysis highlights monthly revenue trends and compares performance across stores, categories, products, and time periods.
