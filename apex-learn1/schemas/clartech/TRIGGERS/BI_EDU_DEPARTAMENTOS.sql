--------------------------------------------------------
--  DDL for Trigger BI_EDU_DEPARTAMENTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_EDU_DEPARTAMENTOS" 
  before insert on "EDU_DEPARTAMENTOS"               
  for each row  
begin   
  if :NEW."DEPTO_ID" is null then 
    select "EDU_DEPARTAMENTOS_SEQ".nextval into :NEW."DEPTO_ID" from sys.dual; 
  end if; 
end; 




/
ALTER TRIGGER "CLARTECH"."BI_EDU_DEPARTAMENTOS" ENABLE;
