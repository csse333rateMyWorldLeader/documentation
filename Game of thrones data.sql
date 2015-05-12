USE RateYourWorldLeader
GO

INSERT INTO Leader
VALUES (11, 'M', null, 'Stannis', '', 'Baratheon');

INSERT INTO Leader
VALUES (12, 'M', null, 'Robert', '', 'Baratheon');

INSERT INTO Location
VALUES (17, 'continent/kingdom', 'Westerose', 1000000, null);

INSERT INTO Location
VALUES (18, 'City', 'Dragonstone', 5000, 17);

INSERT INTO Leads
VALUES (11, 2010, 18, null);

INSERT INTO Leads
VALUES (12, 2000, 17, 2010);

INSERT INTO PoliticalParty
VALUES (3, 'House Baratheon', 18);

INSERT INTO PartyMember
VALUES (11, null, 3, null)

INSERT INTO PartyMember
VALUES (12, null, 3, null)