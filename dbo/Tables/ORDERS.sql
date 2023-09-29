CREATE TABLE [dbo].[ORDERS] (
    [OID]   CHAR (5) NULL,
    [ODATE] DATE     NULL,
    [OQTY]  INT      NULL,
    [PID]   CHAR (5) NOT NULL,
    [CID]   CHAR (5) NOT NULL,
    CONSTRAINT [ord_qty] CHECK ([OQTY]>(1)),
    CONSTRAINT [fk_orders_cid] FOREIGN KEY ([CID]) REFERENCES [dbo].[CUST] ([CID]),
    CONSTRAINT [fk_orders_pid] FOREIGN KEY ([PID]) REFERENCES [dbo].[PRODUCT] ([PID])
);


GO

