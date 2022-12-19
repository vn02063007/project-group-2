--Create tournaments table DONE
CREATE TABLE tournaments(
  tournament_id VARCHAR NOT NULL,
  tournament_name VARCHAR,
  year INTEGER,
  host_country VARCHAR,
  winner VARCHAR,
  host_won BOOLEAN,
  count_teams INTEGER,
  group_stage BOOLEAN,
  second_group_stage BOOLEAN,
  final_round BOOLEAN,
  round_of_16 BOOLEAN,
  quarter_finals BOOLEAN,
  semi_finals BOOLEAN,
  third_place_match BOOLEAN,
  final BOOLEAN,
  PRIMARY KEY (tournament_id)
);

select * from tournaments

--Create matches table DONE
CREATE TABLE matches(
  tournament_id VARCHAR NOT NULL,
  match_id VARCHAR NOT NULL,
  match_name VARCHAR,
  stage_name VARCHAR,
  group_stage BOOLEAN,
  knockout_stage BOOLEAN,
  home_team_id VARCHAR NOT NULL,
  away_team_id VARCHAR NOT NULL,
  score VARCHAR,
  home_team_score VARCHAR,
  away_team_score VARCHAR,
  extra_time BOOLEAN,
  penalty_shootout BOOLEAN,
  score_penalties VARCHAR,
  home_team_score_penalties INTEGER,
  away_team_score_penalties INTEGER,
  result VARCHAR,
  home_team_win BOOLEAN,
  away_team_win BOOLEAN,
  draw BOOLEAN,
  PRIMARY KEY (match_id),
  FOREIGN KEY (tournament_id) REFERENCES tournaments (tournament_id),
  FOREIGN KEY (home_team_id) REFERENCES team_appearances (team_id),
  FOREIGN KEY (away_team_id) REFERENCES team_appearances (team_id)
);

select * from matches

--Create team_appearances table
CREATE TABLE team_appearances(
  tournament_id VARCHAR NOT NULL,
  match_id VARCHAR NOT NULL,
  team_id VARCHAR NOT NULL,
  --opponent_id TEXT NOT NULL -- REMOVE FROM IPYNB --,
  home_team BOOLEAN,
  away_team BOOLEAN,
  goals_for INTEGER,
  goals_against INTEGER,
  goal_differential INTEGER,
  extra_time BOOLEAN,
  penalty_shootout BOOLEAN,
  penalties_for INTEGER,
  penalties_against INTEGER,
  result VARCHAR,
  win BOOLEAN,
  lose BOOLEAN,
  draw BOOLEAN,
  PRIMARY KEY (tournament_id, match_id, team_id),
  FOREIGN KEY (tournament_id) REFERENCES tournaments (tournament_id),
  FOREIGN KEY (match_id) REFERENCES matches (match_id)
);

select * from team_appearances


--Create squads table -- NEEDS A REVIEW --

CREATE TABLE squads(
	tournament_id VARCHAR NOT NULL,
	team_id VARCHAR NOT NULL,
	team_name VARCAHR NOT NULL,
	player_id VARCHAR NOT NULL,
	family_name VARCHAR NOT NULL,
	given_name VARCHAR NOT NULL,
	shirt_number INTEGER,
	position_name VARCHAR,
	position_code VARCHAR,
	PRIMARY KEY (tournament_id, team_id, player_id),
	FOREIGN KEY (tournament_id) REFERENCES tournaments (tournament_id),
	FOREIGN KEY (team_id) REFERENCES team_appearances (team_id)
);

select * from squads

--Create player_appearances table -- may have to create before squads table --
CREATE TABLE player_appearances(
  tournament_id VARCHAR NOT NULL,
  match_id VARCHAR NOT NULL,
  team_id VARCHAR NOT NULL,
  player_id VARCHAR NOT NULL,
  starter BOOLEAN,
  substitute BOOLEAN,
  captain BOOLEAN,
  PRIMARY KEY (player_id),
  FOREIGN KEY (tournament_id) REFERENCES tournaments (tournament_id),
  FOREIGN KEY (match_id) REFERENCES matches (match_id),
  FOREIGN KEY (team_id) REFERENCES team_appearances (team_id),
);

select * from player_appearances

--Create goals table DONE
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
  own_goal BOOLEAN,
  penalty BOOLEAN,
  PRIMARY KEY (goal_id),
  FOREIGN KEY (tournament_id) REFERENCES tournaments (tournament_id),
  FOREIGN KEY (match_id) REFERENCES matches (match_id),
  FOREIGN KEY (team_id) REFERENCES team_appearances (team_id),
  FOREIGN KEY (player_id) REFERENCES player_appearances (player_id)
);

select * from goals

--Create penalty_kicks table DONE

CREATE TABLE penalty_kicks(
  penalty_kick_id TEXT NOT NULL,
  tournament_id TEXT NOT NULL,
  match_id TEXT NOT NULL,
  team_id TEXT NOT NULL,
  player_id TEXT NOT NULL,
  converted BOOLEAN,
  PRIMARY KEY (penalty_kick_id),
  FOREIGN KEY (tournament_id) REFERENCES tournaments (tournament_id),
  FOREIGN KEY (match_id) REFERENCES matches (match_id),
  FOREIGN KEY (team_id) REFERENCES team_appearances (team_id),
  FOREIGN KEY (player_id) REFERENCES players (player_id)
);

select * from penalty_kicks