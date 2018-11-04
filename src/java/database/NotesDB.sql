DROP DATABASE if exists NotesDB;
CREATE DATABASE NotesDB;

USE NotesDB;

CREATE TABLE users(
    username VARCHAR(20) NOT NULL, 
    password VARCHAR(20) NOT NULL, 
    firstname VARCHAR(20), 
    lastname VARCHAR(20), 
    email VARCHAR(40), 
    CONSTRAINT PK_username PRIMARY KEY (username));
    
CREATE TABLE notes(
	noteid INT NOT NULL,
    dateCreated DATETIME,
    contents VARCHAR(10000),
    CONSTRAINT PK_noteid PRIMARY KEY (noteid));

INSERT INTO users(username, password)
VALUES("admin","password");

INSERT INTO notes
    (noteid, datecreated, contents)
    VALUES
    (1, SYSDATE(), "This is the first note"),
    (1, SYSDATE(), "This is the second note"),
    (1, SYSDATE(), "This is the third note");    

COMMIT;