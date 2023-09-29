CREATE TABLE [dbo].[PRODUCT] (
    [PID]      CHAR (5)     NOT NULL,
    [PDESC]    VARCHAR (30) NULL,
    [PRICE]    INT          NULL,
    [CATEGORY] VARCHAR (20) NULL,
    [SID]      CHAR (5)     NOT NULL,
    CONSTRAINT [prod_id] PRIMARY KEY CLUSTERED ([PID] ASC),
    CONSTRAINT [prod_category] CHECK ([CATEGORY]='HC' OR [CATEGORY]='HA' OR [CATEGORY]='IT'),
    CONSTRAINT [prod_price] CHECK ([PRICE]>(0)),
    CONSTRAINT [fk_product_SID] FOREIGN KEY ([SID]) REFERENCES [dbo].[SUPPLIER] ([SID])
);


GO

