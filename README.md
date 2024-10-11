
# Global Youtube statistics project 
 
Final project for 30 days of data story telling challenge at ZINDUA School

STEP 1. Defined Business Problem/Question

Business Problem:

Understanding the factors that drive video performance on YouTube to optimise content creation.
Key Questions to Address:

What characteristics of YouTube videos (e.g. category, country per category, views per category, yearly earnings per category ).

How does audience engagement vary across different content categories?

What trends exist in viewer retention and how can they inform content strategy?

What video category has the highest yearly earnings?

What countries have the highest subscribers?

Does the number of population per country affect the video views?

Employment rate(how does it influence the content creation).

Demographic Information: Incorporate viewer demographic data to personalise content strategies.


Objective:

Provide actionable insights to content creators, and platform managers to enhance video performance, increase audience engagement, and drive channel growth.

STEP 2. Data Overview

Data Source:

The dataset utilised for this project is sourced from Kaggle and specifically pertains to YouTube video statistics.

Dataset Description:

Number of Records: Approximately 500,000 videos.

And we have 28 columns stated below:

Key Attributes:

Rank: rank of the youtuber
Youtuber: name of the youtube channel
Subscribers: numbers of subscribers per youtube channel
video views: Total numbers of views per video.
Category: Numerical identifier representing the video category (e.g., Music, Education).
Title: Title of the video     
Uploads: number of videos uploaded by the youtuber.
Country: Country where subscribers live in.
Abbreviation:
Channel_type: category of videos being uploaded on a channel.(e.g., Music, Education).
 Video_views_rank: top viewed videos in the world.
Country_rank: top viewed videos per country.
Channel_type_rank: Top channels according to the category of videos being uploaded on it.
 Video_views_for_the_last_30_days: numbers of video clicks per month 
Lowest_monthly_earnings: least paid youtuber per month.
 highest_monthly_earnings: highest paid youtuber per month.
Lowest_yearly_earnings: least paid youtuber per year.
 highest_yearly_earnings: Highest paid youtuber per year.
Subscribers_for_last_30_days: numbers of subscribers earned by a youtube channel per month.
 Created_year: year creation of the youtube channel
Created_month: month creation of the youtube channel
Created_date: day creation of the youtube channel
 Gross tertiary education enrollment (%):
Population: population of countries.
 Unemployment rate: rate of unemployment per country. 
Urban_population: number of people living in an urban area per country.
Latitude: measurement of a location north or south of the Equator for each country. 
Longitude: measurement of location east or west of the prime meridian at Greenwich for each country.

     Data Quality Considerations:
     
Missing Values: Some records may have missing values in fields like dislikes or comment counts.

category                             46 nulls.
Country                             122 nulls.
channel_type                         30 nulls.
video_views_rank                      1 null.
channel_type_rank                    33 nulls.
video_views_for_the_last_30_days     56 nulls.
subscribers_for_last_30_days        337 nulls.
created_year                          5 nulls.
Population                          123 nulls.
Latitude                            123 nulls.
Longitude                           123 nulls.


 Type of data in the dataset: 
 
Object
Float 
Integer 

STEP 3. SQL Database Design

To effectively manage and query the YouTube statistics data, a relational database design is proposed. The design includes the following tables and their relationships:
Tables and Relationships:

Categories
CategoryID (Primary Key)
CategoryName
Channel Statistics
StatID (Primary Key)
YoutuberID(Foreign Key referencing Youtuber(YoutuberID))
Videos View Rank
Channel Type Rank
Lowest Monthly Earnings
Highest Monthly Earnings
Lowest Yearly Earnings
Highest Yearly Earnings
Youtuber
YoutuberID (Primary Key)
YoutuberName
Channel Type
Global Rank
Subscribers
Video Uploads
Video Views
Video Views last 30 days
Subscriber Last 30 days
Created Year
Created Month
Created Day
CategoryID (Foreign Key referencing Categories.CategoryID)
Country
CountryID (Primary Key)
Country Name
Abbreviation
Population
Unemployment Rate
Urban Population
Gross Tertiary Enrollment
Location
LocationID (Primary Key)
YoutuberID 
Latitude 
Longitude
Entity-Relationship Diagram (ERD):



Explanation:

YouTuber - Categories: A YouTuber can belong to different categories (e.g., gaming, lifestyle, education).

YouTuber - Channel_Statistic: Each YouTuber has their respective statistics like earnings, ranks, and other metrics.

YouTuber - Country: YouTubers live in a specific country, and countries can host multiple YouTubers.

Country - Location: Countries have locations identified by latitude and longitude.

Normalization Considerations:

Ensuring data redundancy is minimized by separating categories, channels, and engagement metrics into distinct tables.

Facilitating efficient queries and scalability for large datasets.

STEP 4. Visualizations and Insights

Visualizations Generated:

Video views by Category:

Type: Donut Chart
Insight: Identifies which categories have the highest views.

Number of Subscribers by Category:

Type: Clustered Bar Chart
Insight: Identifies the number of subscribers by Category.

Yearly Earnings by Category:

Type: Matrix Table
Insight: Highlights the most highest earning videos by category,allowing analysis of common categories among top performers.
Countries with You-Tube
Type: Slicer
Insight: Highlights different variables of countries in terms of category, video views,subscriptions and yearly earnings.

Subscribers By Country:

Type: Map
Insight: Highlights distribution of You-tube Subscribers globally.

Geographical Distribution of Yearly earnings:

Type: Map
Insight: Visualizes where highest yearly earnings are distributed.

Unemployment rate By Country:

Type: Tree Map
Insight: Displays the rate of unemployment rate by country and its influence on content creation,views and subscription.
Insights Derived:

High-Performing Categories:
Categories like Music and Entertainment consistently show higher view counts and engagement rates compared to others.

Engagement Metrics Correlation:

A strong positive correlation exists between views and subcriptions indicating that higher subscription counts generally lead to increased engagement and views.

Subscriber Influence:
Channels with larger subscriber bases experience faster growth in views and engagement per video, highlighting the importance of building a loyal audience.

Geographical Viewer Trends:
A significant portion of views originates from North America and India, informing targeted marketing strategies.

STEP 5. Next Steps for the Project
Addressing Data Gaps:
Competitive Analysis:
Opportunity: Compare channel performance against competitors to identify market positioning.
Action: Collect and analyse data from similar channels within the same categories.
Content Quality Metrics:
Opportunity: Assess qualitative aspects such as video production quality, thumbnail effectiveness, and title optimization.
Action: Utilise image and text analysis tools to evaluate thumbnails and titles for attractiveness and relevance.
Monetization Data:
Opportunity: Explore the relationship between video performance and revenue generation.
Action: If accessible, include data on ad revenue, sponsorship deals, and merchandise sales linked to video performance.

Final Recommendations:
Enhance Data Collection: Expand the dataset to include additional relevant metrics that can provide deeper insights.
Leverage Advanced Analytics: Utilise machine learning and AI to uncover patterns and predictions that traditional analysis might miss.
Focus on Content Optimization: Apply insights to refine content strategies, aiming for higher engagement and viewer satisfaction.
Continuous Monitoring: Establish ongoing data analysis practices to adapt to changing viewer behaviours and platform algorithms.



![Global You-tube Statistics](https://github.com/user-attachments/assets/5c2f2799-23fc-4530-bb03-3240684fab57)
![Global You-Tube Demographics](https://github.com/user-attachments/assets/f77af95e-529d-4f63-b960-f3558a92f225)

![Global You Tube Statistics Dashboard](https://github.com/user-attachments/assets/5b3ef594-97ec-4dd6-be02-d3e2dd6cb19d)
![Global You-Tube Demographics Dashboard](https://github.com/user-attachments/assets/c8370aa4-65fb-4a16-aba1-fe37524d2968)
