CREATE TABLE dialogues
(id INTEGER  PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL,
id_dialogue INTEGER  UNIQUE NOT NULL,
utc_datetime_last_parsing DATETIME NOT NULL,
parsing_time DOUBLE NOT NULL);

CREATE TABLE users
(id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL,
user_name TEXT NOT NULL,
user_link TEXT UNIQUE NOT NULL);
