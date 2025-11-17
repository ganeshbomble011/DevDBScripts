CREATE TABLE [dbo].[Inventory]
(
[ItemId] [int] NOT NULL IDENTITY(1, 1),
[ItemName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity] [int] NULL,
[CreatedDate] [datetime] NULL CONSTRAINT [DF__Inventory__Creat__37A5467C] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [PK__Inventor__727E838BA5941871] PRIMARY KEY CLUSTERED ([ItemId]) ON [PRIMARY]
GO
