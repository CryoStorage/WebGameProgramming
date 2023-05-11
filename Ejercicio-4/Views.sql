USE ranked_matches

CREATE VIEW match_history AS  SELECT
	m2.match_id,
	m2.player_id,
	p.player_name
FROM
	matches m2
INNER JOIN player p ON
	m2.player_id = p.player_id
	
	SELECT * FROM match_history;