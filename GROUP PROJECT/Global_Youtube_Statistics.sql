CREATE DATABASE GLOBAL_YOUTUBE_STATISTICS;
USE GLOBAL_YOUTUBE_STATISTICS;
#This table stores details related to each youtuber
CREATE TABLE Youtuber (
YoutuberID INT PRIMARY KEY AUTO_INCREMENT,
YoutuberName VARCHAR(255),
ChannelType VARCHAR(255),
GlobalRank INT,
Subscribers BIGINT,
VideoUploads INT,
VideoViews BIGINT,
VideoViewsLast30Days BIGINT,
SubscribersLast30Days BIGINT,
CreatedYear INT,
CreatedMonth VARCHAR(50),
CreatedDay INT,
CategoryID INT,
CountryID INT,
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);

INSERT INTO Youtuber(YoutuberName, ChannelType, GlobalRank, Subscribers, VideoUploads, VideoViews, VideoViewsLast30Days, SubscribersLast30Days, CreatedYear, CreatedMonth, CreatedDay, CategoryID, CountryID)
VALUES
('T-Series','Music',1,245000000,20082,228000000000,2258000000,2000000,2006,'Mar',13,1,1),
('Mr Beast','Entertainment',3,166000000,741,28368841870,1348000000,8000000,2012,'Feb',20,2,2),
('Coco-Melon Nursery Rhymes','Education',4,162000000,966,164000000000,1975000000,1000000,2006,'Sep',1,3,2);
SELECT * FROM Youtuber;

#This table holds distinct categories that youtubers can be classified into
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(255)
);

INSERT INTO Category(CategoryID,CategoryName)
VALUES
(1,'Music'),
(2,'Entertainment'),
(3,'Education');

SELECT * FROM Category;
#This table strores information about countries along with economic data
CREATE TABLE Country (
    CountryID INT PRIMARY KEY AUTO_INCREMENT,
    CountryName VARCHAR(255),
    Abbreviation VARCHAR(10),
    Population BIGINT,
    UnemploymentRate FLOAT,
    UrbanPopulation FLOAT,
    GrossTertiaryEnrollment FLOAT
);

INSERT INTO Country(CountryID,CountryName,Abbreviation,Population,UnemploymentRate,UrbanPopulation,GrossTertiaryEnrollment)
VALUES
(1,'India','IN',1366417754,5.36,471031528,28.1),
(2,'United States','US',328239523,14.7,270663028,88.2),
(3,'Japan','JP',126226568,2.29,115782416,63.2);
SELECT * FROM Country;

#This table stores information about video views, rankings and earnings
CREATE TABLE ChannelStatistics (
    StatID INT PRIMARY KEY AUTO_INCREMENT,
    YoutuberID INT,
    VideoViewsRank INT,
    ChannelTypeRank INT,
    LowestMonthlyEarnings INT,
    HighestMonthlyEarnings INT,
    LowestYearlyEarnings INT,
    HighestYearlyEarnings INT,
    FOREIGN KEY (YoutuberID) REFERENCES Youtuber(YoutuberID)
);

INSERT INTO ChannelStatistics (StatID,YoutuberID,VideoViewsRank,ChannelTypeRank,LowestMonthlyEarnings,HighestMonthlyEarnings,LowestYearlyEarnings,HighestYearlyEarnings)
VALUES
(1,4,1,1,564600,9000000,6800000,108400000),
(2,5,48,1,337000,5400000,4000000,64700000),
(3,6,2,1,493800,7900000,5900000,94800000)
;
SELECT * FROM ChannelStatistics;

#This table stores geographical information related to the Youtubers
CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    YoutuberID INT,
    Latitude FLOAT,
    Longitude FLOAT,
	FOREIGN KEY (YoutuberID) REFERENCES Youtuber(YoutuberID)
);

INSERT INTO Location (LocationID,YoutuberID,Latitude,Longitude)
VALUES 
(1,4,20.593684,78.96288),
(2,5,37.09024,-95.712891),
(3,6,37.09024,-95.712891)
;
SELECT * FROM Location;


