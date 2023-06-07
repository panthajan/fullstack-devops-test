DROP DATABASE IF EXISTS mydb;

CREATE DATABASE mydb;

USE mydb;

DROP TABLE IF EXISTS mytable;

CREATE TABLE mytable ( 
  id INT NOT NULL AUTO_INCREMENT, 
  text LONGTEXT NOT NULL, 
  PRIMARY KEY (id) 
);


INSERT INTO mytable (text) VALUES("This is news 1");
INSERT INTO mytable (text) VALUES("This is news 2");
INSERT INTO mytable (text) VALUES("This is news 3");
INSERT INTO mytable (text) VALUES("This is news 4");
INSERT INTO mytable (text) VALUES("This is news 5");