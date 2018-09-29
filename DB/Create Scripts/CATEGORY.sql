CREATE TABLE dbo.CATEGORY
	(
	CATEGORYID int NOT NULL,
	CATEGORYNAME varchar(50) NOT NULL,
	ISACTIVE bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.CATEGORY ADD CONSTRAINT
	PK_CATEGORY PRIMARY KEY CLUSTERED 
	(
	CATEGORYID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.CATEGORY SET (LOCK_ESCALATION = TABLE)
