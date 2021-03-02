--------------------------------------------------------
--  DDL for Table FIRMA
--------------------------------------------------------

  CREATE TABLE "ORDSDEMO"."FIRMA" 
   (	"ID" NUMBER, 
	"FILENAME" VARCHAR2(50 BYTE), 
	"MIME" VARCHAR2(25 BYTE), 
	"FECHA" DATE, 
	"IMAGEN" BLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
  GRANT SELECT ON "ORDSDEMO"."FIRMA" TO "DEVASCH";
