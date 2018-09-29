CREATE TABLE dbo.PRODUCT
	(
	PRODUCTID char(13) NOT NULL,
	PRODUCTNAME varchar(50) NOT NULL,
	CATEGORYID int NOT NULL,
	PRICE decimal(18, 2) NOT NULL,
	BARCODEID char(14) NULL,
	ISACTIVE bit NOT NULL,
	SETDATE datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.PRODUCT ADD CONSTRAINT
	PK_PRODUCT PRIMARY KEY CLUSTERED 
	(
	PRODUCTID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PRODUCT ADD CONSTRAINT
	FK_PRODUCT_CATEGORY FOREIGN KEY
	(
	CATEGORYID
	) REFERENCES dbo.CATEGORY
	(
	CATEGORYID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PRODUCT SET (LOCK_ESCALATION = TABLE)
