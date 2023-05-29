# 🚀 Excited to share my recent experimental project: designing a Zomato/Swiggy Data Warehouse! 🍽️

Design a Data Warehouse for Zomato/Swiggy?

Probably you would have seen this question in a Design interview round for Data Engineer. How will you approach this problem?

So, To answer this question
I recently tried designing a Data Warehouse for Zomato/Swiggy, one of the leading online food delivery platforms. This project has provided me with invaluable hands-on experience, allowing me to apply my skills and knowledge in a real-world scenario.

To begin, it's crucial to understand the business objectives and the specific insights that the data warehouse should provide. Consider asking questions like:

1. What are the key performance indicators (KPIs) for Zomato/Swiggy?
2. What information would enable data-driven decision-making within the food tech industry?

By identifying these insights, you can shape your data warehouse design accordingly.

1. Utilize Star Schema:
A star schema is a recommended data modeling technique for data warehousing. In this approach, the data is organized around a central fact table, which contains measurable metrics or events of interest, such as sales revenue or order details. Surrounding the fact table, dimension tables describe the attributes or context of these metrics, like restaurants, delivery personnel, customers, time, and location.

2. Consider Snowflake Schema:
If the complexity of your data increases, you might need to extend the star schema to a snowflake schema. This schema breaks down dimension tables into subdimensions, enabling more granular data analysis. However, keep in mind that snowflake schemas introduce additional complexity, so assess whether it's necessary for your specific requirements.

3. Optimize Query Execution:
To enhance query performance, consider partitioning the tables based on relevant criteria such as date or city column in the order table. Partitioning can significantly improve data retrieval and analysis speed, especially when dealing with large volumes of data. This optimization technique ensures efficient querying for various insights, such as identifying the most sold item in a city or analyzing revenue across different cities.


In the end, we can extract data for this kind of problem:-
1. What is the most sold item in a city?
2. Which item is not selling well in a city?
3. Which item needs promotion to sell?

GitHub Link:- https://lnkd.in/dwSaHRCV

If you have any suggestions or ideas on how to further improve this data warehouse design, please feel free to share. 
I am keen to learn from the expertise of the LinkedIn community!

#DataWarehousing #Analytics #DataDrivenDecisionMaking #Zomato #FoodTech

![Zomato Data Warehouse Design](https://github.com/SourabhSinghRana/zomato_data_warehouse_design/assets/128234000/c9d7bab2-e284-4fd0-ab88-f9fc2f60c428)
