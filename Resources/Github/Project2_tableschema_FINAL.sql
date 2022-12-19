--Create tournaments table
CREATE TABLE tournaments(
  tournament_id VARCHAR NOT NULL,
  tournament_name VARCHAR,
  year INTEGER,
  host_country VARCHAR,
  winner VARCHAR,
  host_won INTEGER, 
  count_teams INTEGER,
  group_stage VARCHAR,
  second_group_stage VARCHAR,
  final_round VARCHAR,
  round_of_16 VARCHAR,
  quarter_finals VARCHAR,
  semi_finals VARCHAR,
  third_place_match VARCHAR,
  final VARCHAR
);

--select * from tournaments

-- DROP TABLE tournaments


--Create team_appearances table
CREATE TABLE team_appearances(
  tournament_id VARCHAR NOT NULL,
  team_id VARCHAR NOT NULL,
  home_team VARCHAR,
  away_team VARCHAR,
  goals_for INTEGER,
  goals_against INTEGER,
  goal_differential INTEGER,
  extra_time VARCHAR,
  penalty_shootout VARCHAR,
  penalties_for INTEGER,
  penalties_against INTEGER,
  result VARCHAR,
  win VARCHAR,
  lose VARCHAR,
  draw VARCHAR
);

-- select * from team_appearances

-- DROP TABLE team_appearances


--Create matches table DONE
CREATE TABLE matches(
  tournament_id VARCHAR NOT NULL,
  match_id VARCHAR NOT NULL,
  match_name VARCHAR,
  stage_name VARCHAR,
  group_stage VARCHAR,
  knockout_stage VARCHAR,
  home_team_id VARCHAR NOT NULL,
  away_team_id VARCHAR NOT NULL,
  score VARCHAR,
  home_team_score VARCHAR,
  away_team_score VARCHAR,
  extra_time VARCHAR,
  penalty_shootout VARCHAR,
  score_penalties VARCHAR,
  home_team_score_penalties INTEGER,
  away_team_score_penalties INTEGER,
  result VARCHAR,
  home_team_win VARCHAR,
  away_team_win VARCHAR,
  draw VARCHAR,
  year INTEGER
);

-- select * from matches

-- DROP TABLE matches


--Create squads table

CREATE TABLE squads(
	tournament_id VARCHAR NOT NULL,
	team_id VARCHAR NOT NULL,
	team_name VARCHAR NOT NULL,
	player_id VARCHAR NOT NULL,
	family_name VARCHAR NOT NULL,
	given_name VARCHAR NOT NULL,
	shirt_number INTEGER,
	position_name VARCHAR,
	position_code VARCHAR,
	year INTEGER
);

-- select * from squads

-- DROP TABLE squads


--Create player_appearances table --
CREATE TABLE player_appearances(
  tournament_id VARCHAR NOT NULL,
  match_id VARCHAR NOT NULL,
  team_id VARCHAR NOT NULL,
  player_id VARCHAR NOT NULL,
  starter VARCHAR,
  substitute VARCHAR,
  captain VARCHAR,
  year INTEGER
);

-- select * from player_appearances

-- DROP TABLE player_appearances


--Create goals table 
CREATE TABLE goals(
  goal_id TEXT NOT NULL,
  tournament_id TEXT NOT NULL,
  match_id TEXT NOT NULL,
  team_id TEXT NOT NULL,
  player_id TEXT NOT NULL,
  minute_label TEXT,
  minute_regulation INTEGER,
  minute_stoppage INTEGER,
  match_period TEXT,
  own_goal VARCHAR,
  penalty VARCHAR,
  year INTEGER
);

-- select * from goals

-- DROP TABLE goals


--Create penalty_kicks table 

CREATE TABLE penalty_kicks(
  penalty_kick_id TEXT NOT NULL,
  tournament_id TEXT NOT NULL,
  match_date DATE NOT NULL,
  match_id TEXT NOT NULL,
  player_id TEXT NOT NULL,
  converted VARCHAR
);

-- select * from penalty_kicks

--DROP TABLE penalty_kicks