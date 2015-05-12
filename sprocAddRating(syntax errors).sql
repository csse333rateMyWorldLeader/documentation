CREATE PROCEDURE addRating
	
	@leader_id smallint,
	@user varchar(10),
	@rating smallint,
	@text varchar(1024)
AS

	SET @leader_id = (SELECT leader_id FROM deleted)
	SET @user = (SELECT username FROM deleted)

	IF NOT EXISTS (
			SELECT *
			FROM User_Account
			WHERE username = @user
		)
		BEGIN
		PRINT('that user does not exist.')
		END

	ELSE IF EXISTS (
			SELECT *
			FROM Rating
			WHERE leader_id = @leader_id AND username = @user
		)
		
		BEGIN
		PRINT('You already rated that leader')
		END

	ELSE
		BEGIN

		-- add the user's new rating to the database
		INSERT INTO Rating
		VALUES @user, @leader_id, @text, @rating, GETDATE()
		
		-- update that the user has one more rating posted
		UPDATE User_Account
		SET number_ratings = (number_ratings + 1)
		WHERE username = @user
		
		END