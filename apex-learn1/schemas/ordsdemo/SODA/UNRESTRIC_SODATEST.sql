BEGIN
  ORDS.delete_privilege_mapping('oracle.soda.privilege.developer', '/soda/*');
  COMMIT;
END;
/
