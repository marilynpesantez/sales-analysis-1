# Project Background
This project explores sales, customer, and product-level data from an anonymous retailer, with available records spanning from December 29th, 2010, to January 28th, 2014. Although the original data source is unspecified, the datasets provides a multi-year view of retail activity, making it well-suited for exploratory analysis. This project analyzes overall retail performance to uncover actional insights into sales trends, customer behavior, and product performance. The goal is to uncover opportunities for targeted promotions, customer segmentation strategies, particularly around seasonal fluctuations and holiday-driven demand.


Insights and recommendations are provided on the following key areas:

- **Sales Trend Analysis:** An evluation of monthly and seasonal sales performance, focusing on key metrics such as Sales Revenue, Order Volume, Average Order Value (AOV), and YoY growth. These insights help uncover demand cycles and inform more effective promotion timing and budget allocation.
  **Regional Sales Comparison:** A comparison of sales performance across 6 geographic regions, identifying areas of strength and untapped potential. These insights can support region-specific loyalty strategies and\ customer acquisition efforts.
- **Product Perfromance Evaluation:** An in-depth analysis of high top-performing categories, subcategories, and products to understand their contribution to overall revenue over time. These insights will inform product lifecycle strategy, expansion planning, and potential product bundling or promotional opportunities.
- **Customer Behavior Segmentation:** A segmentation of customers based on demographic attributes (e.g., age group, gender) to reveal trends in purchasing behavior and customer value. These insights can guide personalized marketing, loyalty programs, and the identification of high-value customer segments.

The SQL queries used to inspect and clean the data for this analysis can be found here 

Targed SQL queries regarding various business questions can be found here .

An interactive Tableau dashboard used to report and explore sales trends can be found here [link].


# Data Structure & Initial Checks

The companies main database structure as seen below consists of three tables: gold_customers, gold_sales, and gold_products with a total row count of 79,177 records.

![image](https://github.com/user-attachments/assets/04c04908-615a-467a-898d-922df679be3d)

# Executive Summary

### Overview of Findings

Revenue performance from 2011 to 2013 was shaped by product mix and pricing strategy, which influenced volitality in demand. A poorly timed discontinuation of the top-selling Road Bike model led to considerable revenue decline in 2012, while the 2013 rebound was driven by high-volume Mountain Bike sales and more broadly, the introduction of lower-cost products in the new Accessories and Clothing categories. Future revenue stability depends on aligning product transitions with usage/buyer behavior, using lower-ticket items to drive volume and customer acquisition. Regional sales cycles should be centered around stimulating demand in high AOV regions and upselling during periods of high demand.

[Visualization, including a graph of overall trends or snapshot of a dashboard]


# Insights Deep Dive
### Sales Over Time:

* **Overall sales revenue decreased by $1,232,857 from 2011 to 2012, a 17.43% YoY drop.** This is supported by large decreases in average order value across all six regions, with overall AOV falling by 44.02%.
 
* **Sales performance rebounded in 2013, with overall sales revenue increasing by $10,507,639, a 179.86% YoY increase from 2012. Order volume also surged, growing by 551.24%.** This steep growth coincided with the launch of two new product categories: Accesories and Clothing. While this brought down average order value even further, the product expansion allowed for lower-cost entry points into the retailer's shop. 

* **Revenue peaked at $1,874,128.00 in December 2013, while order volume hit a high of 2,192 the same month.** This seasonal spike aligns with a universal surge in retail activity leading up to the end-of-year holidays. Compared to December 2012, revenue grew by 200.12% and order volume by 517.46%, underscoring the interaction between the expanded product mix and holiday demand.

![Time-Series (Overall)](https://github.com/user-attachments/assets/c2db7fe5-d43e-42c9-9134-722931184b7f)

### Regional Trends:
  
* **The U.S. and Australia are the company's top revenue-generating regions, making up 31.21% and 30.86% of historical revenue, respectively.** This high performance relative to other regions is driven by higher levels of order volume, as well as high AOV in Australia. However, both markets along with Canada were the drivers of the 2012 revenue decline. While all regions experienced a dip in in Average Order Value (AOV), these three countries had the lowest percentage gains in order volume, insufficient to offset the drop in AOV. This resulted in a -46.18% revenue decrease in Canada, a 41.47% drop in the U.S., and a -16.98% decrease in Australia.

* **Australia recorded the highest average order value across all three years**, indicating that customers in the region are willing to make higher-value purchases on average. Given this purchasing behavior, increasing order volume in this region presents a key growth opportunity.

![Region](https://github.com/user-attachments/assets/b3fae57b-4678-4350-b26d-b9f80d4a8f3e)

### Product Performance:

* **The Bike category is the business's primary revenue driver, accounting for 96.46% of total revenue.** In 2012, total revenue declined dropped YoY by 17.43%, driven entirely by a decrease in Road Bike sales within in the United States, Canada, and Australia. Road Bike sales in these three regions alone had previously made up 64.14% of total revenue in 2011. Meanwhile, the Mountain Bike subcategory helped offset the losses experienced in 2012. Though average selling price of Mountain bikes decreased by $1,312 in 2012, unit sales were improved by 177.97%. 

* **The loss of the high-performing Road-150 model was the source of the 2012 revenue decline within the Road Bike subcategory.** This model generated $5,524,432 in 2011 (78.08% of total revenue that year) and held the top spot for Road Bike sales in all 6 markets. It was discontinued in 2012 and replaced by the Road-250, which already sat at a lower average selling price of $2,279.14 and failed to generate comparable demand. This model brought in only $2,719,010 in 2012, less than half that of the Road-150 in 2011. This switch had the greatest negative impact on Road Bike sales the U.S. and Australia, where it had previously contributed considerably to overall revenue. 

* **The model upgrade within the Mountain Bike subcategory was responsible for substantial lift in revenue.** The Mountain-200, which replaced the earlier Mountain-100 model, sold 180.05% more units in 2012 than the Mountain-100 did the previous year, alleviating the impact of Road Bike losses. This volume-driven revenue growth was accelerated in 2013, when the Mountain-200 became the top-performing product across all six markets, making up 34.61% of sales revenue that year. The upgrade contributed substantially to the Mountain Bike revenue increase of $4,076,615.00 in 2013, a 180.13% YoY change for the subcategory.

* **Touring Bikes and broader product expansion fueled strong revenue recovery in 2013.** The company introduced Accesories and Clothing in late 2012, which despite only accounting for 6.06% of revenue in 2013, expanded the product mix and and likely supported customer acquisition. These lower-cost items had an average selling price of $23 in 2013 and sold a total of 43,120 units in that first full year. This boost in traffic likely supported the sales of high-value items like bikes. Touring bikes saw strong adoption in the US and Australia, making up 23%.38% of sales revenue in 2013.

![Product 1](https://github.com/user-attachments/assets/7d9ea205-632f-45df-bfb9-fabe284880d4)

# Recommendations:

Based on the insights and findings above, we would recommend the product and marketing teams to consider the following: 

* **Manage product lifecycles based on historical performance and regional considerations.** The discontinuation of the Road-150 model, despite being a top-selling product across all six markets in 2011, led to a sharp revenue decline in 2012. To prevent similar losses and optimize product upgrades, future product retirements should be data-informed, especially in the company's most profible markets. Successor models should be tested for market fit before fully phasing out top performers. 

* **Tailor product strategy basad on usage context and buyer behavior**. Mountain bikes typically endure harsher terrain and riding conditions, making it more frequently replaced and sensitive to price. This likely contributed to the success of the lower cost Mountain-200 model. Road bikes are used on smoother surfaces, allowing for a longer lifespan. Customers may be willing to invest more in road bike durability, making the shift to a lower-cost model potentially damanging to revenue. User behavior should be considered when setting prices and introducing successor models. 

* **Use lower-ticket items as a tool for customer acquisition and upselling during high-volume periods.** Accessories and Clothing played a key roal in the 2013 revenue recovery by expanding the product mix, attracting more customers and boosting order volume. This new traffic likely supported the lift in sales of higher priced products. The business should continue developing low-cost offerings and implement limited time discounts and bundling offers with high-value items to increase average order value. These campaigns should be concentrated in June-August and October-December, when order volume levels are already elevated.

* **Capitalize on markets with high average order value.** Leverage targeted campaigns and incentives to increase order frequency in regions where customers are already willing to spend more per transaction. Could run a targeted email campaign for those that have made an Accesories or Clothing purchase in the last 6 months. Implement a loyalty program, incentivize customers to increase purchase frequency. 

# Assumptions and Caveats:

Throughout the analysis, several assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Caveat 1: For all records with a valid order_date, shipping_date was confirmed to be 7 days after order_date. Thus, shipping_date was used to calculate order_date value for records where order_date = 0000-00-00.
  
* Caveat 2: Records with birthdate = 0000-00-00 were excluded from customer-level demographic analysis, as valid age data was not available.

* Assumption 1: Fields such as order recency and customer age were calculated based on the most recent valid order_date. It is assumed that no additional data is available beyond that final recorded transaction in January of 2014. 

