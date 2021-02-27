--------------------------------------------------------
--  DDL for Procedure GET_CLIENT_CREDENTIALS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ORDSDEMO"."GET_CLIENT_CREDENTIALS" (pv_name IN user_ords_clients.name%TYPE,
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
END get_client_credentials;


/

  GRANT EXECUTE ON "ORDSDEMO"."GET_CLIENT_CREDENTIALS" TO "DEVASCH";
