--------------------------------------------------------
--  DDL for Table EDU_CURSOS
--------------------------------------------------------

  CREATE TABLE "CLARTECH"."EDU_CURSOS" 
   (	"CURSO_ID" NUMBER(8,0), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"CREDITOS" NUMBER(4,0), 
	"CATEGORIA" VARCHAR2(50 BYTE), 
	"OBSERVACIONES" VARCHAR2(500 BYTE), 
	"PROF_ID" NUMBER(8,0), 
	"CODIGO" VARCHAR2(8 BYTE), 
	"PRECIO" NUMBER(8,2), 
	"TIPO_CURSO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT SELECT,UPDATE, INSERT ON "CLARTECH"."EDU_CURSOS" TO "DEVASCH";