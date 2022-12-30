CREATE DATABASE worldcup;

create table teams(team_id serial primary key not null, name varchar(30) unique not null);
create table games(game_id serial primary key not null, year int not null, round varchar not null, winner_id int not null, oppnent_id int not null, winner_goals int not null, opponent_goals int not null);

ALTER TABLE games ADD FOREIGN KEY(winner_id) REFERENCES teams(team_id);
ALTER TABLE games ADD FOREIGN KEY(opponent_id) REFERENCES teams(team_id);