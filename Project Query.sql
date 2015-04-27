USE RateYourWorldLeader
GO

CREATE TABLE LEADER(
	gender VARCHAR(1),
	bday date,
	leader_id int,
	fname VARCHAR(20),
	midint VARCHAR(2),
	lname VARCHAR(20),

	PRIMARY KEY(leader_id)
)

CREATE TABLE LEADS(
	leader_id int REFERENCES LEADER(leader_id),
	year_ smallint,
	stateID smallint REFERENCES STATEORTERRITORY(stateID),
	countryID smallint REFERENCES COUNTRY(countryID),

	PRIMARY KEY(leader_id, year_)
);

CREATE TABLE USER_ACCOUNT(
	username VARCHAR(10),
	login_password VARCHAR(20),
	email VARCHAR(40),
	number_ratings int,

	PRIMARY KEY(username)
);

INSERT INTO USER_ACCOUNT (username, login_password, email, number_ratings)
VALUES('fineral', 'hellopeoples', 'fineral@rose-hulman.edu', 0)

INSERT INTO USER_ACCOUNT (username, login_password, email, number_ratings)
VALUES('finitez', 'moom1232', 'hamiltjc@rose-hulman.edu', 0)

INSERT INTO USER_ACCOUNT (username, login_password, email, number_ratings)
VALUES('bonattt', 'password', 'bonattt@rose-hulman.edu', 0)

CREATE TABLE RATING(
	username VARCHAR(10) REFERENCES USER_ACCOUNT(username),
	leader_id int REFERENCES LEADER(leader_id),
	txt VARCHAR(1024),
	rating smallint,

	PRIMARY KEY(username, leader_id)
);

CREATE TABLE POLITICALPARTY(
	ID smallint,
	party_name VARCHAR(40),

	PRIMARY KEY(ID)
);

CREATE TABLE STATEORTERRITORY(
	territory_name VARCHAR(30),
	state_population int,
	country smallint REFERENCES COUNTRY(countryID),
	stateID smallint,

	PRIMARY KEY(stateID)
);

INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Alabama',4779736,1,1)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Alaska',710231,1,2)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Arizona',6392017,1,3)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Arkansas',2915918,1,4)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('California',37253956,1,5)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Colorado',5029196,1,6)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Connecticut',3574097,1,7)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Delaware',897934,1,8)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Florida',18801310,1,9)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Georgia',9687653,1,10)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Hawaii',1360301,1,11)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Idaho',1567582,1,12)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Illinois',12830632,1,13)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Indiana',6483802,1,14)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Iowa',3046355,1,15)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Kansas',2853118,1,16)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Kentucky',4339367,1,17)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Louisiana',4533372,1,18)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Maine',1328361,1,19)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Maryland',5773552,1,20)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Massachusetts',6547629,1,21)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Michigan',9883640,1,22)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Minnesota',5303925,1,23)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Mississippi',2967297,1,24)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Missouri',5988927,1,25)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Montana',989415,1,26)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Nebraska',1826341,1,27)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Nevada',2700551,1,28)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('New Hampshire',1316470,1,29)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('New Jersey',8791894,1,30)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('New Mexico',2059179,1,31)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('New York',19378102,1,32)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('North Carolina',9535483,1,33)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('North Dakota',672591,1,34)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Ohio',11536504,1,35)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Oklahoma',3751351,1,36)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Oregon',3831074,1,37)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Pennsylvania',12702379,1,38)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Rhode Island',1052567,1,39)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('South Carolina',4625364,1,40)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('South Dakota',814180,1,41)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Tennessee',6346105,1,42)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Texas',25145561,1,43)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Utah',2763885,1,44)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Vermont',625741,1,45)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Virginia',8001024,1,46)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Washington',6724540,1,47)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('West Virginia',1852994,1,48)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Wisconsin',5686986,1,49)
 
INSERT INTO STATEORTERRITORY(territory_name, state_population, country, stateID) 
VALUES('Wyoming',563626,1,50)

CREATE TABLE COUNTRY(
	country_name VARCHAR(42),
	government_system VARCHAR(20),
	countryID smallint,

	PRIMARY KEY(countryID)
);

INSERT INTO COUNTRY (country_name, government_system, countryID, continentID)
VALUES('Russia', NULL, 2,3)

INSERT INTO COUNTRY (country_name, government_system, countryID, continentID)
VALUES('Sweeden', NULL, 3,3)

INSERT INTO COUNTRY (country_name, government_system, countryID, continentID)
VALUES('North Korea', NULL, 4,5)

INSERT INTO COUNTRY (country_name, government_system, countryID, continentID)
VALUES('United States', NULL, 1,1)

INSERT INTO COUNTRY (country_name, government_system, countryID, continentID)
VALUES('Lebanon', NULL, 5,5)

ALTER TABLE COUNTRY
ADD continentID smallint REFERENCES CONTINENT

DROP TABLE LEADS

CREATE TABLE CONTINENT(
	continent_name VARCHAR(15),
	continentID smallint,

	PRIMARY KEY(continentID)
);

CREATE TABLE REGION(
	region_name VARCHAR(30),
	regionID int,
	continent smallint REFERENCES CONTINENT(continentID),
	country smallint REFERENCES COUNTRY(countryID),
	
	PRIMARY KEY(regionID)
);

INSERT INTO REGION(region_name, regionID, continent, country)
VALUES('Midwest',1,1,1)

CREATE TABLE LEADERMEMBEROFPARTY(
	leader_id int REFERENCES LEADER(leader_id),
	year_ smallint,
	party_id smallint REFERENCES POLITICALPARTY(ID),

	PRIMARY KEY(leader_id, year_)
);

CREATE TABLE COUNTRYALLIESWITH(
	country_name smallint REFERENCES COUNTRY(countryID),
	allied_with smallint REFERENCES COUNTRY(countryID),

	PRIMARY KEY(country_name, allied_with)
);

CREATE TABLE REGIONADJACENTTO(
	regionID int REFERENCES REGION(regionID),
	adjacent_regionID int REFERENCES REGION(regionID),

	PRIMARY KEY(regionID, adjacent_regionID)
);

CREATE TABLE STATEADJACENTTO(
	state_id smallint REFERENCES STATEORTERRITORY(stateID),
	adjacent_to smallint REFERENCES STATEORTERRITORY(stateID),

	PRIMARY KEY(state_id, adjacent_to)
);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('North America', 1);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('Europe',3);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('Asia', 5);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('South America',2);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('Africa', 4);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('Australia', 6);

INSERT INTO CONTINENT (continent_name, continentID)
VALUES ('Antarctica', 7);

USE RateYourWorldLeader
GO

INSERT INTO POLITICALPARTY(ID,party_name)
VALUES(1,  'Republican party of America')

INSERT INTO POLITICALPARTY(ID,party_name)
VALUES(2,  'Democrat party of America')
