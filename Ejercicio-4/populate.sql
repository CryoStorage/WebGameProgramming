use ranked_matches

INSERT INTO episodes (episode_id, name) VALUES 
	(1, 'IGNITION'), 
	(2, 'FORMATION'), 
	(3, 'REFLECTION'), 
	(4, 'DISRUPTION'), 
	(5, 'DIMENSION'), 
	(6, 'REVELATION');

INSERT INTO maps (name) VALUES 
	('bind'),
	('haven'),
	('split'),
	('ascent'),
	('icebox'),
	('breeze'),
	('fracture'),
	('pearl'),
	('lotus');

INSERT INTO agents (name, role_id) VALUES
	('astra', 4),
	('breach', 2),
	('brimstone', 4),
	('chamber', 2),
	('cypher', 3),
	('gekko', 1),
	('jett', 1),
	('kay/o', 2),
	('killjoy', 3),
	('neon', 1),
	('omen', 4),
	('phoenix', 1),
	('raze', 1),
	('reyna', 1),
	('sage', 3),
	('skye', 2),
	('sova', 2),
	('viper', 3),
	('yoru', 1);

INSERT INTO roles (name) VALUES 
	('duelist'),
	('initiator'),
	('sentinel'),
	('controller');

INSERT INTO ranks (name) VALUES 
	('iron'),
	('bronze'),
	('silver'),
	('gold'),
	('platinum'),
	('diamond'),
	('immortal'),
	('radiant');

INSERT INTO divisions (name) VALUES 
    ('1'),
    ('2'),
    ('3');

INSERT INTO acts (name, episode_id) VALUES 
    ('Act 1', 1),
    ('Act 2', 1),
    ('Act 3', 2),
    ('Act 4', 3),
    ('Act 5', 4),
    ('Act 6', 5);
  
INSERT INTO matches (match_id, date_time, duration, map_id, agent_id, score, econ_rating, avg_combat_score, rank_id, division_id, kills, deaths, assists, episode_id, act_id,player_id) VALUES
	(1,27/3/2023 4:39:00,00:45:23,3,5,'11/14',50,197,7,3,8,16,6,3,1,1),
	(2,28/3/2023 4:39:00,00:46:23:00,3,5,'8/14',42,199,7,3,5,12,8,3,1,1),
	(3,29/3/2023 4:39:00,00:47:23:00,5,5,'2/10',31,167,8,1,2,10,2,3,1,1),
	(4,30/3/2023 4:39:00,00:48:23:00,6,5,'14/6',59,218,8,1,14,6,3,3,1,1),
	(5,31/3/2023 4:39:00,00:49:23:00,7,5,'16/18',43,211,8,1,10,20,4,3,1,1),
	(6,1/4/2023 4:39:00,00:50:23:00,1,5,'11/15',23,168,8,2,11,15,9,3,2,1),
	(7,2/4/2023 4:39:00,00:51:23:00,2,18,'8/15',51,206,8,2,13,14,1,3,2,1),
	(8,3/4/2023 4:39:00,00:52:23:00,9,5,'14/2',30,171,8,2,14,3,2,3,2,1),
	(9,4/4/2023 4:39:00,00:53:23:00,2,9,'6/11',22,175,8,3,15,11,6,3,2,1),
	(10,5/4/2023 4:39:00,00:54:23:00,2,9,'16/18',106,320,8,3,16,18,4,3,2,1);
    
SHOW TABLES

SELECT * FROM maps;
SELECT * FROM episodes;
SELECT * FROM agents;
SELECT * FROM roles;
SELECT * FROM ranks;
SELECT * FROM divisions;
SELECT * FROM acts;
SELECT * FROM matches;

LOAD DATA LOCAL INFILE 'C:\Users\CryoStorage\Downloads/Valo_DB_Corrida - matches.csv'
INTO TABLE matches
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(match_id, date_time, duration, map_id, agent_id, score, econ_rating, avg_combat_score, rank_id, division_id, kills, deaths, assists, episode_id, act_id,player_id);

