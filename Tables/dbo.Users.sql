CREATE TABLE [dbo].[Users]
(
[Userid] [int] NOT NULL IDENTITY(1, 1),
[username] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[roleid] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK__Users__1797D02495525CE8] PRIMARY KEY CLUSTERED ([Userid]) ON [PRIMARY]
GO
