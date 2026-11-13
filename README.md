# Superstore Sales & Profitability Analytics

End-to-end sales and profitability analytics project using **PostgreSQL, SQL, and Tableau** to transform transactional retail data into an interactive business-performance dashboard.

**Tableau Dashboard:** [Tableau Public](https://public.tableau.com/views/SuperstoreSalesandProfitabilityAnalytics/PerformanceOverview?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Project Overview

This project analyzes the Tableau Superstore dataset to evaluate sales performance, profitability, order volume, and product returns across customers, products, categories, regions, and time periods.

The project demonstrates an end-to-end analytics workflow: building a relational database in PostgreSQL, transforming and integrating source data with SQL, preparing a curated analytical dataset, and developing an interactive Tableau dashboard for business reporting.

## Technical Workflow

1. Created a **PostgreSQL database** using the Superstore Orders, Returns, and People datasets.
2. Developed a **SQL data pipeline** to clean, transform, and integrate the source tables.
3. Created a curated SQL view for downstream analysis and visualization.
4. Exported the analytical dataset for use in Tableau Public.
5. Built an interactive **Tableau dashboard** to monitor sales and profitability performance.

## Dashboard

**Tableau Public:** [View Dashboard](PASTE-TABLEAU-DASHBOARD-LINK-HERE)

The dashboard includes key performance indicators and interactive views designed to help evaluate business performance across multiple dimensions.

### Key Metrics

- **Total Profit**
- **Profit Margin**
- **Total Orders**
- **Return Rate**

## Data Preparation

The SQL workflow combines the primary Superstore datasets and creates an analysis-ready dataset containing fields including:

- Order and shipping dates
- Customer and segment information
- Geographic region
- Product category and sub-category
- Sales
- Quantity
- Discount
- Profit
- Regional manager
- Return status

A return indicator is created by joining the Orders and Returns data, allowing return behavior to be analyzed alongside sales and profitability.

## Tools

- **PostgreSQL** — database creation and data transformation
- **SQL** — joins, calculated fields, and analytical data preparation
- **Tableau Public** — dashboard development and visualization
- **Excel** — intermediate data export for Tableau Public

## Project Materials

- **Tableau Dashboard:** [Tableau Public](https://public.tableau.com/views/SuperstoreSalesandProfitabilityAnalytics/PerformanceOverview?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
- **SQL Code:** Available in this repository

## Skills Demonstrated

- Relational data modeling
- SQL data transformation
- Multi-table joins
- KPI development
- Business analytics
- Data visualization
- Dashboard design
- Translating transactional data into business insights
