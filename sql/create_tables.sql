CREATE TABLE player (
    player_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Men', 'Women')),
    nationality VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE coach (
    coach_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    former_player_id INT NOT NULL,
    CONSTRAINT fk_coach_former_player
        FOREIGN KEY (former_player_id)
        REFERENCES player(player_id)
);

CREATE TABLE tournament (
    tournament_id INT PRIMARY KEY,
    tournament_name VARCHAR(100) NOT NULL,
    category VARCHAR(30) NOT NULL,
    location VARCHAR(100) NOT NULL,
    surface_type VARCHAR(20) NOT NULL,
    is_grand_slam BOOLEAN NOT NULL
);

CREATE TABLE tournament_edition (
    edition_id INT PRIMARY KEY,
    tournament_id INT NOT NULL,
    year INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT fk_edition_tournament
        FOREIGN KEY (tournament_id)
        REFERENCES tournament(tournament_id),
    CONSTRAINT chk_edition_dates
        CHECK (end_date >= start_date),
    CONSTRAINT uq_tournament_year
        UNIQUE (tournament_id, year)
);

CREATE TABLE match (
    match_id INT PRIMARY KEY,
    edition_id INT NOT NULL,
    round_name VARCHAR(30) NOT NULL,
    match_type VARCHAR(10) NOT NULL CHECK (match_type IN ('Singles', 'Doubles')),
    gender_category VARCHAR(10) NOT NULL CHECK (gender_category IN ('Men', 'Women')),
    match_date DATE NOT NULL,
    winner_side INT NOT NULL CHECK (winner_side IN (1, 2)),
    CONSTRAINT fk_match_edition
        FOREIGN KEY (edition_id)
        REFERENCES tournament_edition(edition_id)
);

CREATE TABLE match_participant (
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    side_no INT NOT NULL CHECK (side_no IN (1, 2)),
    PRIMARY KEY (match_id, player_id),
    CONSTRAINT fk_mp_match
        FOREIGN KEY (match_id)
        REFERENCES match(match_id),
    CONSTRAINT fk_mp_player
        FOREIGN KEY (player_id)
        REFERENCES player(player_id)
);

CREATE TABLE match_set_score (
    set_score_id INT PRIMARY KEY,
    match_id INT NOT NULL,
    set_number INT NOT NULL CHECK (set_number > 0),
    side1_games INT NOT NULL CHECK (side1_games >= 0),
    side2_games INT NOT NULL CHECK (side2_games >= 0),
    CONSTRAINT fk_score_match
        FOREIGN KEY (match_id)
        REFERENCES match(match_id),
    CONSTRAINT uq_match_set
        UNIQUE (match_id, set_number)
);

CREATE TABLE player_coach_history (
    history_id INT PRIMARY KEY,
    player_id INT NOT NULL,
    coach_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    CONSTRAINT fk_pch_player
        FOREIGN KEY (player_id)
        REFERENCES player(player_id),
    CONSTRAINT fk_pch_coach
        FOREIGN KEY (coach_id)
        REFERENCES coach(coach_id),
    CONSTRAINT chk_coach_dates
        CHECK (end_date IS NULL OR end_date >= start_date)
);