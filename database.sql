CREATE TABLE [dbo].[author] (
    [id]   INT           NOT NULL,
    [name] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


CREATE TABLE [dbo].[book] (
    [id]        INT             NOT NULL,
    [title]     VARBINARY (100) NULL,
    [author_id] INT             NULL,
    [edition]   VARCHAR (50)    NULL,
    [price]     NUMERIC (12, 2) NULL,
    [location]  VARCHAR (50)    NULL,
    [no_left]   INT             NULL,
    [threshold] INT             NULL,
    [pub_id]    NCHAR (10)      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[publisher] (
    [id]      INT           NOT NULL,
    [name]    VARCHAR (100) NULL,
    [address] VARCHAR (100) NULL,
    [phone]   NUMERIC (12)  NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


CREATE TABLE [dbo].[purchases] (
    [id]        INT          NOT NULL,
    [isbn]      VARCHAR (50) NULL,
    [book_id]   INT          NULL,
    [bought_on] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[requests] (
    [id]       INT          NOT NULL,
    [title]    VARCHAR (50) NULL,
    [author]   VARCHAR (50) NULL,
    [edition]  VARCHAR (50) NULL,
    [email_id] VARCHAR (50) NULL,
    [pub_id]   NCHAR (10)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

