# sales-analysis-1

# Project Background
This project explores sales, customer, and product-level data from an anonymous retailer, with available records spanning from December 29th, 2010, to January 28th, 2014. Although the original data source is unspecified, the datasets provides a rich, multi-year view of retail activity, making it well-suited for exploratory analysis. This project analyzes overall retail performance to uncover actional insights into sales trends, customer behavior, and product performance. The goal is to uncover opportunities for targeted promotions, customer segmentation strategies, particularly around seasonal fluctuations and holiday_driven demand.


Insights and recommendations are provided on the following key areas:

- **Sales Trend Analysis:** A historical evluation of monthly and seasonal sales performance, focusing on key metrics such as Sales Revenue, Order Volume, Average Order Value (AOV), and growth. These insights help uncover demand cycles and inform more effective promotion timing and resource allocation. 
- **Product Perfromance Evaluation:** An in-depth analysis of high top-performing products, categories, and subcategories to understand their contribution to overall revenue. These insights will inform inventory planning, merchandising strategy, and potential product bundling or promotional opportunities.
- **Regional Sales Comparison:** A comparison of sales performance across different geographic regions, identifying areas of strength and underperformance. These insights can support region-specific marketing strategies, expansion planning, and targeted customer acquisition efforts.
- **Customer Behavior Segmentation:** A segmentation of customers based on demographic attributes (e.g., age group, gender) to reveal trends in purchasing behavior and customer value. These insights can guide personalized marketing, loyalty programs, and the identification of high-value customer segments.

The SQL queries used to inspect and clean the data for this analysis can be found here 

Targed SQL queries regarding various business questions can be found here [https://github.com/marilynpesantez/Portfolio1/blob/main/Queries.sql].

An interactive Tableau dashboard used to report and explore sales trends can be found here [link].


# Data Structure & Initial Checks

The companies main database structure as seen below consists of one table broken used to create 4 unique views with a total row count of 1067371 records. A description of each view is as follows:
- **sales_view:** All records where Quantity is greater than zero, UnitPrice is greater than zero, StockCode does not equal 'B', and InvoiceNo does not begin with 'C' are assumed to represent paid sales transactions.
- **cancellations_view:** All records where Quantity is less than zero and InvoiceNo begins with 'C' are assumed to represent cancelled transactions. Cancellation patterns are acknowledged in the analysis but not included in saless_view as they distort Order Volume and Average Order Value metrics.
- **giveaways_view:** All records where where Quantity is greater than zero, UnitPrice equals 0, CustomerID is not empty, and Item is not empty are assumed to represent items given away to customers for free through special promotions or bundles.
- **test_misc_view:** All records where UnitPrice equals 0 and CustomerID is empty are assumed to be system tests that do not represent any tangible transactions.
- **adjustments_view:** All records where where StockCode equals 'B' or where Quantity is greater than 0 and Invoice begins with 'C'.
- **duplicates_view:** All records where each column value is exactly equal to the values in some other row. A Row_Number() function was applied to the original view1, partitioning over each column. This was done to identify duplicate records (where row_num > 1) and differenciate that from original record (where row_num = 1). These duplicates were labeled and excluded from the sales_view.

![image](https://github.com/user-attachments/assets/118714a4-6836-44be-9bba-ed9fbd1fdf86)

# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

[Visualization, including a graph of overall trends or snapshot of a dashboard]



# Insights Deep Dive
### Sales Trends:

* **The company's sales figures peaked in November 2011 with 2,770 orders totaling $1,503,866.78 in monthly revenue.** This aligns with a universal peak in retail shopping and gift purchases leading up to the end-of-year holidays.
  
* **Sales revenue and order volume dipped in December following holiday season booms in both 2010 and 2011.** Revenue declined for three consecutive months starting in December 2010, dropping to its lowest point in February 2011 with $522,545.56 in revenue. Order volume followed a similar trend, dipping in December 2010 and hitting a low in February 2011 before recovering the following month. 
  
* **Revenue and order volume recover in March, staggering through the summer months.**
  
* **While average order value peaked in December 2011, there was also a peak in average order value of cancelled transactions.** The peak in cancelled order volume during this same month may correspond with wholesaler customers overanticipating demand for their own respective shops and cancelled their orders through this wholesaler.

![YOY 2010-2011](https://github.com/user-attachments/assets/9dcc2f40-885b-47da-9ace-bcdb7488d417)

![Monthly Sales Trends (2009 - 2011)](https://github.com/user-attachments/assets/fb8c035e-911e-46ef-8e36-1b7db026d929)


### Regional Trends:

* **United Kingdom dominates in sales revenue and order volume, signaling the company's robust market presence in the region.** This may be reflective of the UK's large customer base and strong demand for gift-ware products, as well as logistical efficiencies in buying from a UK-based wholesaler. While the market is large and order volume is high, the relatively lower AOV in comparison to other regions indicates that a larger volume of lower-value orders is driving overall sales for the region. With the UK holding a top position, increasing AOV in this key market should be a key focus.
  
* **Strong performers in Western Europe (Germany, EIRE, France, and Netherlands).** High sales revenue in these regions is supported by morderate-to-high order volumes and AOV, indicating a mix of both frequenty and high-value transactions across these countries. Customer retention should be a key focus. 
  
* **EIRE ranks second in total sales revenue after UK, but has a higher AOV than the UK.** A high AOV in EIRE indicates a more wholesale-focused customer base that is willing to make larger purchases. While customers in Ireland are spending more per transaction on average, overall order volume is lower than in the UK. Customer base size acts as greater limiting factor on order volume in EIRE compared to the UK. Driving purchase frequency should be a key focus.


[Visualization specific to category 3]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Sales revenue and order volume experience month-over-month growth from August to November, signaling a holiday seasonality effect from a higher universal demand for gift-ware. **The company should double down on promotions, discounts, and advertising spend during November and December to take advantage of these seasonality effects. Further inventory planning should be carried out to meet demand, particularly for items that have sold out in the past.**
  
* AOV dips from January to March. **The business should offer post-holiday promotions to boost order volume and sales. To reach existing customers, using a re-engagement email campaign to pull customers back in and encourage high-value purchases through pricing and bundling strategies/offers.**
  
* Sales revenue and order volume recover in March, fluctuating through to August. **The business should consider running targeted spring and summer campaigns catered to major holidays or events celebrated in each respective region. The retailer can drive order volume by tapping into these unique "ocassions" and celebrations for regions that already have a moderate-to-high AOV. The Month of may holds a lot of potential, with Mother's day occuring across many European countries as well local holidays within France, Germany, Italy, and Spain. March holds opportunity for targeted campaigns in Norway (Easter preparations) and Ireland (St. Patrick's Day).**
  
* High Sales and Order Volume in the UK. **Consider offering discounts on larger orders or creating bundled packages. This could boost average order value and contribute to substantial revenue growth.**
  
* Moderate-to-high AOV in Western Europe, suggesting customers are willing to spend more on each transaction. **To capitalize on this and drive order volume, considering implementing loyalty programs, as well as expanding product selection or even renaming product lines & categories throughout the year. This will position the retailer as a destination for more than just giftware, while incentivizing existing wholesale customers to increase their purchase frequency.**

* With the reatiler being positioned as a giftware destination, a big chunk of sales revenue is dependent on end-of-year holiday success. **The company would benefit from establishing relationships with wholesale customers that carry a broader range of products and are more likely to the make bulk purchases throughout the year. This is dependent on expanding product selection or crosslisting products under different website sections to improve the discoverability of versatile "giftware" items.**

* Low Sales and Order Volume in Saudi Arabia, Brazil, and Nigeria. **Consider investing in localized marketing campaigns that cater to local customs and holidays. Explore relationships with local wholesalers to increase visibility and tap into these emerging markets.**

# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: records where InvoiceNo began with 'A' and "StockCode' equaled 'B' were assumed to be bad debt adjustments, these were excluded from the analysis).
  
* Assumption 2 (ex: records where where Quantity is greater than zero and UnitPrice equals 0 did not contribute to sales revenue, these were excluded from the analysis). 
