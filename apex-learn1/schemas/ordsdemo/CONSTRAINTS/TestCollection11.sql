--------------------------------------------------------
--  Constraints for Table TestCollection11
--------------------------------------------------------

  ALTER TABLE "ORDSDEMO"."TestCollection11" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection11" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection11" MODIFY ("LAST_MODIFIED" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection11" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "ORDSDEMO"."TestCollection11" ADD CHECK ("JSON_DOCUMENT" is json format json strict) ENABLE;
  ALTER TABLE "ORDSDEMO"."TestCollection11" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
