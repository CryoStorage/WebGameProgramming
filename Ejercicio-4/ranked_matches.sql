create database ranked_matches

use ranked_matches

CREATE TABLE player (
    player_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
);

alter table player add column player_name VARCHAR(255);
alter table player add column player_email VARCHAR(255);



CREATE TABLE episodes (
    episode_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE maps (
    map_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE roles (
    role_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE agents (
    agent_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    role_id INT UNSIGNED,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

CREATE TABLE ranks (
    rank_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE divisions (
    division_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE acts (
    act_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    episode_id INT UNSIGNED,
    FOREIGN KEY (episode_id) REFERENCES episodes(episode_id)
);

CREATE TABLE matches (
    match_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    date_time DATETIME NOT NULL,
    duration TIME NOT NULL,
    map_id INT UNSIGNED,
    agent_id INT UNSIGNED,
    score VARCHAR(10),
    econ_rating DECIMAL(5,2),
    avg_combat_score DECIMAL(5,2),
    rank_id INT UNSIGNED,
    division_id INT UNSIGNED,
    kills INT UNSIGNED,
    deaths INT UNSIGNED,
    assists INT UNSIGNED,
    episode_id INT UNSIGNED,
    act_id INT UNSIGNED,
    player_id INT UNSIGNED,
    FOREIGN KEY (map_id) REFERENCES maps(map_id),
    FOREIGN KEY (agent_id) REFERENCES agents(agent_id),
    FOREIGN KEY (rank_id) REFERENCES ranks(rank_id),
    FOREIGN KEY (division_id) REFERENCES divisions(division_id),
    FOREIGN KEY (episode_id) REFERENCES episodes(episode_id),
    FOREIGN KEY (act_id) REFERENCES acts(act_id),
    FOREIGN KEY (player_id)	REFERENCES player(player_id)
);

DROP TABLE matches;

SHOW TABLES