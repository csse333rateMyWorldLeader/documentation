USE RateYourWorldLeader
GO

ALTER TRIGGER CreateRating
ON Rating INSTEAD OF INSERT

AS
	DECLARE @leader_id smallint
	DECLARE @user varchar(10)
	DECLARE @rating smallint
	DECLARE @text varchar(1024)

	SET @leader_id = (SELECT leader_id FROM inserted)
	SET @user = (SELECT username FROM inserted)
	SET @rating = (SELECT rating FROM inserted)
	SET @text = (SELECT txt FROM inserted)

	IF EXISTS (
			SELECT *
			FROM Rating INNER JOIN User_Account ON Rating.username = User_Account.username
			WHERE leader_id = @leader_id
		)
		BEGIN
		PRINT('You have already rated this leader, try updating your rating if you have changed how you feel about this leader.')
		END

	ELSE
		BEGIN

		-- add the user's new rating to the database
		INSERT INTO Rating
		VALUES (@user, @leader_id, @text, @rating, GETDATE())
		
		-- update that the user has one more rating posted
		UPDATE User_Account
		SET number_ratings = (number_ratings + 1)
		WHERE username = @user		
		
		END