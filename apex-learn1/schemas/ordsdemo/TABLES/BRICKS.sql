--------------------------------------------------------
--  DDL for Table BRICKS
--------------------------------------------------------

  CREATE TABLE "ORDSDEMO"."BRICKS" 
   (	"BRICK_ID" NUMBER(*,0), 
	"COLOUR" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
GRANT SELECT ON "ORDSDEMO"."BRICKS" TO "DEVASCH";
