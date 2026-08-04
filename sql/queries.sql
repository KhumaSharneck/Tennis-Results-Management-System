-- Query 1: Find all players from Spain
SELECT first_name, last_name, nationality
FROM player
WHERE nationality = 'Spain';


-- Query 2: List all female players
SELECT first_name, last_name, gender
FROM player
WHERE gender = 'Women';


-- Query 3: Show all tournaments played on grass courts
SELECT tournament_name, surface_type
FROM tournament
WHERE surface_type = 'Grass';


-- Query 4: Show players and their coaches
SELECT 
    p.first_name,
    p.last_name,
    c.first_name AS coach_first_name,
    c.last_name AS coach_last_name
FROM player p
JOIN coach c ON p.player_id = c.former_player_id;-- Query 4: Show players and their coaches
SELECT 
    p.first_name,
    p.last_name,
    c.first_name AS coach_first_name,
    c.last_name AS coach_last_name
FROM player p
JOIN coach c ON p.player_id = c.former_player_id;


-- Query 5: Show matches with tournament names
SELECT 
    m.match_id,
    t.tournament_name,
    m.round_name,
    m.match_date
FROM match m
JOIN tournament_edition te ON m.edition_id = te.edition_id
JOIN tournament t ON te.tournament_id = t.tournament_id;


-- Query 6: Count total number of players
SELECT COUNT(*) AS total_players
FROM player;


-- Query 7: Count players by nationality
SELECT 
    nationality,
    COUNT(*) AS player_count
FROM player
GROUP BY nationality
ORDER BY player_count DESC;


-- Query 8: Count matches by tournament
SELECT 
    t.tournament_name,
    COUNT(m.match_id) AS total_matches
FROM tournament t
JOIN tournament_edition te 
ON t.tournament_id = te.tournament_id
JOIN match m 
ON te.edition_id = m.edition_id
GROUP BY t.tournament_name;


-- Query 9: Count wins by player
SELECT 
    p.first_name,
    p.last_name,
    COUNT(*) AS match_wins
FROM match m
JOIN match_participant mp 
ON m.match_id = mp.match_id
JOIN player p 
ON mp.player_id = p.player_id
WHERE mp.side_no = m.winner_side
GROUP BY p.player_id, p.first_name, p.last_name
ORDER BY match_wins DESC;


-- Query 10: Show full match scoreline by set
SELECT 
    m.match_id,
    t.tournament_name,
    m.round_name,
    m.match_date,
    mss.set_number,
    mss.side1_games,
    mss.side2_games
FROM match m
JOIN tournament_edition te
ON m.edition_id = te.edition_id
JOIN tournament t
ON te.tournament_id = t.tournament_id
JOIN match_set_score mss
ON m.match_id = mss.match_id
ORDER BY m.match_id, mss.set_number;


-- Query 11: Find players who have both played matches and have coaching experience
SELECT DISTINCT
    p.first_name,
    p.last_name
FROM player p
JOIN match_participant mp
ON p.player_id = mp.player_id
JOIN coach c
ON p.player_id = c.former_player_id;


-- Query 12: Identify players with strong performance based on match wins
SELECT 
    p.first_name,
    p.last_name,
    COUNT(*) AS total_wins
FROM match m
JOIN match_participant mp
ON m.match_id = mp.match_id
JOIN player p
ON mp.player_id = p.player_id
WHERE mp.side_no = m.winner_side
GROUP BY p.player_id, p.first_name, p.last_name
HAVING COUNT(*) >= 1
ORDER BY total_wins DESC;