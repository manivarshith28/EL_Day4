CREATE TABLE KABADDI_PLAYERS (
    player_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age BETWEEN 18 AND 40),
    team VARCHAR(30) NOT NULL,
    position VARCHAR(20) CHECK (position IN ('Raider', 'Defender', 'All-Rounder')),
    matches_played INT CHECK (matches_played >= 0),
    raid_points INT CHECK (raid_points >= 0),
    tackle_points INT CHECK (tackle_points >= 0),
    is_active BOOLEAN DEFAULT TRUE
);
