--------------------------------------------------------
--  Constraints for Table TestCollection3
--------------------------------------------------------

  ALTER TABLE "ORDSDEMO"."TestCollection3" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection3" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection3" MODIFY ("LAST_MODIFIED" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection3" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection3" ADD CHECK ("JSON_DOCUMENT" is json format json strict) ENABLE;
  ALTER TABLE "ORDSDEMO"."TestCollection3" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;