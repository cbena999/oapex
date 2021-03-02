--------------------------------------------------------
--  DDL for Trigger BI_EDU_CURSOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_EDU_CURSOS" before insert on "EDU_CURSOS"    
  for each row   begin     
  if :NEW."CURSO_ID" is null then   
    select "EDU_CURSOS_SEQ".nextval into :NEW."CURSO_ID" from sys.dual;    end if;  end;    




/
ALTER TRIGGER "CLARTECH"."BI_EDU_CURSOS" ENABLE;
