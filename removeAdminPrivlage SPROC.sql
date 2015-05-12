USE RateYourWorldLeader
GO

ALTER PROCEDURE removeAdminPrivlage
@user varchar(10)
AS
	IF EXISTS (SELECT administrator FROM User_Account WHERE username = @user)
		BEGIN
		IF ((SELECT administrator FROM User_Account WHERE username = @user) = 0)
			BEGIN
			PRINT(@user + ' is not an administrator.')
			END
		ELSE
			BEGIN
			UPDATE User_Account
			SET administrator = 0
			WHERE username = @user
			PRINT(@user + ' has had admin privlages revoked.')
			END
		END
	ELSE
		BEGIN
		PRINT('The user "' + @user + '" does not exist')
		END