--------------------------------------------------------
--  DDL for Trigger BI_MATRICULA_CURSOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_MATRICULA_CURSOS" before insert on "EDU_MATRICULA_CURSOS"                  for each row   begin     
  if :NEW."MAT_CURSOS_ID" is null then   
    select "EDU_MATRICULA_CURSOS_SEQ".nextval into  
:NEW."MAT_CURSOS_ID" from sys.dual;    end if;  end;    




/
ALTER TRIGGER "CLARTECH"."BI_MATRICULA_CURSOS" ENABLE;
