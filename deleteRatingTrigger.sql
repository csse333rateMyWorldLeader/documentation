USE RateYourWorldLeader
GO

CREATE TRIGGER DeleteRating
ON Rating INSTEAD OF DELETE

AS
	DECLARE @leader_id smallint
	DECLARE @user varchar(10)
	DECLARE @rating smallint
	DECLARE @text varchar(1024)

	SET @leader_id = (SELECT leader_id FROM deleted)
	SET @user = (SELECT username FROM deleted)

	IF NOT EXISTS (
			SELECT *
			FROM Rating INNER JOIN User_Account ON Rating.username = User_Account.username
			WHERE leader_id = @leader_id
		)
		BEGIN
		PRINT('You cannont delete a rating that does not exist')
		END

	ELSE
		BEGIN

		-- add the user's new rating to the database
		DELETE FROM Rating
		WHERE @user = username AND @leader_id = leader_id
		
		-- update that the user has one more rating posted
		UPDATE User_Account
		SET number_ratings = (number_ratings - 1)
		WHERE username = @user
		
		END