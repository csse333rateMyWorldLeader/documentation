DROP VIEW AverageLeaderRating
GO


CREATE VIEW AverageLeaderRating AS
	SELECT fname, midint, lname, AVG(rating) AS [overall rating]
	FROM Leader INNER JOIN Rating
	ON Leader.Leader_id = Rating.Leader_id
	GROUP BY Leader.leader_id, lname, fname, midint
GO

DROP VIEW AllLeaderRatings
GO

CREATE VIEW AllLeaderRatings AS
	SELECT fname, midint, lname, rating
	FROM Leader INNER JOIN Rating
	ON Leader.Leader_id = Rating.Leader_id
GO

DROP VIEW UserRatings
GO 

CREATE VIEW UserRatings AS
	SELECT User_Account.username, fname, midint, lname, Rating.rating
	FROM User_Account INNER JOIN Rating ON User_Account.username = Rating.username
	INNER JOIN Leader ON rating.leader_id = leader.leader_id
GO

CREATE VIEW PartyMembers AS
	SELECT PoliticalParty.party_name, fname, midint, lname
	FROM PartyMember INNER JOIN Leader
	ON leaderid = leader_id
	INNER JOIN PoliticalParty ON polipartyID = ID
GO

DROP VIEW PublicUserView
GO

-- used to for general access to users, w/o while the actual user_account table will be hidden so that their email and password are hidden.
CREATE VIEW PublicUserView AS
	SELECT username, number_ratings
	FROM User_Account
GO