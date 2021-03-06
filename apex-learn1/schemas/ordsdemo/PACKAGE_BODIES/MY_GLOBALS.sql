--------------------------------------------------------
--  DDL for Package Body MY_GLOBALS
--------------------------------------------------------

create or replace PACKAGE BODY            "MY_GLOBALS"
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
        get_client_credentials (pv_name => 'cdepartments Oauth',
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
    
PROCEDURE    GET_CLIENT_CREDENTIALS (pv_name IN user_ords_clients.name%TYPE,
                                                   pv_id_o OUT user_ords_clients.client_id%TYPE,
                                                   pv_secret_o OUT user_ords_clients.client_secret%TYPE)
IS
 CURSOR c_client IS
   SELECT client_id, client_secret
   FROM user_ords_clients
   WHERE NAME = pv_name;

vr_client c_client%ROWTYPE;
BEGIN
 OPEN c_client;
 FETCH c_client
 INTO vr_client;
 CLOSE c_client;
 pv_id_o     := vr_client.client_id;
 pv_secret_o := vr_client.client_secret;
END;

FUNCTION CUSTOM_USER_AUTH2
 (
 P_USER_NAME IN VARCHAR2,
 P_PASSWORD IN  VARCHAR2
 ) 
 RETURN BOOLEAN AS
     V_USER_NAME  USER_VALIDATE.USER_NAME%TYPE;
     V_PASSWORD    USER_VALIDATE.PASSWORD%TYPE;
     V_STATUS     USER_VALIDATE.STATUS%TYPE;
  BEGIN


IF P_USER_NAME IS NULL OR P_PASSWORD IS NULL THEN
 APEX_ERROR.ADD_ERROR (
     p_message  => 'Ingresa Usuario y Contraseña.',
     p_display_location => apex_error.c_inline_with_field_and_notif,
    p_page_item_name => 'P9999_PASSWORD');
        RETURN FALSE;
        /* c_inline_with_field
            c_inline_with_field_and_notif
            c_inline_in_notification
            c_on_error_page
        */
END IF;

BEGIN
        SELECT USER_NAME
              ,PASSWORD
              ,STATUS
        INTO   V_USER_NAME
              ,V_PASSWORD
              ,V_STATUS
        FROM   USER_VALIDATE
        WHERE  UPPER(USER_NAME) = UPPER(P_USER_NAME);

        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                APEX_ERROR.ADD_ERROR (
                 p_message  => 'Usuario no existente',
                 p_display_location => apex_error.c_inline_with_field,
                 p_page_item_name => 'P9999_PASSWORD');
               RETURN FALSE;
           WHEN OTHERS THEN
             APEX_ERROR.ADD_ERROR (
             p_message  => 'Usuario no existente',
             p_display_location => apex_error.c_inline_with_field,
             p_page_item_name => 'P9999_PASSWORD');    
                RETURN FALSE;
 END;

IF V_PASSWORD != P_PASSWORD THEN
      APEX_ERROR.ADD_ERROR (
         p_message  => 'Password no coincide.',
         p_display_location => apex_error.c_inline_with_field,
         p_page_item_name => 'P9999_PASSWORD');
             RETURN FALSE;
END IF;

IF V_STATUS != 'Y' THEN
      APEX_ERROR.ADD_ERROR (
         p_message  => 'Usuario no activo.',
         p_display_location => apex_error.c_inline_with_field,
         p_page_item_name => 'P9999_PASSWORD');
             RETURN FALSE;
END IF;

RETURN TRUE;

END;


FUNCTION in_list (p_in_list  IN  VARCHAR2)
  RETURN t_in_list_tab PIPELINED
AS
  l_text  VARCHAR2(32767) := p_in_list || ',';
  l_idx   NUMBER;
BEGIN
  LOOP
    l_idx := INSTR(l_text, ',');
    EXIT WHEN NVL(l_idx, 0) = 0;
    PIPE ROW (TRIM(SUBSTR(l_text, 1, l_idx - 1)));
    l_text := SUBSTR(l_text, l_idx + 1);
  END LOOP;

  RETURN;
END;

END;
/

