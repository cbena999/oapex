-- Create new user and data ORDSDEMO
-- ejecutar con sys as sysdba.  Hacerlo con sqlplus con sys as sysdba. 
CREATE USER ORDSDEMO IDENTIFIED BY ORDSDEMO DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
ALTER USER ORDSDEMO  ACCOUNT UNLOCK identified by oracle1;
GRANT CREATE SESSION TO ORDSDEMO;
GRANT CREATE VIEW, CREATE TABLE, CREATE PROCEDURE, CREATE SEQUENCE , CREATE TRIGGER TO ORDSDEMO;
GRANT EXECUTE ON SYS.DBMS_SCHEDULER TO ORDSDEMO;
GRANT CREATE JOB TO  ORDSDEMO;
GRANT CREATE ANY JOB TO ORDSDEMO;
GRANT EXECUTE ON SYS.UTL_HTTP TO ORDSDEMO;
GRANT SODA_APP TO ORDSDEMO;

-- ACL LOCALOCK
begin
 dbms_network_acl_admin.append_host_ace
   ( host => 'localhost'
   , lower_port => 8080
   , upper_port => 8080
   , ace => xs$ace_type( privilege_list => xs$name_list('http')
                       , principal_name => 'ordsdemo'
                       , principal_type => xs_acl.ptype_db));
end;
/


-- ACLS para acceso a https externos.

BEGIN
 DBMS_NETWORK_ACL_ADMIN.CREATE_ACL (
 acl => 'githubapi.xml',
 description => 'API github ACL',
 principal => 'ORDSDEMO',
 is_grant => TRUE,
 privilege => 'connect');
 COMMIT;
END;
/
BEGIN
 DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (
 acl => 'githubapi.xml',
 host => '*.github.com');
 COMMIT;
END;
/

BEGIN
 DBMS_NETWORK_ACL_ADMIN.CREATE_ACL (
 acl => 'earthquakeapi.xml',
 description => 'API earthquakeapi ACL',
 principal => 'ORDSDEMO',
 is_grant => TRUE,
 privilege => 'connect');
 COMMIT;
END;
/
BEGIN
 DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (
 acl => 'earthquakeapi.xml',
 host => 'earthquake.usgs.gov');
 COMMIT;
END;
/

BEGIN
 DBMS_NETWORK_ACL_ADMIN.CREATE_ACL (
 acl => 'telegramapi.xml',
 description => 'API telegramapiACL',
 principal => 'ORDSDEMO',
 is_grant => TRUE,
 privilege => 'connect');
 COMMIT;
END;
/
BEGIN
 DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (
 acl => 'telegramapi.xml',
 host => 'api.telegram.org');
 COMMIT;
END;
/
