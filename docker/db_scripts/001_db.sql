USE master
GO
/****** Object:  Database [test]    Script Date: 14/02/2020 11:38:58 ******/
CREATE DATABASE test
  CONTAINMENT = NONE
GO

USE test
GO

CREATE Login sldev01
  WITH
  PASSWORD = 'Password123',
  DEFAULT_DATABASE = test,
  CHECK_POLICY = OFF,
  CHECK_EXPIRATION = OFF
GO

CREATE USER user01 FOR LOGIN sldev01 WITH DEFAULT_SCHEMA = sldb01
GO

CREATE SCHEMA sldb01 
  AUTHORIZATION user01
GO
/*
ALTER ROLE [db_owner] ADD MEMBER [SMS_Repository_Dev]
GO
*/
