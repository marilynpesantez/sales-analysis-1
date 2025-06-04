# Project Background
This project explores sales, customer, and product-level data from an anonymous retailer, with available records spanning from December 29th, 2010, to January 28th, 2014. Although the original data source is unspecified, the datasets provides a rich, multi-year view of retail activity, making it well-suited for exploratory analysis. This project analyzes overall retail performance to uncover actional insights into sales trends, customer behavior, and product performance. The goal is to uncover opportunities for targeted promotions, customer segmentation strategies, particularly around seasonal fluctuations and holiday-driven demand.


Insights and recommendations are provided on the following key areas:

- **Sales Trend Analysis:** A historical evluation of monthly and seasonal sales performance, focusing on key metrics such as Sales Revenue, Order Volume, Average Order Value (AOV), and growth. These insights help uncover demand cycles and inform more effective promotion timing and resource allocation. 
- **Product Perfromance Evaluation:** An in-depth analysis of high top-performing products, categories, and subcategories to understand their contribution to overall revenue. These insights will inform inventory planning, merchandising strategy, and potential product bundling or promotional opportunities.
- **Regional Sales Comparison:** A comparison of sales performance across different geographic regions, identifying areas of strength and underperformance. These insights can support region-specific marketing strategies, expansion planning, and targeted customer acquisition efforts.
- **Customer Behavior Segmentation:** A segmentation of customers based on demographic attributes (e.g., age group, gender) to reveal trends in purchasing behavior and customer value. These insights can guide personalized marketing, loyalty programs, and the identification of high-value customer segments.

The SQL queries used to inspect and clean the data for this analysis can be found here 

Targed SQL queries regarding various business questions can be found here [https://github.com/marilynpesantez/Portfolio1/blob/main/Queries.sql].

An interactive Tableau dashboard used to report and explore sales trends can be found here [link].


# Data Structure & Initial Checks

The companies main database structure as seen below consists of three tables: gold_customers, gold_sales, and gold_products with a total row count of 79,177 records.

![image](https://github.com/user-attachments/assets/04c04908-615a-467a-898d-922df679be3d)

# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

[Visualization, including a graph of overall trends or snapshot of a dashboard]



# Insights Deep Dive
### Regional Trends Over Time

* **Overall sales revenue experienced a 27.14% drop from 2011 to 2012.** This may reflect the aftershock of the global financial crisis which led to a significant decrease in consumer spending. This is supported by large decreases in average order value across all six regions. However, with smaller order volume growth rates to counteract the dips in AOV, only Canada, the United States, and Australia saw decreases in revenue from 2011 to 2012. 

* **All six regional markets experienced massive growth from 2012 to 2013, with a 228.81% increase in overall revenue and a 551.18% increase in overall order volume.** This YOY growth coincides with the introduction of new product Accesories and Clothing. While these lower priced items make for lower AOV in 2013, these  new product categories may have helped get the retailer's foot in the door with new customers. 

* **Revenue peaked at $767,666 in December 2013, while order volume reached 2,157 the same month.** This aligns with a universal surge in retail shopping leading up to the end-of-year holidays.
  
* **The US and Australia lead in revenue, driven by higher levels of order volume.** These regions, alone with Canada, experienced the greatest drops in revenue from 2011 to 2012, but the greatest rise in revenue from 2012 to 213. Thus, these markets seem to be more volatile than the others. 

* 
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

Throughout the analysis, several assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Caveat 1: Records with order_date = 0000-00-00 were excluded from all time-based analyses to avoid skewed trends and inaccurate date aggregations. 
  
* Caveat 2: Records with birthdate = 0000-00-00 were excluded from customer-level demographic analysis, as valid age data was not available..

* Assumption 1: Fields such as order recency and customer age were calculated based on the most recent valid order_date. It is assumed that no additional data is available beyond that final recorded transaction in January of 2014. 

