CREATE TABLE penalty_kicks (
penalty_kick_id VARCHAR PRIMARY KEY ,
tournament_id VARCHAR,
match_id VARCHAR,
match_date VARCHAR,
stage_name VARCHAR,
team_id VARCHAR,
team_name VARCHAR,
player_id VARCHAR,
family_name VARCHAR,
given_name VARCHAR,
shirt_number INT,
converted BOOLEAN);

CREATE TABLE goals (
goal_id VARCHAR PRIMARY KEY ,
tournament_id VARCHAR,
match_id VARCHAR,
team_id VARCHAR,
player_id VARCHAR,
minute_label VARCHAR,
minute_regulation INT,
minute_stoppage INT,
match_period VARCHAR,
own_goal BOOLEAN,
penalty BOOLEAN);

CREATE TABLE player_appearances (
player_id VARCHAR PRIMARY KEY ,
tournament_id VARCHAR,
match_id VARCHAR,
team_id VARCHAR,
stater BOOLEAN,
substitute BOOLEAN,
captain BOOLEAN);

CREATE TABLE squads (
tournament_id VARCHAR PRIMARY KEY ,
team_id VARCHAR,
team_name VARCHAR,
player_id VARCHAR,
family_name VARCHAR,
given_name VARCHAR,
shirt_number INT,
position_name VARCHAR,
position_code VARCHAR);

CREATE TABLE matches (
match_id VARCHAR PRIMARY KEY ,
tournament_id VARCHAR,
match_name VARCHAR,
stage_name VARCHAR,
group_stage BOOLEAN,
knockout_stage BOOLEAN,
home_team_id VARCHAR,
away_team_id VARCHAR,
score VARCHAR,
home_team_score VARCHAR,
away_team_score VARCHAR,
extra_time BOOLEAN,
penalty_shootout BOOLEAN,
score_penalties VARCHAR,
home_team_score_penalties INT,
away_team_score_penalties INT,
result VARCHAR,
home_team_win BOOLEAN,
away_team_win BOOLEAN,
draw BOOLEAN);

CREATE TABLE team_appearances (
team_id VARCHAR PRIMARY KEY ,
tournament_name VARCHAR,
match_id VARCHAR,
opponent_id VARCHAR,
home_team BOOLEAN,
away_team BOOLEAN,
goals_for INT,
goals_against INT,
goal_differential INT,
extra_time BOOLEAN,
penalty_shootout BOOLEAN,
penalties_for INT,
penalties_against INT,
result VARCHAR,
win BOOLEAN,
lose BOOLEAN,
draw BOOLEAN);


CREATE TABLE tournaments (
tournament_id VARCHAR PRIMARY KEY ,
tournament_name VARCHAR,
year INT,
host_country VARCHAR,
winner VARCHAR,
host_won BOOLEAN,
count_teams INT,
group_stage BOOLEAN,
second_group_stage BOOLEAN,
final_round BOOLEAN,
round_of_16 BOOLEAN,
quarter_finals BOOLEAN,
semi_finals BOOLEAN,
third_place_match BOOLEAN,
final BOOLEAN);