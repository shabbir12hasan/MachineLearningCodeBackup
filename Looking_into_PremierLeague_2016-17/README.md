# Looking into premier league year 2016-17

Football is a beautiful game played aroud the word. And data analytics is one of most powerfull field these days. Both of the sentences aren't related too much however, if we merge both of these together as one then big results could be achieved. "Data analytics in football", could deliver better insight and observations from different angles, it could be used to help a football team to learn more about its shortcoming while comparing them with other teams and moreover by themselves.

#### What this report covers?
we have our data collected from this site: http://www.footballsquads.co.uk/archive.htm. Only premier league's data is collected during year 2016/17 for all 20 teams.

Tasks
-  Data Wrangling: Cleaning data for all teams, removing unwanted variables and merging data of all players into one data frame.
-  Data Visualization: Analyzing patterns of data and understanding the data while visualizing it.

#### First lets have a look at teams for year 2016/17 are as follows:
Arsenal<br>
Bournemouth<br>
Burnley<br>
Chelsea<br>
Crystal Palace<br>
Everton<br>
Hull City<br>
Leicester City<br>
Liverpool<br>
Manchester City<br>
Manchester United<br>
Middlesbrough<br>
Southampton<br>
Stoke City<br>
Sunderland<br>
Swansea City<br>
Tottenham Hotspur<br>
Watford<br>
West Bromwich Albion<br>
West Ham United<br>


### Data Wrangling
Multiple data cleaning steps are involved in cleaning data, once data is imported and the same process we will operate on 20 teams.

Once we will clean data for all 20 teams then we will merge all records into one data frame and will perform operations on it.
Our data would look like this:
<p align="center"><img src="https://github.com/shabbir12hasan/MachineLearningCodeBackup/blob/master/Looking_into_PremierLeague_2016-17/images/raw_team_data.PNG" width="450"/></p>

Now still we need to create few more variables which would help us to derive better results from our data, we would perform more operations in our whole data set of players.

#### New variables:
  - First rounding off value of height to 2 decimal places, and convert it into continous value.
  - Convert weight into continous value
  - Calculate BMI of players
  - Calculating age of players (While calculating age we would calculate age upto first matchday of premier league year 2016, basically that is 13-08-2016. Player's age would be calculated from their date of birth to this date.)
 
After changing and creating these variables, we would get clean data set and it would look like:
<p align="center"><img src="https://github.com/shabbir12hasan/MachineLearningCodeBackup/blob/master/Looking_into_PremierLeague_2016-17/images/clean_team_data.PNG" width="450"/></p>


### Data Visualization
Once we have our data cleaned, we can look into the data and find out what's happening in it. We will create visuals and elucidate it.
  1)  Which countries have most players playing in premier league?
  2)  Plotting height of players?
  3)  Plotting weight of players?
  4)  Plotting age of players?
  4)  What does BMI index says?
  5)  Comparing weight and age of players.

