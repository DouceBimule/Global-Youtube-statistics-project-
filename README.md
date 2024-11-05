
GLOBAL YOU TUBE STATISTICS

Data Overview
Data Source:
The dataset utilised for this project is sourced from Kaggle and specifically pertains to YouTube video statistics.

Dataset Description:
Number of Records: Approximately 500,000 videos. 
And we have 28 columns stated below

Key Attributes:
1) Rank: rank of the youtuber 
2) Youtuber: name of the youtube channel
3) Subscribers: numbers of subscribers per youtube channel
4) video views: Total numbers of views per video
5) Category: Numerical identifier representing the video category (e.g., Music, Education).
6) Title: Title of the video     
7) Uploads: number of videos uploaded by the youtuber.
8) Country: Country where subscribers live in.

Abbreviation:
1) Channel_type: category of videos being uploaded on a channel.(e.g., Music, Education).
2) Video_views_rank: top viewed videos in the world.
3) Country_rank: top viewed videos per country.
4) Channel_type_rank: Top channels according to the category of videos being uploaded on it.
5) Video_views_for_the_last_30_days: numbers of video clicks per month 
6) Lowest_monthly_earnings: least paid youtuber per month.
7) highest_monthly_earnings: highest paid youtuber per month.
8) Lowest_yearly_earnings: least paid youtuber per year.
9) highest_yearly_earnings: Highest paid youtuber per year.
10) Subscribers_for_last_30_days: numbers of subscribers earned by a youtube channel per month.
11) Created_year: year creation of the youtube channel
12) Created_month: month creation of the youtube channel
13) Created_date: day creation of the youtube channel
14) Gross tertiary education enrollment (%):
15) Population: population of countries.
16) Unemployment rate: rate of unemployment per country. 
17) Urban_population: number of people living in an urban area per country.
18) Latitude: measurement of a location north or south of the Equator for each country. 
19) Longitude: measurement of location east or west of the prime meridian at Greenwich for each country.

     Data Quality Considerations:
 Missing Values: Some records may have missing values in fields like dislikes or comment counts.
- category                             46 nulls.
- Country                             122 nulls.
- channel_type                         30 nulls.
- video_views_rank                      1 null.
- channel_type_rank                    33 nulls.
- video_views_for_the_last_30_days     56 nulls.
- subscribers_for_last_30_days        337 nulls.
- created_year                          5 nulls.
- Population                          123 nulls.
- Latitude                            123 nulls.
- Longitude                           123 nulls.

 Type of data in the dataset: 
Object
Float 
Integer 





Defined Business Problem/Question

Business Problem:

Understanding the factors that drive video performance on YouTube to optimise content creation.

Key Questions to Address:
1) What characteristics of YouTube videos (e.g. category, country per category, views per category, yearly earnings per category ).
2) How does audience engagement vary across different content categories?
3) What trends exist in viewer retention and how can they inform content strategy?
4) What video category has the highest yearly earnings?
5) What countries have the highest subscribers?
6) Does the number of population per country affect the video views?
7) Employment rate(how does it influence the content creation).
8) Demographic Information: Incorporate viewer demographic data to personalise content strategies.

Objective:
Provide actionable insights to content creators, and platform managers to enhance video performance, increase audience engagement, and drive channel growth.



 SQL Database Design
 
To effectively manage and query the YouTube statistics data, a relational database design is proposed. The design includes the following tables and their relationships:

Tables and Relationships:

1) Categories
- CategoryID (Primary Key)
- CategoryName
  
2) Channel Statistics
- StatID (Primary Key)
- YoutuberID(Foreign Key referencing Youtuber(YoutuberID))
- Videos View Rank
- Channel Type Rank
- Lowest Monthly Earnings
- Highest Monthly Earnings
- Lowest Yearly Earnings
- Highest Yearly Earnings
- 
3) Youtuber
- Youtuber ID (Primary Key)
- YoutuberName
- Channel Type
- Global Rank
- Subscribers
- Video Uploads
- Video Views
- Video Views last 30 days
- Subscriber Last 30 days
- Created Year
- Created Month
- Created Day
- CategoryID (Foreign Key referencing Categories.CategoryID)
  
4) Country
- CountryID (Primary Key)
- Country Name
- Abbreviation
- Population
- Unemployment Rate
- Urban Population
- Gross Tertiary Enrollment
  
5) Location
- LocationID (Primary Key)
- YoutuberID 
- Latitude 
- Longitude
  
Entity-Relationship Diagram (ERD):
![ER DIAGRAM DESIGN](https://github.com/user-attachments/assets/0938e083-32ef-4c31-af8c-ec6923fd4c5b)






Explanation:
- YouTuber - Categories: A YouTuber can belong to different categories (e.g., gaming, lifestyle, education).
- YouTuber - Channel_Statistic: Each YouTuber has their respective statistics like earnings, ranks, and other metrics.
- YouTuber - Country: YouTubers live in a specific country, and countries can host multiple YouTubers.
- Country - Location: Countries have locations identified by latitude and longitude.

Normalization Considerations:
Ensuring data redundancy is minimized by separating categories, channels, and engagement metrics into distinct tables.

Facilitating efficient queries and scalability for large datasets.

4. Visualizations and Insights
   
Visualizations Generated:

1) Video views by Category:
 Type: Donut Chart
 Insight: Identifies which categories have the highest views.

2) Number of Subscribers by Category:
 Type: Clustered Bar Chart
 Insight: Identifies the number of subscribers by Category.

3) Yearly Earnings by Category:
 Type: Matrix Table
 Insight: Highlights the most highest earning videos by category,allowing analysis of common categories among top performers.

4) Countries with You-Tube
 Type: Slicer
 Insight: Highlights different variables of countries in terms of category, video views,subscriptions and yearly earnings.

5) Subscribers By Country:
 Type: Map
 Insight: Highlights distribution of You-tube Subscribers globally.

6) Geographical Distribution of Yearly earnings:
 Type: Map
 Insight: Visualizes where highest yearly earnings are distributed.

7) Unemployment rate By Country:
 Type: Tree Map
 Insight: Displays the rate of unemployment rate by country and its influence on content creation,views and subscription.


Insights Derived:

- High-Performing Categories:
  
Categories like Music and Entertainment consistently show higher view counts and engagement rates compared to others.

- Engagement Metrics Correlation:
  
A strong positive correlation exists between views and subcriptions indicating that higher subscription counts generally lead to increased engagement and views.

- Subscriber Influence:
  
Channels with larger subscriber bases experience faster growth in views and engagement per video, highlighting the importance of building a loyal audience.

- Geographical Viewer Trends:
  
A significant portion of views originates from North America and India, informing targeted marketing strategies.


6. Next Steps for the Project
   
Addressing Data Gaps:

- Competitive Analysis:
Opportunity: Compare channel performance against competitors to identify market positioning.

Action: Collect and analyse data from similar channels within the same categories.

- Content Quality Metrics:
Opportunity: Assess qualitative aspects such as video production quality, thumbnail effectiveness, and title optimization.

Action: Utilise image and text analysis tools to evaluate thumbnails and titles for attractiveness and relevance.

- Monetization Data:
Opportunity: Explore the relationship between video performance and revenue generation.

Action: If accessible, include data on ad revenue, sponsorship deals, and merchandise sales linked to video performance.

Final Recommendations:

- Enhance Data Collection: Expand the dataset to include additional relevant metrics that can provide deeper insights.
- Leverage Advanced Analytics: Utilise machine learning and AI to uncover patterns and predictions that traditional analysis might miss.
- Focus on Content Optimization: Apply insights to refine content strategies, aiming for higher engagement and viewer satisfaction.
- Continuous Monitoring: Establish ongoing data analysis practices to adapt to changing viewer behaviours and platform algorithms.



![Global You-tube Statistics](https://github.com/user-attachments/assets/5c2f2799-23fc-4530-bb03-3240684fab57)
![Global YouTube Demographics](https://github.com/user-attachments/assets/1c349e39-c528-4ffd-afd5-c2f794281f31)



![Category of YouTube by views and subscribers to country](https://github.com/user-attachments/assets/1902ffbe-18be-4bfe-b166-d96828d1abb7)
![Earnings and Subscribers by Channel Type](https://github.com/user-attachments/assets/8656107f-9c74-461e-a3b4-97bf0f0d17fd)
![Category of YouTube by views and subscribers to country](https://github.com/user-attachments/assets/5dea44e8-dc8a-4c4e-a813-b2fa9fb5adde)
![YouTuber rank and earnings](https://github.com/user-attachments/assets/524c3f37-808e-466d-8344-62bc2f04bc59)


