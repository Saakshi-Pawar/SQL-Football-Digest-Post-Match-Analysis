create database sky_sports;

use sky_sports;

# Import both the .CSV files in Dbeaver under the database name Sky_Sports
select * from sports_1;
select * from sports_2;

# Write an sql query to show all the UNIQUE team names
select distinct team from sports_1;

# Write an SQL query to show name of team which has rank 1 from group 7 --------------------
select team from sports_1 where 'rank' = 1 and 'group' = 7;

# Write an sql query to show count of all teams 
select count(team) from sports_1;

#	Write an SQL query to show matches_played by each team
select team, matches_played from sports_1;

#	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent...............
select team, 100*(wins/matches_played) from sports_1;

#	Write an SQL query to show which team has maximum goals_scored and their count-------------
select count(team), max(goals_scored) from sports_1;

#	Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team.........
select team, round(100*(draws/matches_played),2) from sports_1;

#	Write an SQL query to show which team has minimum goals_scored and their count......
select team, goals_scored from sports_1 where goals_scored = (select min(goals_scored) from sports_1);

# Write an SQL query to show the average goal_difference 
select avg(goal_difference) from sports_1;

# Write an SQL query to show name of the team where points are 0 
select team,points from sports_1 where points = 0;

# Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from sports_1 where expected_goal_scored < exp_goal_conceded;

# Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from sports_1 where exp_goal_difference between -0.5 and 0.5;

# Write an SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from sports_1 order by exp_goal_difference_per_90 asc;

# Write an SQL query to show team which has maximum number of players_used ..........
select team, max(players_used) from sports_2;

# Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team, avg_age from sports_2 order by avg_age asc;

# Write an sql query to show average possession of teams ......
select avg(possession) from sports_2;

# Write a SQL query to show team which has played atleast 5 games
select team,games from sports_2 where games>=5;

# Write an SQL query to show all data for which minutes is greater than 600
select * from sports_2 where minutes>600;

# Write an SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from sports_2 order by goals asc;

# Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from sports_2 order by pens_made desc;

# Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 
select team, cards_yellow, cards_red from sports_2 where cards_red=1 order by cards_yellow asc;

# Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90
select team, goals_per90, assists_per90, goals_assists_per90 from sports_2 order by goals_assists_per90 desc; 

# Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90
select team, goals_pens_per90, goals_assists_pens_per90 from sports_2 order by goals_assists_pens_per90 asc;

# Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team, shots, shots_on_target, shots_on_target_pct from sports_2 where shots_on_target_pct < 30 order by shots_on_target_pct asc;

# Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team, shots_per90, shots_on_target_per90 from sports_2 where team = "Belgium";

# Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from sports_2 order by average_shot_distance desc;

# Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 
select team, errors, touches from sports_2 where errors = 0 and touches < 1500; 

# Write an SQL query to show team, fouls which has maximum number of fouls......
select team, max(fouls) from sports_2;

# Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from sports_2 where offsides < 10 or offsides > 20;

# Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 
select team, aerials_won, aerials_lost, aerials_won_pct from sports_2 order by aerials_won_pct desc;

# Write an SQL query to show number of teams each group has!.....
select `group`,count(team) from sports_1 group by `group`;

# Write a SQL query to show team names group 6 has
select team,`group` from sports_1 where `group`=6;

# Write an SQL query to show Australia belongs to which group 
select team, `group` from sports_1 where team = 'Australia';

# Write an SQL query to show group, average wins by each group
select `group`, avg(wins) from sports_1 group by `group`;

# Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group`, min(exp_goal_conceded)  from sports_1 group by `group` order by min(exp_goal_conceded) desc;

# Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team, goals_scored, goals_against from sports_1 where goals_scored = goals_against;

# Write an SQL query to show which team has maximum players_used 
select team, players_used from sports_2 where players_used=(select max(players_used) from sports_2);

# Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 
select team, players_used, avg_age, games, minutes from sports_2 where minutes < 500 and minutes > 200;

# Write an SQL query to show all data of group_stats in ascending order BY points
select * from sports_1 order by points;

# Write an SQL query to show ALL UNIQUE team in ascending order by team
select distinct team from sports_2 order by team;

# Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select `group`, sum(fouls) from sports_2 inner join sports_1 on sports_2.team = sports_1.team group by `group` order by sum(fouls);

# Write an SQL query to show total number of games for each group and arrange it in descending order by games.
select `group`, sum(games) from sports_2 inner join sports_1 on sports_2.team = sports_1.team group by `group` order by sum(games) desc;

# Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select `group`, sum(players_used) from sports_2 inner join sports_1 on sports_2.team = sports_1.team group by `group` order by sum(players_used);

# Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select `group`, sum(offsides) from sports_2 inner join sports_1 on sports_2.team = sports_1.team group by `group` order by sum(offsides);

# Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select `group`, avg(passes_pct) from sports_2 inner join sports_1 on sports_2.team = sports_1.team group by `group` order by avg(passes_pct) desc; 

# Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select `group`, avg(goals_per90) from sports_2 inner join sports_1 on sports_2.team = sports_1.team group by `group` order by avg(goals_per90);
