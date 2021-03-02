--------------------------------------------------------
--  DDL for Table EDU_PROFESORES
--------------------------------------------------------

  CREATE TABLE "CLARTECH"."EDU_PROFESORES" 
   (	"PROF_ID" NUMBER(8,0), 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"TITULACION" VARCHAR2(100 BYTE), 
	"BIO" VARCHAR2(4000 BYTE), 
	"FOTO" BLOB, 
	"DEPTO_ID" NUMBER(8,0), 
	"MIMETYPE" VARCHAR2(255 BYTE), 
	"FILENAME" VARCHAR2(400 BYTE), 
	"IMAGE_LAST_UPDATE" TIMESTAMP (6) WITH LOCAL TIME ZONE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("FOTO") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
GRANT SELECT, INSERT, UPDATE ON "CLARTECH"."EDU_PROFESORES" TO "DEVASCH";