CREATE OR REPLACE PACKAGE BODY "MY_GLOBALS"
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
     p_message  => 'Ingresa Usuario y ContraseÃ±a.',
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

PROCEDURE get_emp_json (p_empno IN emp.empno%TYPE DEFAULT NULL) AS
  l_cursor SYS_REFCURSOR;
  vint integer; 
BEGIN
  
  OPEN l_cursor FOR
    SELECT e.empno AS "empno",
           e.ename AS "employee_name",
           e.job AS "job",
           e.mgr AS "mgr",
           TO_CHAR(e.hiredate,'YYYY-MM-DD') AS "hiredate",
           e.sal AS "sal",
           e.comm  AS "comm",
           e.deptno AS "deptno"
    FROM   emp e
    WHERE  e.empno = DECODE(p_empno, NULL, e.empno, p_empno);

  APEX_JSON.open_object;
  APEX_JSON.write('employees', l_cursor);
  APEX_JSON.close_object;
    -- vint := 1/0; 
EXCEPTION
  WHEN OTHERS THEN
    devora_logger_pack$.log_msg ('EN get_emp_json :' , 's') ;
    raise_application_error(-20001,'Custom msg ' || SQLCODE  || '--' || SQLERRM );


END;

PROCEDURE get_emp_xml (p_empno IN emp.empno%TYPE DEFAULT NULL) AS
  l_clob CLOB;
BEGIN

  SELECT XMLELEMENT("employees",
           XMLAGG(
             XMLELEMENT("emp",
               XMLFOREST(e.empno AS "empno",
                         e.ename AS "employee_name",
                         e.job AS "job",
                         e.mgr AS "mgr",
                         TO_CHAR(e.hiredate,'YYYY-MM-DD') AS "hiredate",
                         e.sal AS "sal",
                         e.comm  AS "comm",
                         e.deptno AS "deptno"
               )
             )
           )
         ).getClobVal()
  INTO   l_clob
  FROM   emp e
  WHERE  e.empno = DECODE(p_empno, NULL, e.empno, p_empno);

  OWA_UTIL.mime_header('text/xml');  
  HTP.print(l_clob);

END;

PROCEDURE create_employee (
  p_empno     IN  emp.empno%TYPE,
  p_ename     IN  emp.ename%TYPE,
  p_job       IN  emp.job%TYPE,
  p_mgr       IN  emp.mgr%TYPE,
  p_hiredate  IN  VARCHAR2,
  p_sal       IN  emp.sal%TYPE,
  p_comm      IN  emp.comm%TYPE,
  p_deptno    IN  emp.deptno%TYPE
)
AS
BEGIN
  INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
  VALUES (p_empno, p_ename, p_job, p_mgr, TO_DATE(p_hiredate, 'YYYY-MM-DD'), p_sal, p_comm, p_deptno);
EXCEPTION
  WHEN OTHERS THEN
    HTP.print(SQLERRM);
END;

PROCEDURE amend_employee (
  p_empno     IN  emp.empno%TYPE,
  p_ename     IN  emp.ename%TYPE,
  p_job       IN  emp.job%TYPE,
  p_mgr       IN  emp.mgr%TYPE,
  p_hiredate  IN  VARCHAR2,
  p_sal       IN  emp.sal%TYPE,
  p_comm      IN  emp.comm%TYPE,
  p_deptno    IN  emp.deptno%TYPE
)
AS
BEGIN
  UPDATE emp
  SET ename    = p_ename,
      job      = p_job,
      mgr      = p_mgr,
      hiredate = TO_DATE(p_hiredate, 'YYYY-MM-DD'),
      sal      = p_sal,
      comm     = p_comm,
      deptno   = p_deptno
  WHERE empno  = p_empno;
EXCEPTION
  WHEN OTHERS THEN
    HTP.print(SQLERRM);
END;

PROCEDURE remove_employee (
  p_empno  IN  emp.empno%TYPE
)
AS
BEGIN
  DELETE FROM emp WHERE empno = p_empno;
EXCEPTION
  WHEN OTHERS THEN
    HTP.print(SQLERRM);
END;

PROCEDURE create_departments_jsontable (p_data  IN  BLOB)
AS
vint number;
BEGIN

  INSERT INTO dept (deptno, dname)
    SELECT *
    FROM   json_table(p_data FORMAT JSON, '$.departments[*].department'
           COLUMNS (
             deptno  NUMBER   PATH '$.department_no',
             dname   VARCHAR2 PATH '$.department_name'));

  INSERT INTO emp (deptno, empno, ename, sal, hiredate)
    SELECT j.*, SYSDATE AS hiredate
    FROM   json_table(p_data FORMAT JSON, '$.departments[*].department'
           COLUMNS (
             deptno  NUMBER   PATH '$.department_no',
             NESTED           PATH '$.employees[*]'
               COLUMNS (
                 empno  NUMBER    PATH '$.employee_number',
                 ename  VARCHAR2  PATH '$.employee_name',
                 sal    NUMBER    PATH '$.salary'))) j; 
  COMMIT;
--   vint := 1/0; 

EXCEPTION
  WHEN OTHERS THEN
    devora_logger_pack$.log_msg ('EN create_departments_jsontable !:' || 'member_load ', 's') ;
    raise_application_error(-20001,'Credit is too high' || SQLCODE  || '--' || SQLERRM );


END;

PROCEDURE create_departments_jsonobject (p_data  IN  BLOB)
AS
  TYPE t_dept_tab IS TABLE OF dept%ROWTYPE;
  TYPE t_emp_tab  IS TABLE OF emp%ROWTYPE;

  l_dept_tab     t_dept_tab := t_dept_tab();
  l_emp_tab      t_emp_tab  := t_emp_tab();

  l_top_obj      JSON_OBJECT_T;
  l_dept_arr     JSON_ARRAY_T;
  l_dept_obj     JSON_OBJECT_T;
  l_emp_arr      JSON_ARRAY_T;
  l_emp_obj      JSON_OBJECT_T;
BEGIN

  l_top_obj := JSON_OBJECT_T(p_data);

  l_dept_arr := l_top_obj.get_array('departments');
  
  FOR i IN 0 .. l_dept_arr.get_size - 1 LOOP
    l_dept_tab.extend;
    l_dept_obj := TREAT(l_dept_arr.get(i) AS JSON_OBJECT_T).get_object('department');
    l_dept_tab(l_dept_tab.last).deptno := l_dept_obj.get_number('department_no');
    l_dept_tab(l_dept_tab.last).dname  := l_dept_obj.get_string('department_name');

    l_emp_arr := l_dept_obj.get_array('employees');
    FOR j IN 0 .. l_emp_arr.get_size - 1 LOOP
      l_emp_obj := TREAT(l_emp_arr.get(j) AS JSON_OBJECT_T);

      l_emp_tab.extend;
      l_emp_tab(l_emp_tab.last).deptno   := l_dept_tab(l_dept_tab.last).deptno;
      l_emp_tab(l_emp_tab.last).empno    := l_emp_obj.get_number('employee_number');
      l_emp_tab(l_emp_tab.last).ename    := l_emp_obj.get_string('employee_name');
      l_emp_tab(l_emp_tab.last).sal      := l_emp_obj.get_number('salary');
      l_emp_tab(l_emp_tab.last).hiredate := SYSDATE;
    END LOOP;
  END LOOP;

  -- Populate the tables.
  FORALL i IN l_dept_tab.first .. l_dept_tab.last
    INSERT INTO dept VALUES l_dept_tab(i);

  FORALL i IN l_emp_tab.first .. l_emp_tab.last
    INSERT INTO emp VALUES l_emp_tab(i);

  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    HTP.print(SQLERRM);
END;

END;
/