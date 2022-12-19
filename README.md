# Project 2 UWA DA Boot Camp
Team Members: Tuan Minh Bui, Shannon Chen


## Title: Player & Match Events Database for 1998-2018 FIFA World Cup


### Purpose:
Amidst the excitement of this year's world cup, we decided to build an SQL database to capture player performance data in the form of goals scored and to explore whether match events such as the tournament stage and going into extra time have any impact on said performance. For example, we hope that this database can help to answer questions like:

a) Does participation as a starter or substitute at previous tournaments influence player and team performance in the most recent tournament?

b) How many open-play goals are scored by defenders?


We chose to focus on a smaller sample of recent tournaments between 1998-2018 as these tournaments had a standardised number of 64 matches. Furthermore, this data set could also allow us to focus on the period between 2006-2018 when the Golden and Silver goals were removed from the rules of football. In this period, two straight 15-minute periods of extra time were played in the event of a drawn match during the knockout stages. If no winner is decided after extra-time, the game will go into a penalty shoot-out.

Drawing from the stellar work of our Primary Data Source, we performed ETL operations to ensure that the data is stored and easily accessible. We first generated an ERD to specify the relationships between the tables in our database and proceeded to create these tables in postgresSQL. Finally, we proceeded to transform the data extracted and to load them into an sqldatabase.


### Sample questions that our database may be able to address:

1. Enable a review of the total number of goals scored in open play - with possible groupbys of player position and nation.

2. Create a summary of matches that go to penalties in the knockout stages (round-of-16 to finals).

3. Enable a count of winners, semi-finalists by country.

4. Account for rule changes by filtering the year in which those were implemented.


## Primary Data Source
> Fjelstul, Joshua C. "The Fjelstul World Cup Database v.1.0." July 8, 2022. https://www.github.com/jfjelstul/worldcup.


## Documentation

fifaWC_1998_2018.pdf (Technical Report)



## Files used for Data Transformation & Loading

### Located in Resources/Github

Project2_tableschema_FINAL

tournaments.ipynb

team_appearances.ipynb

matches.ipynb

squads.ipynb

player_appearances.ipynb

goals.ipynb

penalty.ipynb.



## Dependencies, Packages & Databases

pandas

sqlalchemy - create_engine, inspect

postgresSQL