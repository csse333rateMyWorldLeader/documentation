USE RateYourWorldLeader
GO

CREATE PROCEDURE CreateRating
	@leader_id smallint,
	@user varchar(10),
	@rating smallint,
	@text varchar(1024)
AS
	IF EXISTS (
		SELECT *
		FROM Rating INNER JOIN User_Account ON Rating.username = User_Account.username
		WHERE leader_id = @leader_id
		)
		BEGIN
		PRINT('You have already rated this leader, try updating your rating if you have changed how you feel about this leader.')
		RETURN 1;
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
	return 0;