-- number of players in the given table
select count(*) as total_players 
from indian_cricketer_stats;


-- usage of aggregate functions like SUM, AVG
select sum(runs_scored) as total_runs_scored 
from indian_cricketer_stats;

select sum(wickets_taken) as total_wickets_taken 
from indian_cricketer_stats;

select avg(age) as avg_age 
from indian_cricketer_stats;

-- rounding off average age to 1 decimal place
select round(avg(age), 1) as avg_age 
from indian_cricketer_stats;

select avg(runs_scored) as avg_runs_scored 
from indian_cricketer_stats;

select avg(wickets_taken) as avg_wickets_taken 
from indian_cricketer_stats;


-- usage of "GROUP BY" clause
select role, sum(runs_scored) as total_runs 
from indian_cricketer_stats 
group by role;


-- batters with more than 5000 runs to their name
select name, runs_scored 
from indian_cricketer_stats 
having runs_scored > 5000;

-- bowlers with more than 100 wickets to their name
select name, wickets_taken 
from indian_cricketer_stats 
having wickets_taken > 100;


-- usage of MIN, MAX, DISTINCT
 select distinct(role) 
from indian_cricketer_stats;

select name, runs_scored 
from indian_cricketer_stats 
where runs_scored = (select max(runs_scored) from indian_cricketer_stats);

select name, wickets_taken
from indian_cricketer_stats
where wickets_taken = (select max(wickets_taken) from indian_cricketer_stats);