BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[users] (
    [username] VARCHAR(100) NOT NULL,
    [password] VARCHAR(100) NOT NULL,
    [name] VARCHAR(100) NOT NULL,
    [token] VARCHAR(100),
    CONSTRAINT [users_pkey] PRIMARY KEY CLUSTERED ([username])
);

-- CreateTable
CREATE TABLE [dbo].[contacts] (
    [id] INT NOT NULL IDENTITY(1,1),
    [first_name] VARCHAR(100) NOT NULL,
    [last_name] VARCHAR(100),
    [email] VARCHAR(200),
    [phone] VARCHAR(20),
    [username] VARCHAR(100) NOT NULL,
    CONSTRAINT [contacts_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[addresses] (
    [id] INT NOT NULL IDENTITY(1,1),
    [street] VARCHAR(255),
    [city] VARCHAR(100),
    [province] VARCHAR(100),
    [country] VARCHAR(100) NOT NULL,
    [postal_code] VARCHAR(10) NOT NULL,
    [contact_id] INT NOT NULL,
    CONSTRAINT [addresses_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- AddForeignKey
ALTER TABLE [dbo].[contacts] ADD CONSTRAINT [contacts_username_fkey] FOREIGN KEY ([username]) REFERENCES [dbo].[users]([username]) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[addresses] ADD CONSTRAINT [addresses_contact_id_fkey] FOREIGN KEY ([contact_id]) REFERENCES [dbo].[contacts]([id]) ON DELETE NO ACTION ON UPDATE CASCADE;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
