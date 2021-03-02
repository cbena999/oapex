--------------------------------------------------------
--  DDL for Table USER_VALIDATE
--------------------------------------------------------

  CREATE TABLE "ORDSDEMO"."USER_VALIDATE" 
   (	"USER_NAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"STATUS" CHAR(1 BYTE), 
	"USER_TYPE" NUMBER
   )  SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
