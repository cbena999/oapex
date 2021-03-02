--------------------------------------------------------
--  DDL for Trigger BI_EDU_PROFESORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_EDU_PROFESORES" before insert on "EDU_PROFESORES"                  for each row   begin     
  if :NEW."PROF_ID" is null then   
    select "EDU_PROFESORES_SEQ".nextval into :NEW."PROF_ID" from sys.dual;    end if;  end;    




/
ALTER TRIGGER "CLARTECH"."BI_EDU_PROFESORES" ENABLE;
