CREATE TABlE Competitions(ID int,TITLE text,ORGANIZATIONID int,ENABLEDDATE date,TotalCompetitors int,TotalSubmissions int, PRIMARY KEY (ID));

COPY Competitions FROM '/Users/poojithamathi/Downloads/Competitions2.csv' DELIMITER ',' CSV HEADER;



CREATE TABlE TeamMemberships(ID int,TEAMID int,USERID int,PRIMARY KEY (ID));

COPY TeamMemberships FROM '/Users/poojithamathi/Downloads/TeamMemberships.csv' DELIMITER ',' CSV HEADER;



CREATE TABlE Teams(ID int,COMPETITIONID int,MEDAL int,PRIMARY KEY (ID));

COPY Teams FROM '/Users/poojithamathi/Downloads/Teams.csv' DELIMITER ',' CSV HEADER;


CREATE TABlE Competitions(ID int,TITLE text,ORGANIZATIONID int,ENABLEDDATE date,TotalCompetitors int,TotalSubmissions int, PRIMARY KEY (ID));

COPY Competitions FROM '/Users/poojithamathi/Downloads/Competitions2.csv' DELIMITER ',' CSV HEADER;



CREATE TABlE UserAchievements(ID int,USERID int,AchievementType text,Tier int,Points int,CurrentRanking int,TotalGold int,TotalSilver int,TotalBronze int, PRIMARY KEY (ID));

COPY UserAchievements FROM '/Users/poojithamathi/Downloads/UserAchievements.csv' DELIMITER ',' CSV HEADER;



------------------New table for Visualization of "Competitions participated by top 50 users"--------------------------------------------------

select c.title,temp2.* from Competitions c join (select t.competitionid,temp1.* from teams t join 
(select distinct t.userid,t.teamid,temp3.currentranking from TeamMemberships t join (SELECT ua.* FROM UserAchievements ua where ua.achievementtype='Competitions' ORDER BY currentranking ASC LIMIT 50) temp3 on t.userid=temp3.userid) temp1
on t.id=temp1.teamid) temp2
on c.id=temp2.competitionid;


-------------------New table for Visualization of "Competitions won by different team sizes"--------------------------------------------

select tm.teamid, tm.team_size, temp1.year,temp1.publicleaderboardrank from (select teamid, count(userid) as team_size from teammemberships group by teamid) tm join (select t.*,EXTRACT(year from c.enableddate) as year from teams t join competitions c
on t.competitionid=c.id
where t.publicleaderboardrank=1) temp1
on tm.teamid = temp1.id order by team_size desc