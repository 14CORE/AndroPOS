CREATE TABLE dbo.ROLE
	(
	ROLEID int NOT NULL,
	ROLENAME varchar(50) NOT NULL,
	ISACTIVE bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.ROLE ADD CONSTRAINT
	PK_ROLE PRIMARY KEY CLUSTERED 
	(
	ROLEID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ROLE SET (LOCK_ESCALATION = TABLE)