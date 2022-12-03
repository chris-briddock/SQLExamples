/* This creates two tables, the relationship between these table are, many orders to one customer. */
BEGIN TRANSACTION;
GO

CREATE TABLE [Customers] (
    [CustomerId] uniqueidentifier NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Addressline1] nvarchar(max) NOT NULL,
    [Addressline2] nvarchar(max) NOT NULL,
    [Addressline3] nvarchar(max) NOT NULL,
    [PostCode] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY ([CustomerId])
);
GO

CREATE TABLE [Orders] (
    [OrderId] uniqueidentifier NOT NULL,
    [OrderDate] datetime2 NOT NULL,
    [CustomerId] uniqueidentifier NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([OrderId]),
    CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([CustomerId]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Orders_CustomerId] ON [Orders] ([CustomerId]);
GO

COMMIT TRANSACTION;
GO