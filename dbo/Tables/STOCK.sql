CREATE TABLE [dbo].[STOCK] (
    [SQTY] INT      NULL,
    [ROL]  INT      NULL,
    [MOQ]  INT      NULL,
    [PID]  CHAR (5) NOT NULL,
    CONSTRAINT [st_moq] CHECK ([MOQ]>=(5)),
    CONSTRAINT [st_qty] CHECK ([SQTY]>=(0)),
    CONSTRAINT [st_rol] CHECK ([ROL]>(0)),
    CONSTRAINT [fk_stock_pid] FOREIGN KEY ([PID]) REFERENCES [dbo].[PRODUCT] ([PID])
);


GO

