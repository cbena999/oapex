CREATE OR REPLACE PACKAGE BODY "CALLER_CRUDWSDEPT"
IS

   PROCEDURE ConsumeWS_HTTPS_JSON_TABLE_WITHAS_ADD_MEMBERSCOLL_BULK_COLLECT
  IS
    err_num NUMBER;
    err_msg VARCHAR2(255);
    lc_data CLOB;
    elemcount number;
    l_ids APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_titles APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_mags APEX_APPLICATION_GLOBAL.VC_ARR2;
    vint  integer;
   BEGIN
    apex_debug.enable(p_level => apex_debug.c_log_level_info);
    apex_debug.message(p_message => 'CBM => JSON_TABL.p1 antes del select make_rest_request para with as');
    -- vint := 1/0;
    select  apex_web_service.make_rest_request(
    p_url         => 'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=1500',
    p_http_method => 'GET' )  into lc_data    from dual;

    with eqdata as ( select e.id,     e.title,     e.mag
       from json_table( lc_data,     '$.features[*]'
           columns(
            id    varchar2(20)  path '$.id',
            mag   number        path '$.properties.mag',
            title varchar2(200) path '$.properties.title' ) ) e ),
        minmax as (
            select min(e.mag) minmag, max(e.mag) maxmag
            from eqdata e
            )  select e.id , e.title, e.mag BULK COLLECT INTO l_ids , l_titles, l_mags from eqdata e, minmax m
                  where e.mag in ( m.minmag, m.maxmag );

     elemcount :=  l_ids.COUNT();
     apex_debug.message(p_message => 'CBM => JSON_TABL.p4 paso with as l_tableaapg elemcount: ' || elemcount);

     FOR i IN 1 .. elemcount  LOOP
       apex_debug.message(p_message => '** l_tableaapg(i).title of min and max  : ' || l_ids (i));
      end loop;

    if not apex_collection.collection_exists('AMEMBERS_ROWS_EARTHQ') then
     apex_collection.create_collection('AMEMBERS_ROWS_EARTHQ');
    else
     apex_collection.truncate_collection('AMEMBERS_ROWS_EARTHQ');
    END IF;
    apex_collection.add_members(
            p_collection_name => 'AMEMBERS_ROWS_EARTHQ',
                p_c001 => l_ids,
                p_c002 => l_titles,
                p_c003 => l_mags ,
                 p_generate_md5 => 'YES');
   Exception
     When Others Then
        err_num := SQLCODE;
        err_msg := SQLERRM;
        APEX_UTIL.SET_SESSION_STATE('P5_MSG_ERROR', 'error: ' ||TO_CHAR(err_num) || err_msg);

   END;

   PROCEDURE Call_GETDepts_API
   IS
      OAUTH_DEPT_TOKEN VARCHAR2(35);
      lc_data CLOB;
      lj_deps apex_json.t_values;
      vint number;
      err_num NUMBER;
      err_msg VARCHAR2(255);
      p VARCHAR2(10) := 'P' || APEX_APPLICATION.g_flow_step_id;
   BEGIN
    apex_debug.enable(p_level => apex_debug.c_log_level_info);
    apex_debug.message(p_message => 'CBM1 =>P1-in PL Package caller_crudwsdept_oauth_protected.Call_GETDepts_API');

    apex_debug.message(p_message => 'CBM1 =>  vars log:' 	|| NV('APP_ID') || '--'	 || V('APP_ALIAS')
        || '--'	 || V('APP_SESSION'));

    OAUTH_DEPT_TOKEN := apex_util.get_session_state('OAUTH_DEPT_TOKEN');

    apex_debug.message(p_message => 'CBM1 =>P2 get_session_state(OAUTH_DEPT_TOKEN) :' || OAUTH_DEPT_TOKEN  );


    IF OAUTH_DEPT_TOKEN IS  NULL THEN
        ORDSDEMO.my_globals.oauth_get_last_token;
    else
        apex_debug.message(p_message => 'CBM1 =>P3  call GET DEPTS: OAUTH_DEPT_TOKEN : ' || OAUTH_DEPT_TOKEN ) ;
            -- Set Paramaters
        apex_web_service.g_request_headers(1).name := 'Authorization';
        apex_web_service.g_request_headers(1).value := 'Bearer ' || OAUTH_DEPT_TOKEN;
        -- Call the Web Service and store the JSON formatted response into a CLOB.

        apex_debug.message(p_message => 'CBM1 =>P311  call GET DEPTS v(P15_URL_PAGINATION):   ---'
            || V('P15_URL_PAGINATION')
            || '    ----ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS:'
            || ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS);


        /*
        lc_data := apex_web_service.make_rest_request(p_url => NVL( V('P15_URL_PAGINATION') , ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS),
                                                      p_http_method => 'GET');
        */
        lc_data := apex_web_service.make_rest_request(p_url => ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS,
                                                      p_http_method => 'GET');

        -- Parse JSON data and extract data into collection
        apex_json.parse(lj_deps, lc_data);
        apex_collection.create_or_truncate_collection('CR-DEPTS');
        --vint := 1/0;
        FOR x IN 1 .. apex_json.get_count(p_path => 'items', p_values => lj_deps) LOOP
          apex_collection.add_member(p_collection_name => 'CR-DEPTS',
               p_n001            => apex_json.get_number(p_path     => 'items[%d].deptno',    p0 => x,   p_values => lj_deps),
               p_c001            => apex_json.get_varchar2(p_path   => 'items[%d].dname',    p0 => x,   p_values => lj_deps),
               p_c002            => apex_json.get_varchar2(p_path   => 'items[%d].loc',      p0 => x,   p_values => lj_deps)
               );
         apex_debug.message(p_message => 'CBM1 => P5 elements p_c001 : ' ||   apex_json.get_number(p_path     => 'items[%d].deptno',    p0 => x,   p_values => lj_deps)  );
        END LOOP;


        APEX_UTIL.SET_SESSION_STATE('P15_NEXT', apex_json.get_varchar2(p_path => 'next."$ref"',    p_values => lj_deps));
        APEX_UTIL.SET_SESSION_STATE('P15_FIRST',apex_json.get_varchar2(p_path => 'first."$ref"',  p_values => lj_deps));
        APEX_UTIL.SET_SESSION_STATE('P15_PREV', apex_json.get_varchar2(p_path => 'prev."$ref"',    p_values => lj_deps));

        apex_debug.message(p_message => 'CBM1 =>Call_GETDepts_API P4 P15_NEXT V( ' || V('P15_NEXT')  );

        /*
        -- f100-070221-ok-getpl-apex.event.trigger.zip
        -- 06 02 21
          Como dynamic action custom Execute Server-side Code llamado con: apex.event.trigger(document,'Call_GETDepts_API');
          Permite llamar al PLSQL Procedure y ser regresados los parametros con Items to Return, que fueron seteados con sesion en el PLSQL.
          y desde el apex previamente se pueden hacer asiganciones de una variable a otra que tiene el server side en contexto.
          Issue: Si ocurre un error no puede ser tomado por en UI inline.... o bien falta ver si lo pongo en el dialogo de la llamada. ...
        */
         /*

         -- 02 02 2021.
         -- Version PL/sql de Action: Execute Server - side Code.
          Items to Return: P15_PREV,P15_NEXT,P15_FIRST.  Se supone su scope es de sesion es de solo la pagina, y por eso si requiere se sigan especificando los campos en
          "Items to Return" para que funcione la instrucciÃƒÂ³n  APEX_UTIL.SET_SESSION_STATE.
          a diferencia de la variable: OAUTH_DEPT_TOKEN que fue definida en Shared Components / Application Logic / Aplication Items.

         -- version pl/sql enbebido en APEX.
            :P15_NEXT := apex_json.get_varchar2(p_path => 'next."$ref"',    p_values => lj_deps);
            :P15_FIRST := apex_json.get_varchar2(p_path => 'first."$ref"',  p_values => lj_deps);
            :P15_PREV := apex_json.get_varchar2(p_path => 'prev."$ref"',    p_values => lj_deps);
            Items to Return: P15_PREV,P15_NEXT,P15_FIRST.
        */

       /* -- 06 02 21
        LLamado como process sync asociado a un boton server side cuando es button pressed. El APEX desginer definition process tiene para devolver
           exito y error y los adderrors son atrapados y mostrados por la interface UI  de inline apex_error.add_error , y podria tambien ser llamados
           por ajax async definido como procesos pero se debe usar llamada explicita:
           apex.server.process para cachar el exito y el error.
           issues: 1) Los valores se pasan por valor (checarlo!!) no por referencia.        2) se ve el flash del submit.
           */


    END IF;
     Exception
     When Others Then
        err_num := SQLCODE;
        err_msg := SQLERRM;
        ordsdemo.devora_logger_pack$.log_msg ('p_dbg_msg !:' || 'member_load ' || p || '...' ||V('APP_SESSION')  || ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS, 'a') ;
        APEX_UTIL.SET_SESSION_STATE('P15_MSG_ERROR', 'error: ' ||TO_CHAR(err_num) || err_msg);

       /*
        apex_error.add_error (
        p_message => 'Call_GETDepts_API => provocado division por cero cachado y aÃƒÂ±adido mensaje usando apex_error.add_error,
           pero en front se muestra como alert normal. Desde CS se llama como apex.event.trigger ',
        p_display_location => apex_error.c_on_error_page);
        */

   END;


   PROCEDURE Call_PUTPOSTDepts_API (DEPTID in varchar2  , DNAME in varchar2  , DLOC in varchar2, pOAUTH_DEPT_TOKEN in varchar2 )
   IS
      OAUTH_DEPT_TOKEN VARCHAR2(35);
      lc_data CLOB;
      lj_deps apex_json.t_values;
      vint number;
      err_num NUMBER;
      err_msg VARCHAR2(255);
   BEGIN
    dbms_output.put_line ('P1.Llego al begin de Call_PUTPOSTDepts_API.');
    apex_debug.enable(p_level => apex_debug.c_log_level_info);
    apex_debug.message(p_message => 'CBM =>P1 Call_PUTPOSTDepts_API in a package.');
    OAUTH_DEPT_TOKEN := apex_util.get_session_state('OAUTH_DEPT_TOKEN');
    IF OAUTH_DEPT_TOKEN IS  NULL AND pOAUTH_DEPT_TOKEN IS NULL THEN
        dbms_output.put_line ('P2.ira a oauth_get_last_token.');
        apex_debug.message(p_message => 'CBM =>P2.ira a oauth_get_last_token.');
        ORDSDEMO.my_globals.oauth_get_last_token;
        dbms_output.put_line ('P3.Regreso de oauth_get_last_token.');
        apex_debug.message(p_message => 'CBM =>P3.Regreso de oauth_get_last_token.');
    else
        dbms_output.put_line ('P4. OAUTH_DEPT_TOKEN no es null iniciara llamado a WSordsOauth2 PUT.');
        apex_debug.message(p_message => 'CBM =>P4. OAUTH_DEPT_TOKEN no es null iniciara llamado a WSordsOauth2 PUT.');
         -- Set Paramaters
         --vint := 1/0;
        apex_web_service.g_request_headers(1).name := 'Authorization';
        apex_web_service.g_request_headers(1).value := 'Bearer ' ||     NVL(OAUTH_DEPT_TOKEN, pOAUTH_DEPT_TOKEN);
        apex_web_service.g_request_headers(2).name := 'department_number';
        apex_web_service.g_request_headers(2).value := NVL(V('P16_DEPTID'), DEPTID );
        apex_web_service.g_request_headers(3).name := 'department_name';
        apex_web_service.g_request_headers(3).value := NVL(V('P16_DNAME'),DNAME);
        apex_web_service.g_request_headers(4).name := 'location_name';
        apex_web_service.g_request_headers(4).value := NVL(V('P16_DLOC'),DLOC);

    -- Call the Web Service and store the JSON formatted response into a CLOB.
        apex_debug.message(p_message => 'CBM =>P5 Llamara a apex_web_service.make_rest_request:' || ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS
            || 'v(P16_DEPTID):' || V('P16_DEPTID'));
        dbms_output.put_line ('P5. apex_web_service.make_rest_request.');
        lc_data := apex_web_service.make_rest_request(p_url => ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS,
                                                      p_http_method => 'PUT');
        apex_debug.message(p_message => 'CBM =>P6 Paso ok la llamada a apex_web_service.make_rest_request.');
        dbms_output.put_line ('CBM =>P6 Paso ok la llamada a apex_web_service.make_rest_request.');

    END IF;
     Exception
     When Others Then

        err_num := SQLCODE;
        err_msg := SQLERRM;
        IF (OAUTH_DEPT_TOKEN IS NOT NULL) THEN
            APEX_UTIL.SET_SESSION_STATE('P16_MSG_ERROR', 'error: ' ||TO_CHAR(err_num) || err_msg);
            ELSE
                dbms_output.put_line ('P6.Registrar error en otro log table cuando se ejecuto  Call_PUTPOSTDepts_API desde un schedule_job');
        END IF;
       /*
        apex_error.add_error (
        p_message => 'Call_PUTPOSTDepts_API => provocado division por cero cachado y aÃƒÂ±adido mensaje usando apex_error.add_error,
           pero en front se muestra como alert normal. Desde CS se llama como apex.event.trigger ',
        p_display_location => apex_error.c_on_error_page);
       */


   END;

   PROCEDURE Call_DELETEaDepts_API
   IS
      OAUTH_DEPT_TOKEN VARCHAR2(35);
      lc_data CLOB;
      lj_deps apex_json.t_values;
   BEGIN
    apex_debug.enable(p_level => apex_debug.c_log_level_info);
    apex_debug.message(p_message => 'CBM =>P1 Call_DELETEDepts_API  in a PL Package');

    OAUTH_DEPT_TOKEN := apex_util.get_session_state('OAUTH_DEPT_TOKEN');

    apex_debug.message(p_message => 'CBM =>P2 get_session_state(OAUTH_DEPT_TOKEN) :' || OAUTH_DEPT_TOKEN  );

    IF OAUTH_DEPT_TOKEN IS NOT NULL THEN
        apex_debug.message(p_message => 'CBM =>P3  call DELETE DEPTS');
            -- Set Paramaters
        apex_web_service.g_request_headers(1).name := 'Authorization';
        apex_web_service.g_request_headers(1).value := 'Bearer ' || OAUTH_DEPT_TOKEN;
        apex_web_service.g_request_headers(2).name := 'department_number';
        apex_web_service.g_request_headers(2).value := V('P16_DEPTID');

    -- Call the Web Service and store the JSON formatted response into a CLOB.
        apex_debug.message(p_message => 'CBM =>P4  Call_DELETEDepts_API after set params:' || ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS  || ' V(P16_DEPTID:' || V('P16_DEPTID'));

        lc_data := apex_web_service.make_rest_request(p_url => ORDSDEMO.my_globals.APIV2_URLWS_DEPTOS,
                                                      p_http_method => 'DELETE');

  end if;
   END;

END;
/