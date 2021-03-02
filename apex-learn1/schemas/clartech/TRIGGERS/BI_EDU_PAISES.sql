--------------------------------------------------------
--  DDL for Trigger BI_EDU_PAISES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CLARTECH"."BI_EDU_PAISES" 
  before insert on "EDU_PAISES"               
  for each row  
begin   
  if :NEW."PAIS_ID" is null then 
    select "EDU_PAISES_SEQ".nextval into :NEW."PAIS_ID" from sys.dual; 
  end if; 
end; 




/
ALTER TRIGGER "CLARTECH"."BI_EDU_PAISES" ENABLE;
