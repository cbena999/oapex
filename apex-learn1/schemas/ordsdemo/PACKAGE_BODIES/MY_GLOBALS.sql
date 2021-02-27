--------------------------------------------------------
--  DDL for Package Body MY_GLOBALS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "ORDSDEMO"."MY_GLOBALS" 
IS 
   PROCEDURE oauth_get_last_token 
   IS 
      l_fav_language   VARCHAR2 (6) := 'heee'; 
      OAUTDEPT_CLIENT_ID VARCHAR2(35);
      OAUTDEPT_CLIENT_SECRET VARCHAR2(35); 
      OAUTH_DEPT_TOKEN VARCHAR2(35); 
   BEGIN 

      apex_debug.enable(p_level => apex_debug.c_log_level_info);
      apex_debug.message(p_message => 'CBM =>P1 get session state.');
      OAUTH_DEPT_TOKEN := apex_util.get_session_state('OAUTH_DEPT_TOKEN');
      apex_debug.message(p_message => 'CBM =>P2 get_session_state(OAUTH_DEPT_TOKEN) :' || OAUTH_DEPT_TOKEN  );

      IF OAUTH_DEPT_TOKEN IS NULL THEN
        -- cdepartments Oauth , es el Id del cliente Oauth creado para proteger los Rest de departments 
        ORDSDEMO.get_client_credentials (pv_name => 'cdepartments Oauth',
                        pv_id_o => OAUTDEPT_CLIENT_ID, 
                        pv_secret_o => OAUTDEPT_CLIENT_SECRET);

        apex_debug.message(p_message => 'CBM =>P3 APIV2_TOKEN_URL Value: ' || ORDSDEMO.my_globals.APIV2_TOKEN_URL ||
                ' -OAUTDEPT_CLIENT_ID:' || OAUTDEPT_CLIENT_ID  ||
                ' -OAUTDEPT_CLIENT_SECRET:' || OAUTDEPT_CLIENT_SECRET );

        -- Generate a new access token using the client credentials
        apex_web_service.oauth_authenticate(p_token_url => ORDSDEMO.my_globals.APIV2_TOKEN_URL, 
                                            p_client_id => OAUTDEPT_CLIENT_ID , 
                                            p_client_secret => OAUTDEPT_CLIENT_SECRET); 

        OAUTH_DEPT_TOKEN := apex_web_service.oauth_get_last_token; 

        apex_debug.message(p_message => 'CBM =>P4 set_session_state OAUTH_DEPT_TOKEN value: ' || OAUTH_DEPT_TOKEN);        


        apex_util.set_session_state(p_name  => 'OAUTH_DEPT_TOKEN',      p_value => OAUTH_DEPT_TOKEN);

        apex_debug.message(p_message => 'CBM =>P5-in oauth_get_last_token procedure. get_session_state OF OAUTH_DEPT_TOKEN: '|| apex_util.get_session_state('OAUTH_DEPT_TOKEN'));        


    END IF;
   END; 
   PROCEDURE execute_ajob_procedure_type (DEPTID in varchar2  , DNAME in varchar2  , DLOC in varchar2, pOAUTH_DEPT_TOKEN in varchar2)
    is
     begin
        dbms_scheduler.create_job(job_name          => 'Call_PUTPOSTDepts_API_JOB' , 
                        job_type            => 'STORED_PROCEDURE',
                        job_action          => 'caller_crudwsdept.Call_PUTPOSTDepts_API',
                        number_of_arguments => 4,
                        start_date          =>  systimestamp + interval '60' second, -- se ejecutara 1 minuto despues de creado el job
                        end_date            => null, 
                        enabled             => false, -- muy importante no habilitarlo sin haber definido los parametros primero
                        auto_drop           => true -- auto eliminar una vez ejecutado el job
                       );

        dbms_scheduler.set_job_argument_value(
        job_name                => 'Call_PUTPOSTDepts_API_JOB',
        argument_position       => 1,
        argument_value          => DEPTID);
        dbms_scheduler.set_job_argument_value(
        job_name                => 'Call_PUTPOSTDepts_API_JOB',
        argument_position       => 2,
        argument_value          => DNAME);
        dbms_scheduler.set_job_argument_value(
        job_name                => 'Call_PUTPOSTDepts_API_JOB',
        argument_position       => 3,
        argument_value          => DLOC);
        dbms_scheduler.set_job_argument_value(
        job_name                => 'Call_PUTPOSTDepts_API_JOB',
        argument_position       => 4,
        argument_value          => pOAUTH_DEPT_TOKEN);

        dbms_scheduler.enable('Call_PUTPOSTDepts_API_JOB');
    end;

END;


/

  GRANT EXECUTE ON "ORDSDEMO"."MY_GLOBALS" TO "DEVASCH";
