B105 – Coffee Sales Statistical Analysis

Statistical analysis project built with R for the B105 Applied Statistical Modelling course. Examines whether payment method (cash vs. card) affects transaction amount on a coffee vending machine, using descriptive and inferential statistics.

Features
Data cleaning & preprocessing (date/time parsing, weekday & hour extraction)
Exploratory data analysis (bar chart, boxplot, histogram)
Assumption checks (Shapiro-Wilk normality test, Q-Q plots, F-test for variance)
Hypothesis testing (Welch's two-sample t-test)
Business insights & recommendations
Technologies
R (base R only — no external packages)
Getting Started
# 1. Download the dataset from Kaggle
# 2. Update the file path in coffee_sales_analysis.R
# 3. Run in R or RStudio
Rscript coffee_sales_analysis.R
Dataset

Coffee Sales dataset on Kaggle (Isaienkov, 2024) — 3,636 transactions from a single vending machine, since March 2024. Columns: date, datetime, cash_type, card, money (UAH), coffee_name.

Key Finding

Cash transactions average 35.80 UAH vs. 31.65 UAH for card — a statistically significant difference (t = -7.88, p = 6.24 × 10⁻¹²). Full analysis, limitations, and recommendations are in the PDF report.
