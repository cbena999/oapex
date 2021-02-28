BEGIN
oauth.create_client(p_name => 'cdepartments Oauth',
p_grant_type => 'client_credentials',
p_description => 'Client with access Department Resources',
p_support_email => 'client.two@ordsdemo.com',
p_privilege_names => NULL);
oauth.grant_client_role(p_client_name => 'cdepartments Oauth',
p_role_name => 'department_rolev2');
COMMIT;
END;