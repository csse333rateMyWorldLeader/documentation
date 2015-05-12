USE RateYourWorldLeader
GO

ALTER VIEW AverageLeaderRating AS
	SELECT fname, midint, lname, AVG(rating) AS [overall rating]
	FROM Leader INNER JOIN Rating
	ON Leader.Leader_id = Rating.Leader_id
	GROUP BY Leader.leader_id, lname, fname, midint
GO

ALTER VIEW AllLeaderRatings AS
	SELECT fname, midint, lname, rating, txt AS [description]
	FROM Leader INNER JOIN Rating
	ON Leader.Leader_id = Rating.Leader_id
GO

ALTER VIEW UserRatings AS
	SELECT User_Account.username, fname, midint, lname, Rating.rating
	FROM User_Account INNER JOIN Rating ON User_Account.username = Rating.username
	INNER JOIN Leader ON rating.leader_id = leader.leader_id
GO

ALTER VIEW PartyMembers AS
	SELECT PoliticalParty.party_name, fname, midint, lname
	FROM PartyMember INNER JOIN Leader
	ON leaderid = leader_id
	INNER JOIN PoliticalParty ON polipartyID = ID
GO

-- used to for general access to users, w/o while the actual user_account table will be hidden so that their email and password are hidden.
ALTER VIEW PublicUserView AS
	SELECT username, number_ratings
	FROM User_Account
GO