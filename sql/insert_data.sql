INSERT INTO player VALUES
(1, 'Novak', 'Djokovic', 'Men', 'Serbia', '1987-05-22'),
(2, 'Carlos', 'Alcaraz', 'Men', 'Spain', '2003-05-05'),
(3, 'Iga', 'Swiatek', 'Women', 'Poland', '2001-05-31'),
(4, 'Aryna', 'Sabalenka', 'Women', 'Belarus', '1998-05-05');

INSERT INTO coach VALUES
(1, 'Goran', 'Ivanisevic', 'Croatia', 1),
(2, 'Juan Carlos', 'Ferrero', 'Spain', 2);

INSERT INTO tournament VALUES
(1, 'Wimbledon', 'Grand Slam', 'London', 'Grass', TRUE),
(2, 'Australian Open', 'Grand Slam', 'Melbourne', 'Hard', TRUE);

INSERT INTO tournament_edition VALUES
(1, 1, 2023, '2023-07-01', '2023-07-14'),
(2, 2, 2024, '2024-01-10', '2024-01-28');

INSERT INTO match VALUES
(1, 1, 'Final', 'Singles', 'Men', '2023-07-14', 1),
(2, 2, 'Final', 'Singles', 'Men', '2024-01-28', 2);

INSERT INTO match_participant VALUES
(1, 1, 1),
(1, 2, 2),
(2, 1, 1),
(2, 2, 2);

INSERT INTO match_set_score VALUES
(1, 1, 1, 6, 4),
(2, 1, 2, 5, 7),
(3, 1, 3, 6, 3);

INSERT INTO player_coach_history VALUES
(1, 1, 1, '2019-01-01', NULL),
(2, 2, 2, '2020-01-01', NULL);