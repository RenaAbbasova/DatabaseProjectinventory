CREATE TABLE [dbo].[CUST] (
    [CID]     CHAR (5)     NOT NULL,
    [CNAME]   VARCHAR (30) NOT NULL,
    [ADDRESS] VARCHAR (30) NOT NULL,
    [CITY]    VARCHAR (20) NOT NULL,
    [PHONE]   VARCHAR (20) NULL,
    [EMAIL]   VARCHAR (30) NOT NULL,
    [DOB]     DATE         NULL,
    CONSTRAINT [cust_id] PRIMARY KEY CLUSTERED ([CID] ASC),
    CONSTRAINT [cust_dob] CHECK ([DOB]<'1-JAN-2000')
);


GO
