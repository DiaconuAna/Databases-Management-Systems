USE antiquitylab
GO
ALTER DATABASE antiquitylab
SET ALLOW_SNAPSHOT_ISOLATION ON

SET TRANSACTION ISOLATION LEVEL SNAPSHOT

BEGIN TRAN
	
	WAITFOR DELAY '00:00:10'
	
	UPDATE Clients
	SET FirstName = 'deadlock Clients v1'
	WHERE Id = 1

COMMIT TRAN