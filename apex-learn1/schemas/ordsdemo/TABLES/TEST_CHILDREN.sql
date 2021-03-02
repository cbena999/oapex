--------------------------------------------------------
--  DDL for Table TEST_CHILDREN
--------------------------------------------------------

  CREATE TABLE "ORDSDEMO"."TEST_CHILDREN" 
   (	"CHILD_ID" NUMBER, 
	"CHILD_NAME" VARCHAR2(120 BYTE), 
	"GENDER" VARCHAR2(12 BYTE), 
	"SCHOOL" VARCHAR2(120 BYTE), 
	"AGE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS";

GRANT SELECT, DELETE, INSERT, UPDATE ON "ORDSDEMO"."TEST_CHILDREN" TO "DEVASCH";
