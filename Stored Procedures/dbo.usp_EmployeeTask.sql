SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   PROCEDURE [dbo].[usp_EmployeeTask]
    @TaskId INT,
    @Id INT = NULL,
    @Name VARCHAR(100) = NULL,
    @eNAME VARCHAR(100) = NULL
	
AS
BEGIN
    SET NOCOUNT ON;

    IF @TaskId = 1
    BEGIN
        SELECT Id, Name, eNAME
        FROM dbo.Employee;
    END
    ELSE IF @TaskId = 2
    BEGIN
        IF @Id IS NULL OR @Name IS NULL
        BEGIN
            RAISERROR('Id and Name are required for insert.', 16, 1);
            RETURN;
        END

        INSERT INTO dbo.Employee (Id, Name, eNAME)
        VALUES (@Id, @Name, @eNAME);

        SELECT 'Record inserted successfully' AS Message;
    END
    ELSE
    BEGIN
        SELECT 'Invalid TaskId. Use 1 for SELECT or 2 for INSERT.' AS Message;
    END
END
GO
