CREATE TABLE IF NOT EXISTS developers (
  id         INT PRIMARY KEY,
  first_name VARCHAR(50)  NOT NULL,
  last_name  VARCHAR(100) NOT NULL,
  specialty  VARCHAR(100) NOT NULL,
  experience INT          NOT NULL,
  salary     DECIMAL      NOT NULL
);

INSERT INTO developers VALUES (1, 'Eugene', 'Suleimanov', 'Software Engineer', 3, '3000.00');