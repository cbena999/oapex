--------------------------------------------------------
--  DDL for Package MY_GLOBALS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "ORDSDEMO"."MY_GLOBALS" 
IS 
   g_fav_language   VARCHAR2 (6) := 'PL/SQL'; 
   APIV2_URLWS_DEPTOS  VARCHAR(125) := 'http://localhost:8080/ords/api2/empdep/v2/departments';
   APIV2_TOKEN_URL  VARCHAR(125)    :=  'http://localhost:8080/ords/api2/oauth/token';

    PROCEDURE oauth_get_last_token; 
    PROCEDURE execute_ajob_procedure_type (DEPTID in varchar2  , DNAME in varchar2  , DLOC in varchar2, pOAUTH_DEPT_TOKEN in varchar2 );   
END;


/

  GRANT EXECUTE ON "ORDSDEMO"."MY_GLOBALS" TO "DEVASCH";
