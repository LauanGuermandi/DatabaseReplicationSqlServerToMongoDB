CREATE DATABASE TESTE
GO

USE TESTE
GO

CREATE TABLE PESSOA(
    ID UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
    NAME VARCHAR(255) NOT NULL
)
GO

INSERT INTO PESSOA(NAME) VALUES('Lauan Guermandi');
GO
UPDATE PESSOA SET NAME = 'Lauan Borges Guermandi' WHERE NAME = 'Lauan Guermandi';
GO

EXEC sys.sp_cdc_enable_db;
GO
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'PESSOA', @role_name = NULL, @supports_net_changes = 0;
GO

