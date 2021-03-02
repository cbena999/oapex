--------------------------------------------------------
--  DDL for Trigger BI_EDU_MATRICULAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_EDU_MATRICULAS" before insert on "EDU_MATRICULAS"                  for each row   begin     
  if :NEW."MAT_ID" is null then   
    select "EDU_MATRICULAS_SEQ".nextval into :NEW."MAT_ID" from sys.dual;    end if;  end;    




/
ALTER TRIGGER "CLARTECH"."BI_EDU_MATRICULAS" ENABLE;
