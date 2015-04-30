CREATE VIEW AverageLeaderRating AS
	SELECT fname, midinit, lastname, AVG(rating)
	FROM Leader INNER JOIN Rating
	ON Leader.Leader_id = Rating.Leader_id
	GROUP BY leader_id
GO

CREATE VIEW AllLeaderRatings AS
	SELECT fname, midinit, lastname, rating
	FROM Leader INNER JOIN Rating
	ON Leader.Leader_id = Rating.Leader_id
	ORDER BY leader_id
GO

CREATE VIEW UserRatings AS
	SELECT User_Account.username, Rating.leadername, Rating.rating
	FROM User_Account INNER JOIN Rating
	ON username = username
	ORDER BY username
GO

CREATE VIEW PartyMembers AS
	SELECT PoliticalParty.Party_name, Leader.leader_name
	FROM PoliticalParty INNER JOIN Leader
	ON leader_id = leader_id
	ORDER BY ID
GO

-- used to for general access to users, w/o while the actual user_account table will be hidden so that their email and password are hidden.
CREATE VIEW PublicUserView AS
	SELECT username, number_ratings
	FROM User_Account
GO