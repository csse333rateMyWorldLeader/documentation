CREATE PROCEDURE SearchLocationByType
@location varchar(45)
AS
	SELECT fname + ' ' + midint + ' ' + lname, Location.name AS 'location', Location.[type]
	FROM Leader INNER JOIN Leads ON Leader.leader_id = Leads.leader_id
	INNER Join Location ON Location.ppID = Leads.locationID
	WHERE location.name = '%' + @location +'%'
GO

CREATE PROCEDURE SearchWholeLocation
@location varchar(45)
AS
	SELECT fname + ' ' + midint + ' ' + lname AS [leader], Location.name AS [location], Location.[type]
	FROM (
		Leader INNER JOIN Leads ON Leader.leader_id = Leads.leader_id
		INNER JOIN Location ON Location.ppID = Leads.locationID
	) AS A
	INNER JOIN Location AS B ON A.ppID = B.superppID
	WHERE location.name = '%' + @location +'%'
	-- TODO ask Dr. Kulter about need for loops here. --
GO

CREATE PROCEDURE DeleteRating
@username varchar(10)
@leader_id smallint
AS
	IF NOT EXISTS (
			SELECT *
			FROM User_Account
			WHERE [username] = @username
		)
		BEGIN
		PRINT('That user does not exist')
		END

	ELSE IF NOT EXISTS (
			SELECT *
			FROM User_Account
			WHERE [username] = @username
		)
		BEGIN
		PRINT('That leader does not exist')
		END

	ELSE IF NOT EXISTS (
			SELECT *
			FROM Rating
			WHERE [username] = @username AND [leader_id] = @leader_id
		)
		BEGIN
		PRINT('That Rating Does not exist')
		END

	ELSE BEGIN
		DROP FROM Rating
		WHERE [username] = @username AND [leader_id] = @leader_id

		UPDATE User_Accound
		SET number_ratings = number_ratings - 1
		WHERE [username] = @username
		END
GO

/*CREATE PROCEDURE SearchUser
@username varchar(10)
AS
	SELECT fname + ' ' + midint + ' ' + lname AS [leader], */
