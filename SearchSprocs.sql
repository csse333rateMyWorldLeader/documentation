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
	SELECT fname + ' ' + midint + ' ' + lname, Location.name AS 'location', Location.[type]
	FROM (
		Leader INNER JOIN Leads ON Leader.leader_id = Leads.leader_id
		INNER JOIN Location ON Location.ppID = Leads.locationID
	) AS A
	INNER JOIN Location AS B ON A.ppID = B.superppID
	WHERE location.name = '%' + @location +'%'
	-- TODO ask Dr. Kulter about need for loops here. --
GO
AS