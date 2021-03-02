--------------------------------------------------------
--  DDL for Trigger BI_EDU_ALUMNOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_EDU_ALUMNOS" 
  before insert on "EDU_ALUMNOS"               
  for each row  
begin   
  if :NEW."ALU_ID" is null then 
    select "EDU_ALUMNOS_SEQ".nextval into :NEW."ALU_ID" from sys.dual; 
  end if; 
end; 




/
ALTER TRIGGER "CLARTECH"."BI_EDU_ALUMNOS" ENABLE;
