-- Generated by Oracle SQL Developer REST Data Services 20.2.0.175.1842
-- Exported REST Definitions from ORDS Schema Version 20.3.0.r3011819
-- Schema: ORDSDEMO   Date: Thu Feb 18 12:49:46 CST 2021
--
DECLARE
  l_roles     OWA.VC_ARR;
  l_modules   OWA.VC_ARR;
  l_patterns  OWA.VC_ARR;
BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_schema              => 'ORDSDEMO',
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'api2',
      p_auto_rest_auth      => FALSE);    

  ORDS.DEFINE_MODULE(
      p_module_name    => 'empdep.v2',
      p_base_path      => '/empdep/v2/',
      p_items_per_page =>  10,
      p_status         => 'PUBLISHED',
      p_comments       => NULL);      
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'departments',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'departments',
      p_method         => 'PUT',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'BEGIN
        UPDATE dept
        SET dname = :pv_dept_name, loc = :pv_location
        WHERE deptno = :pn_dept_no;
        commit;
        END;'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'PUT',
      p_name               => 'department_name',
      p_bind_variable_name => 'pv_dept_name',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'PUT',
      p_name               => 'department_number',
      p_bind_variable_name => 'pn_dept_no',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'PUT',
      p_name               => 'location_name',
      p_bind_variable_name => 'pv_location',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'PUT',
      p_name               => 'result_message',
      p_bind_variable_name => 'pv_result',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'PUT',
      p_name               => 'X-APEX-STATUS-CODE',
      p_bind_variable_name => 'pn_status',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'departments',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'BEGIN
  INSERT INTO dept (deptno, dname, loc) VALUES (:pn_dept_no, :pv_dept_name, :pv_location); 
  commit;
 END;'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'POST',
      p_name               => 'department_name',
      p_bind_variable_name => 'pv_dept_name',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'POST',
      p_name               => 'department_number',
      p_bind_variable_name => 'pn_dept_no',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'POST',
      p_name               => 'location_name',
      p_bind_variable_name => 'pv_location',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'POST',
      p_name               => 'result_message',
      p_bind_variable_name => 'pv_result',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'POST',
      p_name               => 'X-APEX-STATUS-CODE',
      p_bind_variable_name => 'pn_status',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'departments',
      p_method         => 'DELETE',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'BEGIN
    DELETE FROM dept
    WHERE deptno = :pn_dept_no;
    commit;
    END;'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'DELETE',
      p_name               => 'department_number',
      p_bind_variable_name => 'pn_dept_no',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'DELETE',
      p_name               => 'result_message',
      p_bind_variable_name => 'pv_result',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'departments',
      p_method             => 'DELETE',
      p_name               => 'X-APEX-STATUS-CODE',
      p_bind_variable_name => 'pn_status',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'departments',
      p_method         => 'GET',
      p_source_type    => 'json/query',
      p_items_per_page =>  5,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'SELECT deptno, dname, loc FROM dept ORDER BY deptno'
      );
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'employees',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'empdep.v2',
      p_pattern        => 'employees',
      p_method         => 'GET',
      p_source_type    => 'json/query',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'SELECT d.dname, e.ename, e.job, e.empno, e.hiredate, d.loc FROM emp e, dept d  WHERE e.deptno = d.deptno AND (:pn_deptno IS NULL OR d.deptno = :pn_deptno) ORDER BY d.dname, e.ename'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'empdep.v2',
      p_pattern            => 'employees',
      p_method             => 'GET',
      p_name               => 'department_number',
      p_bind_variable_name => 'pn_deptno',
      p_source_type        => 'URI',
      p_param_type         => 'INT',
      p_access_method      => 'IN',
      p_comments           => NULL);      

  ORDS.CREATE_ROLE(p_role_name  => 'department_rolev2');

  l_roles(1)   := 'department_rolev2';
  l_modules(1) := 'empdep.v2';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'department.privilegev2',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'Departments Access v2',
      p_description    => 'Access to HR Department Web Services v2',
      p_comments       => NULL);      


  COMMIT; 

END;