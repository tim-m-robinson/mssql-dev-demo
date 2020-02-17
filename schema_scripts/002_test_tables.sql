CREATE OR ALTER PROC testEmpTable01
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @RC INT
  SELECT @RC=COUNT(*)
  FROM sysobjects
  WHERE type = 'U'
  AND name = 'emp'

  IF (@RC=1)
    RETURN 0
  ELSE
    RETURN 1
END;
GO

EXEC testEmpTable01
GO