USE RateYourWorldLeader
GO

INSERT INTO Leader
Values (999, 'M', null, 'test', ' ', 'leader')
GO
INSERT INTO Leader
Values (888, 'M', null, 'other', ' ', 'leader')
GO

PRINT('1 should pass')
INSERT INTO Leads
VALUES (888, 1900, 60, 2000)

PRINT('2 should pass')
INSERT INTO Leads
VALUES (888, 1800, 58, 1899)

PRINT('3 should pass')
INSERT INTO Leads
VALUES (888, 2001, 59, 2899)

DELETE FROM Leads
WHERE Leader_id = 888

INSERT INTO leads
VALUES (888, 1800, 60, 2899)

PRINT('4 should fail') -- not correct
INSERT INTO Leads
VALUES (888, 2000, 60, 2899)

PRINT('5 should fail')
INSERT INTO Leads
VALUES (888, 2050, 60, 3000)

PRINT('6 should fail')
INSERT INTO Leads
VALUES (888, 1000, 60, 3000)

PRINT('7 should fail')
INSERT INTO Leads
VALUES (888, 1000, 60, 1900)

PRINT('8 should fail') -- not correct
INSERT INTO Leads
VALUES (999, 1200, 60, 2000)
GO

PRINT('9 should fail')
INSERT INTO Leads
VALUES (999, 1200, 60, 1300)
GO

PRINT('10 should fail')
INSERT INTO Leads
VALUES (999, 1700, 60, 2300)
GO

PRINT('11 should fail') -- is wrong.
INSERT INTO Leads
VALUES (999, 900, 60, 2000)
GO

Delete from leads
Where leader_id = 888 OR leader_id = 999

DELETE FROM Leader
WHERE leader_id = 888;

DELETE FROM Leader
WHERE leader_id = 999;
GO