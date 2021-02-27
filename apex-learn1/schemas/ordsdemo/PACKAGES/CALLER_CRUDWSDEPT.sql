--------------------------------------------------------
--  DDL for Package CALLER_CRUDWSDEPT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "ORDSDEMO"."CALLER_CRUDWSDEPT" 
IS 
   g_fav_language   VARCHAR2 (6) := 'PL/SQL'; 

   PROCEDURE Call_GETDepts_API; 
   PROCEDURE Call_PUTPOSTDepts_API(DEPTID in varchar2 default null, DNAME in varchar2 default null, DLOC in varchar2 default null, pOAUTH_DEPT_TOKEN in varchar2 default null);
   PROCEDURE Call_DELETEaDepts_API;
   PROCEDURE ConsumeWS_HTTPS_JSON_TABLE_WITHAS_ADD_MEMBERSCOLL_BULK_COLLECT;

END;

/

  GRANT EXECUTE ON "ORDSDEMO"."CALLER_CRUDWSDEPT" TO "DEVASCH";
