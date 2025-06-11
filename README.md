# Project Background
This project explores sales, customer, and product-level data from an anonymous retailer, with available records spanning from December 29th, 2010, to January 28th, 2014. Although the original data source is unspecified, the datasets provides a rich, multi-year view of retail activity, making it well-suited for exploratory analysis. This project analyzes overall retail performance to uncover actional insights into sales trends, customer behavior, and product performance. The goal is to uncover opportunities for targeted promotions, customer segmentation strategies, particularly around seasonal fluctuations and holiday-driven demand.


Insights and recommendations are provided on the following key areas:

- **Sales Trend Analysis:** A historical evluation of monthly and seasonal sales performance, focusing on key metrics such as Sales Revenue, Order Volume, Average Order Value (AOV), and growth. These insights help uncover demand cycles and inform more effective promotion timing and resource allocation. 
- **Product Perfromance Evaluation:** An in-depth analysis of high top-performing products, categories, and subcategories to understand their contribution to overall revenue over time. These insights will inform inventory planning, merchandising strategy, and potential product bundling or promotional opportunities.
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
### Sales Over Time:

* **Overall sales revenue experienced a 17.43% drop from 2011 to 2012.** This may reflect the aftershock of the global financial crisis which led to a significant decrease in consumer spending. This is supported by large decreases in average order value across all six regions (prior to the introduction of lower priced categories).

* **Sales metrics recovered in 2013, with a 179.86% increase in overall sales revenue and a 551.24% rise in order volume.** This YOY growth coincides with the introduction of new product Accesories and Clothing. While these lower priced items make for lower AOV in 2013, these  new product categories may have helped get the retailer's foot in the door with new customers.

* **Revenue peaked at $1,874,128.00 in December 2013, while order volume reached 2,129 the same month.** This aligns with a universal surge in retail shopping leading up to the end-of-year holidays.

![Time-Series (Overall)](https://github.com/user-attachments/assets/c2db7fe5-d43e-42c9-9134-722931184b7f)

### Regional Trends:

* **Revenue declines in 2012 was primarily driven by Canadian, U.S., and Australian markets**, which saw the greatest year-over-year drops. While all regions experienced a dip in in Average Order Value (AOV), these three countries had the smallest perentage gains in order volume, insufficient to offset the drop in AOV.
  
* **The U.S. and Australia are the company's top revenue-generating regions**, driven by consistently higher order volume. However, both markets as well as Canada experienced the steepest revenue declines from 2011 to 2012, followed by the strongest recoveries from 2012 to 2013. This signals a pattern of volatility in the company's most critical markets. 

* **Australia recorded the highest average order value in 2013**, indicating that customers in the region are willing to make higher-value purchases on average. Given this purchasing behavior, increasing order volume in this region presents a key growth opportunity.

![Region](https://github.com/user-attachments/assets/b3fae57b-4678-4350-b26d-b9f80d4a8f3e)

### Product Performance:

* **The Bike category is the business's primary revenue driver, accounting for 96.46% of total revenue.** In 2012, total revenue declined by $1,232,857 (a 17.43% drop from 2011), largely due to a decrease in Road Bike revenue in the United States, Canada, and Australia. Together, these markets made up 79.03% of total Road bikes sales in 2011. Meanwhile, Mountain Bike Sales helped stabilize overall perfromance during the 2012 dip and become a key driver of growth in 2013. Though average selling price of the Mountain bikes decreased from $3,373 in 2011 to $2,061 in 2012, unit sales increased by 177.97%, with growth across all six markets. This increase in volume helped alleviate the impact of Road Bike losses and contributed to a revenue increase of $4,076,615.00 in 2013 - 180.13% YoY growth within the Mountain Bike subcategory. the strong recovery seen in 2013.  increase in  and contributed to the strong sales recovery seen in 2013.

  **Touring Bikes and broader product expansion fueled revenue growth in 2013.** The introduction of lower-cost products within the new Accesorries and Clothing categories diversified the company's offerings, boosting overall traffic. This expanded product mix helped attract a wider customer base, supporting the sales of high-value items like bikes. In addition, touring bikes saw strong adoption in the US and Australia, contributing alongside Mountain and Road Bikes to the surge in revenue.

* **The loss of the high-performing Road-150 model was a key driver of the 2012 revenue decline in the Road Bike subcategoty.** This model, which sat at a higher price point and garnered promising sales across all six markets, was discontinued in 2012. It was replaced by the Road-250 model, which sold at a lower price and failed to generate the same demand. This switch had the greatest impact in the U.S. and Australia, where it had previously contributed considerably to overall revenue. The drop in Road Bike sales in these two markets was a major factor in the company's overall revenue decline in 2012.

* **On the other hand, the model upgrade within the Mountain Bike subcategory helped drive revenue growth.** The Mountain-200, which replaced the earlier Mountain-100 model, led to a steady increase in sales revenue throughout 2012 and even steeper growth in 2013. This was particularly impactful within the U.S. market, where Mountain bike sales become a top contributor to overall revenue growth.

*The business should explore other cross-category opportunities as a means of getting the 'foot in the door". Entry-level products could be bundless with high-value items to encourage upselling.
![Product 1](https://github.com/user-attachments/assets/7d9ea205-632f-45df-bfb9-fabe284880d4)

# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* To prevent revenue loss and optimize product upgrades, the business should take a data-driven approach to managing product lifecycles, especially in key markets like the U.S. and Australia, which accounted for 34.64% and 36.23% of total revenue in 2011, respectively. especially as it realtes to high-value categories like Road Bikes and Mountain Bikes. The discontinuation of high earning Road-150 model led to substantial revenue decline, particularly in the U.S. and Australia, the company's most profitable markets. Future product retirements should be data-informed. Successor models should be tested before fully phasing out top performers. 

* In contrast, the succesful transition from Mountain-100 to Mountain-200 underscores the fact that model updgrades can fuel growth when aligned with customer demand. The company should carry out this approach on other subcategories by identifying which products fall above and below the average sales revenue within the subcategory. New models should be introduced based on previous success (price point, popularity, regional trends) while maintaining an appeal across customer demographics.
*
* New models should Sales revenue and order volume experience month-over-month growth from August to November, signaling a holiday seasonality effect from a higher universal demand for gift-ware. **The company should double down on promotions, discounts, and advertising spend during November and December to take advantage of these seasonality effects. Further inventory planning should be carried out to meet demand, particularly for items that have sold out in the past.**
  
* AOV dips from January to March. **The business should offer post-holiday promotions to boost order volume and sales. To reach existing customers, using a re-engagement email campaign to pull customers back in and encourage high-value purchases through pricing and bundling strategies/offers.**
  
* Sales revenue and order volume recover in March, fluctuating through to August. **The business should consider running targeted spring and summer campaigns catered to major holidays or events celebrated in each respective region. The retailer can drive order volume by tapping into these unique "ocassions" and celebrations for regions that already have a moderate-to-high AOV. The Month of may holds a lot of potential, with Mother's day occuring across many European countries as well local holidays within France, Germany, Italy, and Spain. March holds opportunity for targeted campaigns in Norway (Easter preparations) and Ireland (St. Patrick's Day).**
  
* High Sales and Order Volume in the UK. **Consider offering discounts on larger orders or creating bundled packages. This could boost average order value and contribute to substantial revenue growth.**
  
* Moderate-to-high AOV in Western Europe, suggesting customers are willing to spend more on each transaction. **To capitalize on this and drive order volume, considering implementing loyalty programs, as well as expanding product selection or even renaming product lines & categories throughout the year. This will position the retailer as a destination for more than just giftware, while incentivizing existing wholesale customers to increase their purchase frequency.**

* With the reatiler being positioned as a giftware destination, a big chunk of sales revenue is dependent on end-of-year holiday success. **The company would benefit from establishing relationships with wholesale customers that carry a broader range of products and are more likely to the make bulk purchases throughout the year. This is dependent on expanding product selection or crosslisting products under different website sections to improve the discoverability of versatile "giftware" items.**

* Low Sales and Order Volume in Saudi Arabia, Brazil, and Nigeria. **Consider investing in localized marketing campaigns that cater to local customs and holidays. Explore relationships with local wholesalers to increase visibility and tap into these emerging markets.**

# Assumptions and Caveats:

Throughout the analysis, several assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Caveat 1: For all records with a valid order_date, shipping_date was confirmed to be 7 days after order_date. Thus, shipping_date was used to calculate order_date value for records where order_date = 0000-00-00.
  
* Caveat 2: Records with birthdate = 0000-00-00 were excluded from customer-level demographic analysis, as valid age data was not available.

* Assumption 1: Fields such as order recency and customer age were calculated based on the most recent valid order_date. It is assumed that no additional data is available beyond that final recorded transaction in January of 2014. 

