CREATE DATABASE TrustCity;
USE TrustCity;

CREATE TABLE Projects(
id INT NOT NULL PRIMARY KEY,
title VARCHAR(30) NOT NULL,
monetary_goal MONEY NOT NULL,
description TEXT NOT NULL,
popularity INT NOT NULL,
date_of_publishing DATETIME NOT NULL,
duration_days INT NOT NULL,
is_started BIT
);

CREATE TABLE Citizens(
id INT NOT NULL  PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(30)NOT NULL
);
CREATE TABLE Projects_Citizens_Relations(
id INT NOT NULL PRIMARY KEY,
id_project INT NOT NULL,
id_citizens INT NOT NULL,
CONSTRAINT fk_projects_citizens_projects
FOREIGN KEY(id_project) 
REFERENCES Projects(id),
CONSTRAINT fk_projects_citizens_citizens
FOREIGN KEY (id_citizens) 
REFERENCES Citizens(id)
);

INSERT INTO Projects(id,title,monetary_goal,description,popularity,date_of_publishing,duration_days,is_started)
VALUES(1,'Saving endangered species',20000,'...',30,'2024-09-25 11:20:46',60,1)
INSERT INTO Projects(id,title,monetary_goal,description,popularity,date_of_publishing,duration_days,is_started)
VALUES(2,'Reducing deforestation',300000,'...',120,'2023-05-13 15:40:35',40,1)

INSERT INTO Citizens(id,first_name,last_name,email)
VALUES
(1,'Ivan','Petkov','petkovivan@gmail.com'),
(2,'Stoqn','Ivkov','ivkovsto234@gmail.com');

INSERT INTO Projects_Citizens_Relations(id,id_project,id_citizens)
VALUES
(10,1,1),
(11,2,2);

