--------------------------------------------------------
--  DDL for Package MY_GLOBALS
--------------------------------------------------------

CREATE OR REPLACE EDITIONABLE PACKAGE "ORDSDEMO"."MY_GLOBALS" 
IS
   g_fav_language   VARCHAR2 (6) := 'PL/SQL';
   APIV2_URLWS_DEPTOS  VARCHAR(125) := 'http://localhost:8080/ords/api2/empdep/v2/departments';
   APIV2_TOKEN_URL  VARCHAR(125)    :=  'http://localhost:8080/ords/api2/oauth/token';
   TYPE t_in_list_tab IS TABLE OF VARCHAR2 (4000);

    PROCEDURE oauth_get_last_token;
    PROCEDURE execute_ajob_procedure_type (DEPTID in varchar2  , DNAME in varchar2  , DLOC in varchar2, pOAUTH_DEPT_TOKEN in varchar2 );
    PROCEDURE GET_CLIENT_CREDENTIALS (pv_name IN user_ords_clients.name%TYPE,
                                                   pv_id_o OUT user_ords_clients.client_id%TYPE,
                                                   pv_secret_o OUT user_ords_clients.client_secret%TYPE);
    FUNCTION CUSTOM_USER_AUTH2  (  P_USER_NAME IN VARCHAR2,  P_PASSWORD IN  VARCHAR2  )  RETURN BOOLEAN; 
    FUNCTION in_list (p_in_list  IN  VARCHAR2)  RETURN t_in_list_tab PIPELINED;

END;
/
GRANT EXECUTE ON "ORDSDEMO"."MY_GLOBALS" TO "DEVASCH";
