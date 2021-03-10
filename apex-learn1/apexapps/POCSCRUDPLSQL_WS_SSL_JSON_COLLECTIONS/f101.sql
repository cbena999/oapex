prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>1402028616110278
,p_default_application_id=>101
,p_default_id_offset=>7415334447500893
,p_default_owner=>'DEVASCH'
);
end;
/
 
prompt APPLICATION 101 - POCSCRUDPLSQL_WS_SSL_JSON_COLLECTIONS
--
-- Application Export:
--   Application:     101
--   Name:            POCSCRUDPLSQL_WS_SSL_JSON_COLLECTIONS
--   Date and Time:   21:24 Monday March 1, 2021
--   Exported By:     DEV01
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     17
--       Items:                   23
--       Processes:                7
--       Regions:                 47
--       Buttons:                 20
--       Dynamic Actions:         28
--     Shared Components:
--       Logic:
--         Items:                  2
--         Processes:              1
--         Web Services:           3
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              17
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                   1
--         Shortcuts:              1
--         Plug-ins:               1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         20.2.0.00.20
--   Instance ID:     203721570104990
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DEVASCH')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'POCSCRUDPLSQL_WS_SSL_JSON_COLLECTIONS')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APP1103')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B7C86EDAB33D7469B23B0752ED3C68EF4F79487A24498CB9A72C7F98B3C7A8B9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.01.18.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(8920726504028875)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'app1'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'app1'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301212348'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
);
end;
/
prompt --application/shared_components/credentials/credentials_for_edu_alumn
begin
wwv_flow_api.create_credential(
 p_id=>wwv_flow_api.id(3501257622672190)
,p_name=>'Credentials for edu_alumn'
,p_static_id=>'Credentials_for_edu_alumn'
,p_authentication_type=>'BASIC'
,p_valid_for_urls=>'http://localhost:8080/ords/wk1/'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/remote_servers/api_github_com_users_raekins
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(3000736711784189)
,p_name=>'api-github-com-users-raekins'
,p_static_id=>'api_github_com_users_raekins'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_github_com_users_raekins'),'https://api.github.com/users/raekins/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_github_com_users_raekins'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_github_com_users_raekins'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/remote_servers/earthquake_usgs_gov_fdsnws_event
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(3183444111388070)
,p_name=>'earthquake-usgs-gov-fdsnws-event'
,p_static_id=>'earthquake_usgs_gov_fdsnws_event'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('earthquake_usgs_gov_fdsnws_event'),'https://earthquake.usgs.gov/fdsnws/event/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('earthquake_usgs_gov_fdsnws_event'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('earthquake_usgs_gov_fdsnws_event'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/remote_servers/localhost_ords_wk1
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(3501537178672192)
,p_name=>'localhost-ords-wk1'
,p_static_id=>'localhost_ords_wk1'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('localhost_ords_wk1'),'http://localhost:8080/ords/wk1/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('localhost_ords_wk1'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('localhost_ords_wk1'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/remote_servers/localhost_ords_api2
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(7320013366800443)
,p_name=>'localhost-ords-api2'
,p_static_id=>'localhost_ords_api2'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('localhost_ords_api2'),'http://localhost:8080/ords/api2/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('localhost_ords_api2'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('localhost_ords_api2'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/data_profiles/apiguhub
begin
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'apiguhub'
,p_format=>'JSON'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3071278262883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ID'
,p_sequence=>1
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3071541403883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'URL'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3071872638883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FORK'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'fork'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3072178834883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'NAME'
,p_sequence=>4
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3072497892883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SIZE_'
,p_sequence=>5
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'size'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3072707573883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FORKS'
,p_sequence=>6
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'forks'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3073075806883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ID2'
,p_sequence=>7
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'owner.id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3073354708883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'URL2'
,p_sequence=>8
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3073686222883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'TYPE'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3073920016883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'LOGIN'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.login'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3074221330883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'NODE_ID'
,p_sequence=>11
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.node_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3074510217883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HTML_URL'
,p_sequence=>12
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3074896276883029)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'GISTS_URL'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.gists_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3075123776883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'REPOS_URL'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.repos_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3075485282883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'AVATAR_URL'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.avatar_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3075745183883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'EVENTS_URL'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3076042185883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SITE_ADMIN'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.site_admin'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3076310743883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'GRAVATAR_ID'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.gravatar_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3076672668883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'STARRED_URL'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.starred_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3076928886883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.followers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3077271271883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FOLLOWING_URL'
,p_sequence=>21
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.following_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3077527376883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.organizations_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3077805921883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.subscriptions_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3078103629883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.received_events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3078434646883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'GIT_URL'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'git_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3078731347883031)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'LICENSE'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'license'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3079078660883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'KEY'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'license.key'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3079325384883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'URL3'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'license.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3079656686883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'NAME2'
,p_sequence=>29
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'license.name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3079911297883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'NODE_ID2'
,p_sequence=>30
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'license.node_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3080224629883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SPDX_ID'
,p_sequence=>31
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'license.spdx_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3080530936883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'NODE_ID3'
,p_sequence=>32
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'node_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3080879935883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'PRIVATE'
,p_sequence=>33
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'private'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3081110084883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SSH_URL'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ssh_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3081422913883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SVN_URL'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'svn_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3081739534883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ARCHIVED'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'archived'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3082004719883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'DISABLED'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'disabled'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3082329514883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HAS_WIKI'
,p_sequence=>38
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_wiki'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3082614037883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HOMEPAGE'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'homepage'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3082934290883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HTML_URL2'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3083274970883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'KEYS_URL'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'keys_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3083591060883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'LANGUAGE'
,p_sequence=>42
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'language'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3083857014883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'TAGS_URL'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'tags_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3084147137883032)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'WATCHERS'
,p_sequence=>44
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'watchers'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3084428171883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'BLOBS_URL'
,p_sequence=>45
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'blobs_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3084762381883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'CLONE_URL'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'clone_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3085088921883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FORKS_URL'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'forks_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3085399184883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FULL_NAME'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'full_name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3085634148883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HAS_PAGES'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_pages'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3085963219883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HOOKS_URL'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'hooks_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3086282436883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'PULLS_URL'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'pulls_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3086588441883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'PUSHED_AT'
,p_sequence=>52
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'pushed_at'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3086807521883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'TEAMS_URL'
,p_sequence=>53
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'teams_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3087101819883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'TREES_URL'
,p_sequence=>54
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'trees_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3087410312883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'CREATED_AT'
,p_sequence=>55
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'created_at'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3087733700883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'EVENTS_URL2'
,p_sequence=>56
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3088055089883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HAS_ISSUES'
,p_sequence=>57
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_issues'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3088324411883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ISSUES_URL'
,p_sequence=>58
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'issues_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3088626027883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'LABELS_URL'
,p_sequence=>59
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'labels_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3088939620883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'MERGES_URL'
,p_sequence=>60
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'merges_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3089282766883034)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'MIRROR_URL'
,p_sequence=>61
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'mirror_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3089555230883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'UPDATED_AT'
,p_sequence=>62
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'updated_at'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3089848883883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ARCHIVE_URL'
,p_sequence=>63
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'archive_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3090137215883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'COMMITS_URL'
,p_sequence=>64
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commits_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3090453317883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'COMPARE_URL'
,p_sequence=>65
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'compare_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3090764036883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'DESCRIPTION'
,p_sequence=>66
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'description'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3091045494883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'FORKS_COUNT'
,p_sequence=>67
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'forks_count'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3091368321883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'OPEN_ISSUES'
,p_sequence=>68
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'open_issues'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3091689531883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'BRANCHES_URL'
,p_sequence=>69
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'branches_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3091925674883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'COMMENTS_URL'
,p_sequence=>70
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'comments_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3092287013883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'CONTENTS_URL'
,p_sequence=>71
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'contents_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3092560419883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'GIT_REFS_URL'
,p_sequence=>72
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'git_refs_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3092847539883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'GIT_TAGS_URL'
,p_sequence=>73
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'git_tags_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3093100293883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HAS_PROJECTS'
,p_sequence=>74
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_projects'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3093408653883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'RELEASES_URL'
,p_sequence=>75
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'releases_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3093734515883035)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'STATUSES_URL'
,p_sequence=>76
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'statuses_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3094014425883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ASSIGNEES_URL'
,p_sequence=>77
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'assignees_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3094381075883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'DOWNLOADS_URL'
,p_sequence=>78
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'downloads_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3094669135883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'HAS_DOWNLOADS'
,p_sequence=>79
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_downloads'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3094939375883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'LANGUAGES_URL'
,p_sequence=>80
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'languages_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3095245749883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'DEFAULT_BRANCH'
,p_sequence=>81
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'default_branch'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3095583359883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'MILESTONES_URL'
,p_sequence=>82
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'milestones_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3095864295883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'STARGAZERS_URL'
,p_sequence=>83
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'stargazers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3096129558883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'WATCHERS_COUNT'
,p_sequence=>84
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'watchers_count'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3096472867883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'DEPLOYMENTS_URL'
,p_sequence=>85
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'deployments_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3096701939883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'GIT_COMMITS_URL'
,p_sequence=>86
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'git_commits_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3097022145883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SUBSCRIBERS_URL'
,p_sequence=>87
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'subscribers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3097389814883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'CONTRIBUTORS_URL'
,p_sequence=>88
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'contributors_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3097668767883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ISSUE_EVENTS_URL'
,p_sequence=>89
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'issue_events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3097940182883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'STARGAZERS_COUNT'
,p_sequence=>90
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'stargazers_count'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3098252573883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'SUBSCRIPTION_URL'
,p_sequence=>91
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'subscription_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3098569130883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'COLLABORATORS_URL'
,p_sequence=>92
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'collaborators_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3098814793883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'ISSUE_COMMENT_URL'
,p_sequence=>93
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'issue_comment_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3099115224883037)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'NOTIFICATIONS_URL'
,p_sequence=>94
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'notifications_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3099430389883039)
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_name=>'OPEN_ISSUES_COUNT'
,p_sequence=>95
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'open_issues_count'
);
end;
/
prompt --application/shared_components/data_profiles/earth1
begin
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'earth1'
,p_format=>'JSON'
,p_row_selector=>'features'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3183881743388075)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'ID'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3184189303388075)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TYPE'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3184440983388075)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TYPE2'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'geometry.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3184782450388075)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TZ'
,p_sequence=>4
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.tz'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3185006204388075)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'CDI'
,p_sequence=>5
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.cdi'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3185333842388075)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'GAP'
,p_sequence=>6
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.gap'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3185625941388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'IDS'
,p_sequence=>7
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.ids'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3185935718388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'MAG'
,p_sequence=>8
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.mag'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3186222493388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'MMI'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.mmi'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3186505768388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'NET'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.net'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3186881918388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'NST'
,p_sequence=>11
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.nst'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3187150752388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'RMS'
,p_sequence=>12
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.rms'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3187425800388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'SIG'
,p_sequence=>13
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.sig'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3187719681388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'URL'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3188064006388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'CODE'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.code'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3188385463388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'DMIN'
,p_sequence=>16
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.dmin'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3188663122388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'FELT'
,p_sequence=>17
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.felt'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3188992788388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TIME'
,p_sequence=>18
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.time'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3189206248388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TYPE3'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3189588101388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'ALERT'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.alert'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3189842972388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'PLACE'
,p_sequence=>21
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.place'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3190194368388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TITLE'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.title'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3190489607388076)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TYPES'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.types'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3190701541388078)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'DETAIL'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.detail'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3191037725388078)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'STATUS'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.status'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3191331127388078)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'MAGTYPE'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.magType'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3191606728388078)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'SOURCES'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'properties.sources'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3191961728388078)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'TSUNAMI'
,p_sequence=>28
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.tsunami'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3192260634388078)
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_name=>'UPDATED'
,p_sequence=>29
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'properties.updated'
);
end;
/
prompt --application/shared_components/data_profiles/edu_alumn
begin
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'edu_alumn'
,p_format=>'JSON'
,p_row_selector=>'items'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3501934549672207)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'ALU_ID'
,p_sequence=>1
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'alu_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3502244928672207)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'DNI'
,p_sequence=>2
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'dni'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3502555697672207)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'NOMBRE'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'nombre'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3502879334672209)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'APELLIDO'
,p_sequence=>4
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'apellido'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3503103120672209)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'TELEFONO'
,p_sequence=>5
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'telefono'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3503483298672209)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'EDAD'
,p_sequence=>6
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'edad'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3503776786672209)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'GENERO'
,p_sequence=>7
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'genero'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3504065053672209)
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_name=>'PAIS_ID'
,p_sequence=>8
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'pais_id'
);
end;
/
prompt --application/shared_components/data_profiles/dsformoehr_jobs
begin
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(3512857093766692)
,p_name=>'dsformoehr_jobs'
,p_format=>'JSON'
,p_row_selector=>'items'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3513066486766692)
,p_data_profile_id=>wwv_flow_api.id(3512857093766692)
,p_name=>'JOB_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3513376954766692)
,p_data_profile_id=>wwv_flow_api.id(3512857093766692)
,p_name=>'JOB_TITLE'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job_title'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3513662861766695)
,p_data_profile_id=>wwv_flow_api.id(3512857093766692)
,p_name=>'MIN_SALARY'
,p_sequence=>3
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'min_salary'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(3513994369766695)
,p_data_profile_id=>wwv_flow_api.id(3512857093766692)
,p_name=>'MAX_SALARY'
,p_sequence=>4
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'max_salary'
);
end;
/
prompt --application/shared_components/data_profiles/sodatest1
begin
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(8502882685317785)
,p_name=>'sodatest1'
,p_format=>'JSON'
,p_row_selector=>'department.employees'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(8503021073317789)
,p_data_profile_id=>wwv_flow_api.id(8502882685317785)
,p_name=>'EMPLOYEE_NAME'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'employee_name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(8503355264317789)
,p_data_profile_id=>wwv_flow_api.id(8502882685317785)
,p_name=>'EMPLOYEE_NUMBER'
,p_sequence=>2
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'employee_number'
);
end;
/
prompt --application/shared_components/web_sources/apiguhub
begin
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(3099756599883040)
,p_name=>'apiguhub'
,p_static_id=>'apiguhub'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(3071022972883026)
,p_remote_server_id=>wwv_flow_api.id(3000736711784189)
,p_url_path_prefix=>'repos'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3099955389883050)
,p_web_src_module_id=>wwv_flow_api.id(3099756599883040)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/earth1
begin
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(3192512843388079)
,p_name=>'earth1'
,p_static_id=>'earth1'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(3183686439388071)
,p_remote_server_id=>wwv_flow_api.id(3183444111388070)
,p_url_path_prefix=>'/1/query'
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(3193118261388095)
,p_web_src_module_id=>wwv_flow_api.id(3192512843388079)
,p_name=>'format'
,p_param_type=>'QUERY_STRING'
,p_is_required=>false
,p_value=>'geojson'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3192728618388090)
,p_web_src_module_id=>wwv_flow_api.id(3192512843388079)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/edu_alumn
begin
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(3504396842672210)
,p_name=>'edu_alumn'
,p_static_id=>'edu_alumn'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_api.id(3501782538672201)
,p_remote_server_id=>wwv_flow_api.id(3501537178672192)
,p_url_path_prefix=>'/edu_alumnos/'
,p_credential_id=>wwv_flow_api.id(3501257622672190)
,p_attribute_01=>'N'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3504543189672226)
,p_web_src_module_id=>wwv_flow_api.id(3504396842672210)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3504902619672228)
,p_web_src_module_id=>wwv_flow_api.id(3504396842672210)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/dsformoehr_jobs
begin
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(3514213516766695)
,p_name=>'dsformoehr_jobs'
,p_static_id=>'dsformoehr_jobs'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_api.id(3512857093766692)
,p_remote_server_id=>wwv_flow_api.id(3501537178672192)
,p_url_path_prefix=>'oehr_jobs/'
,p_attribute_01=>'N'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3514486031766696)
,p_web_src_module_id=>wwv_flow_api.id(3514213516766695)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3514891592766696)
,p_web_src_module_id=>wwv_flow_api.id(3514213516766695)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3515226364766696)
,p_web_src_module_id=>wwv_flow_api.id(3514213516766695)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':job_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3515651619766696)
,p_web_src_module_id=>wwv_flow_api.id(3514213516766695)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':job_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(3516011646766696)
,p_web_src_module_id=>wwv_flow_api.id(3514213516766695)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':job_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/sodatest1
begin
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(8503616093317790)
,p_name=>'sodatest1'
,p_static_id=>'sodatest1'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_api.id(8502882685317785)
,p_remote_server_id=>wwv_flow_api.id(7320013366800443)
,p_url_path_prefix=>'soda/latest/TestCollection31/6A8AC953BD5C47E0A0658A38D8A954CB'
,p_attribute_01=>'N'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(8503835951317790)
,p_web_src_module_id=>wwv_flow_api.id(8503616093317790)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(8921460862028888)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9071142824029453)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9654435306180233)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'DptoCRUDeventtrigger'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7622007466031976)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'SendMsgTelegram'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7625476690516141)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'ConsumeWSGithub'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7628067803695913)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'ConsumeWSearthquakeus'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8201578403321936)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'SODA Operations'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3110393536886468)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'consumeRestDataServicegith'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5404195539549621)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'FactoialSV'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6100581342779732)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'SubQueryes 1'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6401323091769400)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'subqueryes-2'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6700773697620593)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Subqueyes 3'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7300888555815009)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'SMTP-gmail-apex'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(9060923027029258)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9074555495029522)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(9063158095029391)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9075125048029524)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.::P10011_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(9074555495029522)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(9063158095029391)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9075517985029525)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(9074555495029522)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9075869711029525)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(9074555495029522)
,p_required_patch=>wwv_flow_api.id(9063158095029391)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9076220207029525)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&G_NOMBRE.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9076674178029527)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(9076220207029525)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9077098539029528)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(9076220207029525)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222345443831334522202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_api.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_api.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_api.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_api.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_api.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_api.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_api.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_api.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_api.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_api.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_api.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_api.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_api.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_api.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_api.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_api.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_api.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_api.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_api.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(9062057549029386)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234544383133453B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(9062237870029389)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7444023590592210)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_IRANAPEX.NOTIFILIX'
,p_attribute_01=>'false'
,p_attribute_02=>'OK'
,p_attribute_03=>'Cancel'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8918431682028866)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8918667633028869)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8918988729028869)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8919225043028869)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8919501559028871)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8919771556028871)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8920121113028871)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8920403139028872)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(9063758390029394)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/buscar_nombre
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(10128408724790150)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BUSCAR_NOMBRE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'BEGIN',
'      :G_NOMBRE := APEX_UTIL.GET_FIRST_NAME(p_username => :APP_USER);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/shared_components/logic/application_items/g_nombre
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(10128195473673760)
,p_name=>'G_NOMBRE'
,p_protection_level=>'N'
);
end;
/
prompt --application/shared_components/logic/application_items/oauth_dept_token
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(9716174291092358)
,p_name=>'OAUTH_DEPT_TOKEN'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(9066358758029427)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(9066358758029427)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9066772957029430)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9064364846029400)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(8921025743028878)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8921167946028882)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8921811376028894)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8922079302028913)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8922346923028919)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8922667837028921)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8922934490028924)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8923275203028928)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8923570683028930)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8923842014028932)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8924150888028933)
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8924563975028949)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8924915158028952)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8925170094028952)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8925441912028953)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8925798939028953)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8926090652028955)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8926430830028955)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8926661692028958)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8926935764028958)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8927326377028958)
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8927704500028960)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8928031398028961)
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8928266902028963)
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8928600779028963)
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8929942784028968)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8930246803028971)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8930593209028971)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8930859974028982)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8931218303028983)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8931528952028991)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8931760758028991)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8932121691028993)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8932425637028993)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8932661205028993)
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8933102622028994)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8933384424028994)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8933669726028994)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8934009740028996)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8934287407028996)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8934596160028996)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8934883931028996)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8935209008028996)
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8935602316028997)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8935919001028997)
,p_page_template_id=>wwv_flow_api.id(8935602316028997)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8936221994028999)
,p_page_template_id=>wwv_flow_api.id(8935602316028997)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8936509110028999)
,p_page_template_id=>wwv_flow_api.id(8935602316028997)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8937077123028999)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8937421305028999)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8937634697029000)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8938020917029000)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8938251237029000)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8938574442029000)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8938923727029002)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8939222144029002)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8939480020029002)
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8939865296029002)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8940222084029003)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8940509296029003)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8940798780029003)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8941093854029003)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8941413439029005)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8941701130029005)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8941965920029005)
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8942392890029005)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8942673293029007)
,p_page_template_id=>wwv_flow_api.id(8942392890029005)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8943015921029007)
,p_page_template_id=>wwv_flow_api.id(8942392890029005)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8943263324029007)
,p_page_template_id=>wwv_flow_api.id(8942392890029005)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9037777158029143)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9038505435029146)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9038605750029146)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8943848961029008)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8944213570029013)
,p_plug_template_id=>wwv_flow_api.id(8943848961029008)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8947399520029018)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8947641049029018)
,p_plug_template_id=>wwv_flow_api.id(8947399520029018)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8951072044029022)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  #BODY##SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8952302246029024)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8952919518029024)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8953218905029024)
,p_plug_template_id=>wwv_flow_api.id(8952919518029024)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8954221662029025)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8954510264029025)
,p_plug_template_id=>wwv_flow_api.id(8954221662029025)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8954756351029027)
,p_plug_template_id=>wwv_flow_api.id(8954221662029025)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8956231978029028)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8958134788029030)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8959180394029032)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8959454479029032)
,p_plug_template_id=>wwv_flow_api.id(8959180394029032)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8959738083029032)
,p_plug_template_id=>wwv_flow_api.id(8959180394029032)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8965229485029038)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8965514435029039)
,p_plug_template_id=>wwv_flow_api.id(8965229485029038)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8967250123029041)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8967575721029041)
,p_plug_template_id=>wwv_flow_api.id(8967250123029041)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8969357292029044)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8969695256029044)
,p_plug_template_id=>wwv_flow_api.id(8969357292029044)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8970714531029046)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8970967747029046)
,p_plug_template_id=>wwv_flow_api.id(8970714531029046)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8971279046029047)
,p_plug_template_id=>wwv_flow_api.id(8970714531029046)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8977333261029053)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8977554227029055)
,p_plug_template_id=>wwv_flow_api.id(8977333261029053)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8977870736029055)
,p_plug_template_id=>wwv_flow_api.id(8977333261029053)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8979923900029057)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8980188141029057)
,p_plug_template_id=>wwv_flow_api.id(8979923900029057)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8980525904029058)
,p_plug_template_id=>wwv_flow_api.id(8979923900029057)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8980639930029058)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8980976515029058)
,p_plug_template_id=>wwv_flow_api.id(8980639930029058)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(8981333218029058)
,p_plug_template_id=>wwv_flow_api.id(8980639930029058)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8987501559029068)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9011674139029102)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9013247535029107)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9015485565029110)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9016933527029113)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9017920962029114)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9021687760029119)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9024668376029124)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9026466215029125)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9027448661029127)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9027897703029127)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9033298182029135)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9034853387029136)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9035446113029136)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8987685081029069)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8988285645029071)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8991480702029075)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8994876912029080)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8996891580029083)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8998635986029085)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9002313828029089)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9002313828029089)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9004861244029093)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9006128006029094)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9006315548029096)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9011519458029100)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037123865029139)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037178145029141)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037320009029141)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037346672029141)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037471467029141)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037543873029143)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9037704146029143)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(9039854487029147)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(9040090459029155)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(9039943452029149)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(9041471246029210)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(8939865296029002)
,p_default_dialog_template=>wwv_flow_api.id(8935602316028997)
,p_error_template=>wwv_flow_api.id(8927704500028960)
,p_printer_friendly_template=>wwv_flow_api.id(8939865296029002)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(8927704500028960)
,p_default_button_template=>wwv_flow_api.id(9038505435029146)
,p_default_region_template=>wwv_flow_api.id(8980639930029058)
,p_default_chart_template=>wwv_flow_api.id(8980639930029058)
,p_default_form_template=>wwv_flow_api.id(8980639930029058)
,p_default_reportr_template=>wwv_flow_api.id(8980639930029058)
,p_default_tabform_template=>wwv_flow_api.id(8980639930029058)
,p_default_wizard_template=>wwv_flow_api.id(8980639930029058)
,p_default_menur_template=>wwv_flow_api.id(8958134788029030)
,p_default_listr_template=>wwv_flow_api.id(8980639930029058)
,p_default_irr_template=>wwv_flow_api.id(8952302246029024)
,p_default_report_template=>wwv_flow_api.id(9002313828029089)
,p_default_label_template=>wwv_flow_api.id(9037346672029141)
,p_default_menu_template=>wwv_flow_api.id(9039854487029147)
,p_default_calendar_template=>wwv_flow_api.id(9039943452029149)
,p_default_list_template=>wwv_flow_api.id(9035446113029136)
,p_default_nav_list_template=>wwv_flow_api.id(9026466215029125)
,p_default_top_nav_list_temp=>wwv_flow_api.id(9026466215029125)
,p_default_side_nav_list_temp=>wwv_flow_api.id(9024668376029124)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(8954221662029025)
,p_default_dialogr_template=>wwv_flow_api.id(8987501559029068)
,p_default_option_label=>wwv_flow_api.id(9037346672029141)
,p_default_required_label=>wwv_flow_api.id(9037704146029143)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(9027448661029127)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(9040261464029160)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood-Light#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(9040501766029160)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(9040680060029160)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(9040930307029160)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(9041067635029160)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(9041235063029160)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8928875301028966)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8929673911028968)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8944690853029014)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8946055304029016)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8947954772029019)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8948618773029019)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8948942862029019)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8949548201029021)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8951381749029022)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8953468176029025)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8955282760029027)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8956447448029028)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8957296431029030)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8960045166029033)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8961043044029033)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8961893481029035)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8963107683029036)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8963458848029036)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8963924541029036)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8968273720029043)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8968675220029043)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8969946076029044)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8972371424029047)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8974788659029050)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8975590481029052)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8978394926029055)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8978755628029055)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8979215362029057)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8987944672029071)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8988570137029072)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8988938055029072)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8989413824029074)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8989774796029074)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8990190725029074)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8990556708029075)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8990974873029075)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8991813107029077)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8992995452029078)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8993546626029078)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8995215578029082)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9000797930029088)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9002598111029091)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9002962582029091)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9003735514029093)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9005223539029094)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9007153367029096)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9008350486029097)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9009225729029099)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9011973795029105)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9012379442029107)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9014147246029108)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9016006519029111)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9018194535029116)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9020234022029118)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9022957019029121)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9023578287029122)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9025432885029124)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9028757662029128)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9029940956029130)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9030773677029132)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9036626391029138)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9037971050029144)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9039153880029146)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9041661152029227)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9042079660029227)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9042932493029228)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9043260239029228)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9043635626029230)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9044857933029230)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9045441935029232)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9046253444029233)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9046684066029233)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9047266687029233)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9047837744029235)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9048248912029235)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9048846317029236)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9049487478029236)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9050311658029238)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9050726167029238)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9051126580029238)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9051482057029239)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9052517746029241)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9053461313029241)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9054527250029243)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9055511026029244)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9056444489029246)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9057511772029246)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9058448052029247)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9059511249029249)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9059844696029249)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8924490442028949)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(8921811376028894)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927556300028960)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(8924563975028949)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8929071109028966)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(8928875301028966)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8929291388028966)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(8928875301028966)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8929518857028968)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(8928875301028966)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8929902400028968)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(8927704500028960)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(8929673911028968)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8933004994028994)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(8929942784028968)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8935454504028997)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(8933102622028994)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8936771863028999)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(8935602316028997)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8936965557028999)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(8935602316028997)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8939753624029002)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(8937077123028999)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8942313173029005)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(8939865296029002)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8943612686029007)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(8942392890029005)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8943786453029007)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(8942392890029005)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8944524836029014)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8944872191029014)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8945095688029014)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8945262375029014)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8945453531029014)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8945711197029016)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8945866644029016)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8946291803029016)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(8946055304029016)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8946481831029016)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(8946055304029016)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8946649885029018)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(8946055304029016)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8946864380029018)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(8946055304029016)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8947052752029018)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(8946055304029016)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8947281306029018)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8943848961029008)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8948171768029019)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(8947954772029019)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8948340117029019)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8948825687029019)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(8948618773029019)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8949214549029019)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(8948942862029019)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8949348885029019)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(8948618773029019)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8949767983029021)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(8949548201029021)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8949973801029021)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(8948942862029019)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8950147253029021)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(8948618773029019)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8950432976029021)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(8947954772029019)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8950593988029021)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(8948942862029019)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8950832094029021)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(8948942862029019)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8951027712029022)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8947399520029018)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(8949548201029021)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8951560544029022)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8951072044029022)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8951738233029022)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8951072044029022)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8951948295029022)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8951072044029022)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8952151107029024)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8951072044029022)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8952583450029024)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8952302246029024)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8952782513029024)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8952302246029024)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8953636131029025)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8952919518029024)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(8953468176029025)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8953868738029025)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8952919518029024)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(8953468176029025)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8954087753029025)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8952919518029024)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8955110557029027)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8954221662029025)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8955483367029027)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(8954221662029025)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(8955282760029027)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8955723066029027)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(8954221662029025)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8955844004029027)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(8954221662029025)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(8955282760029027)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8956083751029028)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8954221662029025)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8956634643029028)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(8956447448029028)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8956880552029028)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(8956447448029028)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8957126257029028)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(8956447448029028)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8957451796029030)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(8957296431029030)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8957642162029030)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8957834534029030)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(8957296431029030)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8958063287029030)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8956231978029028)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8958482856029030)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8958134788029030)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8958733959029030)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8958134788029030)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8958864154029032)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8958134788029030)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(8956447448029028)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8959126849029032)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8958134788029030)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(8956447448029028)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8960299930029033)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8960446995029033)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8960727386029033)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8960897055029033)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8961262293029035)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(8961043044029033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8961517319029035)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(8961043044029033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8961654316029035)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8962113655029035)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8962332514029035)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8962476511029035)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8962641905029036)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8962921525029036)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8963241403029036)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(8963107683029036)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8963705302029036)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(8963458848029036)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8964122408029038)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(8963924541029036)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8964279551029038)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8964519416029038)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8964716179029038)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8964836652029038)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(8963458848029036)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8965104651029038)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8959180394029032)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8965797438029039)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8965993118029039)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8966187417029039)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8966354196029039)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(8944690853029014)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8966556398029039)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8966820654029039)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8966965698029041)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8967146782029041)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(8965229485029038)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8967927431029041)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8967250123029041)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8968109954029043)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8967250123029041)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8968503477029043)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8967250123029041)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(8968273720029043)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8968902364029043)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8967250123029041)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(8968675220029043)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8969122882029043)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8967250123029041)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(8968675220029043)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8969255032029044)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8967250123029041)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8970157372029044)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8969357292029044)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(8969946076029044)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8970365081029044)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8969357292029044)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(8969946076029044)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8970571839029046)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8969357292029044)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(8969946076029044)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8971571094029047)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8971826549029047)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8971994465029047)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8972152096029047)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8972544483029049)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(8972371424029047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8972755893029049)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(8972371424029047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8972976856029049)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(8972371424029047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8973225124029049)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(8972371424029047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8973347687029049)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8973545121029049)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8973776112029049)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8974009296029050)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8974166004029050)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8974337288029050)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8974543222029050)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8975032189029050)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(8974788659029050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8975149036029052)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(8974788659029050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8975419637029052)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(8963458848029036)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8975783727029052)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(8975590481029052)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8976025890029052)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8976209352029053)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8976340826029053)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(8975590481029052)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8976608391029053)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(8963458848029036)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8976790916029053)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8976972057029053)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8977231190029053)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8970714531029046)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8978186786029055)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8977333261029053)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8978536999029055)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8977333261029053)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(8978394926029055)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8979005952029055)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8977333261029053)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(8978755628029055)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8979346685029057)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8977333261029053)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(8979215362029057)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8979584698029057)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8977333261029053)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(8979215362029057)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8979788382029057)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8977333261029053)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(8978755628029055)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8981578181029058)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8981808049029060)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8981952710029060)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8982200719029060)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(8960045166029033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8982346273029060)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8982590648029060)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8982763310029060)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8982937868029060)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8983231687029061)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8983380275029061)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8983568982029061)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8983802298029061)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8983997964029061)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8984220366029061)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8984386739029063)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8984631403029063)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8984793221029063)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8984999139029063)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8985148807029063)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8985424358029063)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(8961893481029035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8985537671029064)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(8963458848029036)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8985779015029064)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(8975590481029052)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8986002393029064)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8986172919029064)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8986335206029066)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8986545849029066)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(8975590481029052)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8986797099029066)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(8963458848029036)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8987019575029066)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8987225791029068)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8987386773029068)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(8980639930029058)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(8951381749029022)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8988196402029071)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(8987685081029069)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8988827021029072)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(8988570137029072)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8989167882029074)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(8988938055029072)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8989618182029074)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(8989413824029074)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8990002847029074)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(8989774796029074)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8990373288029075)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(8990190725029074)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8990777324029075)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(8990556708029075)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8991149782029075)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(8990974873029075)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8991400530029075)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(8988285645029071)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8991975191029077)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8992159735029077)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8992357309029077)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8992632016029078)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8992775267029078)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8993159027029078)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(8992995452029078)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8993414693029078)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(8992995452029078)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8993790930029080)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(8993546626029078)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8994022063029080)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8994140761029080)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8994339383029080)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8994612104029080)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8994813453029080)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8991480702029075)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8995415174029082)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8995579095029082)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8995796077029082)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8996026491029082)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8996206557029082)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8996421963029083)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8996551957029083)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8996741967029083)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8994876912029080)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8997223857029083)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8997366547029083)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8997612051029085)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8997785842029085)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8997969727029085)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8998233007029085)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8998426025029085)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8998573427029085)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8996891580029083)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(8995215578029082)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8998949729029086)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8999204991029086)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8999427285029086)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8999609814029086)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8999753252029088)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9000009842029088)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9000225342029088)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9000353796029088)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9000538244029088)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9000990217029088)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(9000797930029088)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9001164015029089)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(9000797930029088)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9001382695029089)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(9000797930029088)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9001594920029089)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9001773973029089)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(9000797930029088)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9001999281029089)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(9000797930029088)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9002198319029089)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(8998635986029085)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9002824201029091)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(9002598111029091)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9003203346029091)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(9002962582029091)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9003431055029091)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(9002962582029091)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9003557730029093)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(9002962582029091)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9003946861029093)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(9003735514029093)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9004173532029093)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(9003735514029093)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9004381093029093)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(9002598111029091)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9004603894029093)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9004749546029093)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9002313828029089)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(9002962582029091)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9005349797029094)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9004861244029093)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(9005223539029094)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9005573718029094)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9004861244029093)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(9005223539029094)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9005802433029094)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9004861244029093)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(8992995452029078)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9005934805029094)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9004861244029093)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(8992995452029078)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9006549688029096)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9006746939029096)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9007008698029096)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9007359001029096)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(9007153367029096)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9007617538029097)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(9007153367029096)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9007792025029097)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9007966869029097)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9008170619029097)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9008534940029097)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(9008350486029097)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9008804986029097)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(9008350486029097)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9008984341029097)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(9008350486029097)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9009416763029099)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(9009225729029099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9009568984029099)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(9009225729029099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9009772665029099)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9009994552029099)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9010162038029099)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(8987944672029071)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9010403610029099)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9010604709029100)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(9008350486029097)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9010754556029100)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(8992995452029078)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9010979017029100)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(8992995452029078)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9011139948029100)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(8991813107029077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9011341700029100)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9006315548029096)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9012200743029105)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9011674139029102)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(9011973795029105)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9012626590029107)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9011674139029102)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(9012379442029107)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9012740270029107)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9011674139029102)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(9011973795029105)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9012972501029107)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9011674139029102)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(9012379442029107)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9013222712029107)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9011674139029102)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(9012379442029107)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9013568054029108)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9013793569029108)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9013940128029108)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9014397914029110)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9014577935029110)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9014819340029110)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9014953880029110)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9015143626029110)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9015393836029110)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(9013247535029107)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9015747864029111)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9015485565029110)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9016177269029111)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9015485565029110)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(9016006519029111)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9016403504029113)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9015485565029110)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(9016006519029111)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9016579703029113)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9015485565029110)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(9016006519029111)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9016736680029113)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9015485565029110)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9017153418029114)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9016933527029113)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9017424655029114)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9016933527029113)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9017556631029114)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9016933527029113)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9017780220029114)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9016933527029113)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9018379279029116)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9018604934029116)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9018753428029116)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9018974428029116)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9019194482029116)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9019414960029118)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9019562703029118)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9019785611029118)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9019950581029118)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9020360359029118)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(9020234022029118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9020617026029119)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(9020234022029118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9020801358029119)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(9020234022029118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9020942244029119)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9021154694029119)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(9020234022029118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9021411020029119)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(9020234022029118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9021628612029119)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9017920962029114)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9022009636029121)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9022207731029121)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9022433004029121)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9022599771029121)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9022771748029121)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9023212740029121)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(9022957019029121)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9023338466029122)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(9022957019029121)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9023766525029122)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(9023578287029122)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9024005911029122)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9024214274029122)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9024361790029122)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9024621792029122)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9021687760029119)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9024958808029124)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9025184159029124)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9025613420029125)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(9025432885029124)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9025748997029125)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(9025432885029124)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9025980975029125)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9026137962029125)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9026419713029125)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9026751825029125)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9026466215029125)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9026990794029127)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9026466215029125)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9027155089029127)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9026466215029125)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9027394204029127)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9026466215029125)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9027801398029127)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027448661029127)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9028155491029128)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9028404694029128)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9028581493029128)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9028938836029128)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(9028757662029128)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9029232233029130)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(9028757662029128)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9029412341029130)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9029596770029130)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9029755277029130)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9030183831029130)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(9029940956029130)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9030401827029130)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(9029940956029130)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9030631518029132)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(9029940956029130)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9030961955029132)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(9030773677029132)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9031142882029132)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(9030773677029132)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9031423101029132)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9031617641029132)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9031834380029132)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9031969581029133)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9032181108029133)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(9029940956029130)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9032385102029133)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(9022957019029121)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9032598848029133)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(9022957019029121)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9032779192029133)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9033025197029133)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9033171363029133)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9027897703029127)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9033625984029135)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(9014147246029108)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9033824842029135)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(9030773677029132)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9033939615029135)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(9030773677029132)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9034168991029135)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(9023578287029122)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9034370419029135)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9034633197029136)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9034823873029136)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(9033298182029135)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(9023578287029122)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9035214944029136)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9034853387029136)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9035380064029136)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9034853387029136)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9035757655029138)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9035446113029136)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(9018194535029116)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9035945695029138)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(9035446113029136)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9036151205029138)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9035446113029136)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9036344342029138)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9035446113029136)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9036783016029138)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(9035446113029136)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(9036626391029138)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9036965907029138)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(9035446113029136)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(9036626391029138)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9038169740029144)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(9037777158029143)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(9037971050029144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9038375233029146)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(9037777158029143)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(9037971050029144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9038814484029146)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(9038605750029146)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(9037971050029144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9038953623029146)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(9038605750029146)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(9037971050029144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9039394086029146)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(9038605750029146)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(9039153880029146)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9039596571029146)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(9038605750029146)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(9039153880029146)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9039813317029147)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(9038605750029146)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9041911276029227)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(9041661152029227)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9042314498029228)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(9042079660029227)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9042508628029228)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(9041661152029227)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9042648062029228)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(9041661152029227)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9043128186029228)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(9042932493029228)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9043484299029228)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(9043260239029228)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9043856550029230)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(9043635626029230)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9044054146029230)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(9043260239029228)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9044310447029230)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(9041661152029227)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9044528348029230)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(9042932493029228)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9044648325029230)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(9043635626029230)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9045068115029232)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(9044857933029230)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9045306909029232)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(9044857933029230)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9045703416029232)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(9045441935029232)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9045866508029232)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(9045441935029232)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9046102658029232)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(9045441935029232)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9046499964029233)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(9046253444029233)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9046844843029233)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(9046684066029233)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9047099572029233)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(9046684066029233)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9047482043029233)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(9047266687029233)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9047668748029235)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(9047266687029233)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9048127832029235)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(9047837744029235)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9048506118029235)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(9048248912029235)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9048720456029235)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(9042932493029228)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9049092251029236)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(9048846317029236)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9049329799029236)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(9048846317029236)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9049690257029236)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(9049487478029236)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9049900725029238)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(9049487478029236)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9050094471029238)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(9043260239029228)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9050443190029238)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(9050311658029238)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9050892392029238)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(9050726167029238)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9051278460029239)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(9051126580029238)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9051695372029239)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(9051482057029239)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9051880868029239)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(9051482057029239)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9052042021029239)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(9051482057029239)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9052268851029239)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(9051482057029239)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9052640943029241)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(9052517746029241)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9052851413029241)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(9052517746029241)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9053124962029241)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(9052517746029241)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9053250325029241)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(9052517746029241)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9053658934029241)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(9053461313029241)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9053902503029243)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(9053461313029241)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9054059720029243)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(9053461313029241)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9054257614029243)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(9053461313029241)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9054708301029243)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(9054527250029243)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9054884815029243)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(9054527250029243)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9055084781029244)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(9054527250029243)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9055274990029244)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(9054527250029243)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9055734417029244)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(9055511026029244)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9055901891029244)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(9055511026029244)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9056115889029244)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(9055511026029244)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9056323091029244)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(9055511026029244)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9056681798029246)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(9056444489029246)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9056906698029246)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(9056444489029246)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9057108106029246)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(9056444489029246)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9057325013029246)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(9056444489029246)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9057691955029246)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(9057511772029246)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9057845174029247)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(9057511772029246)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9058047842029247)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(9057511772029246)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9058248187029247)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(9057511772029246)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9058654744029247)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(9058448052029247)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9058917603029247)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(9058448052029247)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9059118978029249)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(9058448052029247)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9059258776029249)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(9058448052029247)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9059697510029249)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(9059511249029249)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9060052631029250)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(9059844696029249)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9060311610029250)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(9059844696029249)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9060451005029250)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(9063158095029391)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(9064220725029399)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_accounts
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(8920726504028875)
,p_name=>'Application Express Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/iranapex_notifilix
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(30115358430942943304)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'IRANAPEX.NOTIFILIX'
,p_display_name=>'Notifilix'
,p_category=>'NOTIFICATION'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','IRANAPEX.NOTIFILIX'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/***************************************************************************************************',
'Plugin Name:        Notifilix',
'Sponser:            ArtaBit Afzar (www.iranapex.ir)',
'Create Date:        2021-01-25',
'Author:             Mahdi Ahmadi',
'Email:              ahmadi@iranapex.ir ',
'Description:        Notiflix is a  library for client-side non-blocking notifications, popup boxes, ',
'                    loading indicators, and more to that makes your web projects much better.',
'Plugin Type:        [Dynamic Action]',
'',
'Version Support:    APEX 5.1 +',
'****************************************************************************************************',
'SUMMARY OF CHANGES',
'Date(yyyy-mm-dd)    Author              Comments',
'------------------- ------------------- ------------------------------------------------------------',
'2021-01-27          Mahdi Ahmadi        Add Confirm ',
'***************************************************************************************************/',
'',
'function render(p_dynamic_action in apex_plugin.t_dynamic_action',
'              , p_plugin         in apex_plugin.t_plugin)',
'return apex_plugin.t_dynamic_action_render_result is',
'    ',
'    l_rtl                  varchar2(5)    := p_plugin.attribute_01;',
'    l_def_ok_btn_label     varchar2(4000) := p_plugin.attribute_02;',
'    l_def_cancel_btn_label varchar2(4000) := p_plugin.attribute_03;',
'',
'    l_message_type       varchar2(4000) := p_dynamic_action.attribute_01;',
'    l_dialog_type        varchar2(4000) := p_dynamic_action.attribute_02;',
'    l_message            varchar2(4000) := p_dynamic_action.attribute_03;',
'    l_messageBody        varchar2(4000) := p_dynamic_action.attribute_04;',
'    l_width              varchar2(4000) := p_dynamic_action.attribute_05;',
'    l_position           varchar2(4000) := p_dynamic_action.attribute_06;',
'    l_backOverlay        varchar2(4000) := p_dynamic_action.attribute_07;',
'    l_AnimationStyle     varchar2(4000) := p_dynamic_action.attribute_08;',
'    l_useIcon            varchar2(6)    := p_dynamic_action.attribute_09;',
'    l_closeButton        varchar2(4000) := p_dynamic_action.attribute_10;',
'    l_borderRadius       varchar2(4000) := p_dynamic_action.attribute_11;',
'    l_distance           varchar2(4000) := p_dynamic_action.attribute_12;',
'    l_ok_label           varchar2(4000) := p_dynamic_action.attribute_13;',
'    l_cancel_label       varchar2(4000) := p_dynamic_action.attribute_14;',
'    l_timeout            varchar2(4000) := p_dynamic_action.attribute_15;',
'    ',
'    l_function_call varchar2(4000);',
'    l_render_result apex_plugin.t_dynamic_action_render_result;',
'    ',
'    function get_properties return varchar2 is',
'        l_props        varchar2(32767);',
'    begin',
'        if (l_message_type = ''NOTIFY'') then ',
'            l_props := ''Notiflix.Notify.Init({width:''''''|| l_width || ''px'''',rtl:''|| l_rtl ||'',borderRadius:"''|| l_borderRadius || ''px",distance:"''|| l_distance ||''px",position:"''|| l_position ||''",closeButton: ''|| l_closeButton ||'' ,backOverlay:''|| l_'
||'backOverlay ||'',timeout:''|| l_timeout ||'',useIcon:''|| l_useIcon ||'',cssAnimationStyle:"'' || l_AnimationStyle ||''",});'';',
'        ',
'        elsif (l_message_type = ''REPORT'') then',
'            l_props := ''Notiflix.Report.Init({width:''''''|| l_width || ''px'''',rtl:''|| l_rtl ||'',borderRadius:"''|| l_borderRadius || ''px",backOverlay:''|| l_backOverlay ||'',cssAnimationStyle:"'' || l_AnimationStyle ||''",});'';',
'        ',
'        elsif (l_message_type = ''CONFIRM'') then',
'            l_props := ''Notiflix.Confirm.Init({width:''''''|| l_width || ''px'''',rtl:''|| l_rtl ||'',borderRadius:"''|| l_borderRadius || ''px",distance:"''|| l_distance ||''px",backOverlay:''|| l_backOverlay ||'',cssAnimationStyle:"'' || l_AnimationStyle ||''",});'
||''';',
'        end if;',
'        ',
'        return l_props;',
'    end get_properties;',
'    ',
'begin',
'    ',
'    if (apex_application.g_debug) then',
'        apex_plugin_util.debug_dynamic_action(p_plugin, p_dynamic_action);',
'    end if;',
'    ',
'    -- Load Static Files (JS/CSS)',
'    apex_javascript.add_library(',
'        p_name      => ''notiflix-2.7.0.min'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null',
'    );',
'    apex_javascript.add_library(',
'        p_name      => ''apex.notiflix'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null',
'    );',
'    apex_css.add_file(',
'        p_name      => ''notiflix-2.7.0.min'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null',
'    );',
'',
'    l_render_result.attribute_03 := l_message;',
'    l_render_result.attribute_04 := l_messageBody;',
'    l_render_result.attribute_13 := l_ok_label;',
'    l_render_result.attribute_14 := l_cancel_label;',
'',
'    if (l_message_type = ''NOTIFY'') then',
'        ',
'        if (l_dialog_type = ''SUCCESS'') then',
'            l_function_call := ''beCtbNotiflix.Notify.Success(this);'';',
'        elsif (l_dialog_type = ''FAILURE'') then',
'            l_function_call := ''beCtbNotiflix.Notify.Failure(this);'';',
'        elsif (l_dialog_type = ''WARNING'') then',
'            l_function_call := ''beCtbNotiflix.Notify.Warning(this);'';',
'        elsif (l_dialog_type = ''INFO'') then',
'            l_function_call := ''beCtbNotiflix.Notify.Info(this);'';',
'        end if;',
'        ',
'        l_render_result.javascript_function := ''function() { ''|| get_properties || '' '' || l_function_call || ''}'';',
'',
'    elsif (l_message_type = ''REPORT'') then',
'',
'        if (l_dialog_type = ''SUCCESS'') then',
'            l_function_call := ''beCtbNotiflix.Report.Success(this);'';',
'        elsif (l_dialog_type = ''FAILURE'') then',
'            l_function_call := ''beCtbNotiflix.Report.Failure(this);'';',
'        elsif (l_dialog_type = ''WARNING'') then',
'            l_function_call := ''beCtbNotiflix.Report.Warning(this);'';',
'        elsif (l_dialog_type = ''INFO'') then',
'            l_function_call := ''beCtbNotiflix.Report.Info(this);'';',
'        end if;',
'        ',
'        l_render_result.javascript_function := ''function() { ''|| get_properties || '' '' || l_function_call || ''}'';',
'    ',
'    elsif (l_message_type = ''CONFIRM'') then',
'',
'        l_function_call := ''beCtbNotiflix.Confirm.Show(this);'';',
'        ',
'        l_render_result.javascript_function := ''function() { '' || get_properties || '' '' || l_function_call || ''}'';',
'        ',
'    end if;',
'',
'',
'    return l_render_result;',
'  ',
'end;',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'WAIT_FOR_RESULT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'www.iranapex.ir'
,p_files_version=>10
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30118825670147498424)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'RTL'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30118829341401499881)
,p_plugin_attribute_id=>wwv_flow_api.id(30118825670147498424)
,p_display_sequence=>10
,p_display_value=>'LTR'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30118833207785500705)
,p_plugin_attribute_id=>wwv_flow_api.id(30118825670147498424)
,p_display_sequence=>20
,p_display_value=>'RTL'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30120919793063157319)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'OK Button Label Default'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'OK'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30122676926572549750)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Cancel Button Label Default'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Cancel'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30116207845774989742)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Message Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NOTIFY'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116220420288990874)
,p_plugin_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_display_sequence=>10
,p_display_value=>'Notify'
,p_return_value=>'NOTIFY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116225151840992153)
,p_plugin_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_display_sequence=>20
,p_display_value=>'Confirm'
,p_return_value=>'CONFIRM'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116227828280993507)
,p_plugin_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_display_sequence=>30
,p_display_value=>'Report'
,p_return_value=>'REPORT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30116623961957000707)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Dialog Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'SUCCESS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'CONFIRM'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116632934307002144)
,p_plugin_attribute_id=>wwv_flow_api.id(30116623961957000707)
,p_display_sequence=>10
,p_display_value=>'Success'
,p_return_value=>'SUCCESS'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116642024497003342)
,p_plugin_attribute_id=>wwv_flow_api.id(30116623961957000707)
,p_display_sequence=>20
,p_display_value=>'Failure'
,p_return_value=>'FAILURE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116659782810004458)
,p_plugin_attribute_id=>wwv_flow_api.id(30116623961957000707)
,p_display_sequence=>30
,p_display_value=>'Warning'
,p_return_value=>'WARNING'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30116424809232395095)
,p_plugin_attribute_id=>wwv_flow_api.id(30116623961957000707)
,p_display_sequence=>40
,p_display_value=>'Info'
,p_return_value=>'INFO'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30116811005928412595)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Message/Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30116994411690419639)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Message Body'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_max_length=>100
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'NOTIFY'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30120027791006519473)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'300'
,p_display_length=>300
,p_max_length=>999
,p_unit=>'px'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30120462119636527360)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Display Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'right-top'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'NOTIFY'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30122088756811528652)
,p_plugin_attribute_id=>wwv_flow_api.id(30120462119636527360)
,p_display_sequence=>10
,p_display_value=>'Right Top'
,p_return_value=>'right-top'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30120893441076140418)
,p_plugin_attribute_id=>wwv_flow_api.id(30120462119636527360)
,p_display_sequence=>20
,p_display_value=>'Right Bottom'
,p_return_value=>'right-bottom'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30122531022083531140)
,p_plugin_attribute_id=>wwv_flow_api.id(30120462119636527360)
,p_display_sequence=>30
,p_display_value=>'Left Top'
,p_return_value=>'left-top'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30122561701873532288)
,p_plugin_attribute_id=>wwv_flow_api.id(30120462119636527360)
,p_display_sequence=>40
,p_display_value=>'Left Bottom'
,p_return_value=>'left-bottom'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30122702961191560428)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Back Overlay'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30123867718669172135)
,p_plugin_attribute_id=>wwv_flow_api.id(30122702961191560428)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30123869460745173172)
,p_plugin_attribute_id=>wwv_flow_api.id(30122702961191560428)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30125516339963189946)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Animation Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'fade'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30125523958779190973)
,p_plugin_attribute_id=>wwv_flow_api.id(30125516339963189946)
,p_display_sequence=>10
,p_display_value=>'fade'
,p_return_value=>'fade'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30125536166258192016)
,p_plugin_attribute_id=>wwv_flow_api.id(30125516339963189946)
,p_display_sequence=>20
,p_display_value=>'zoom'
,p_return_value=>'zoom'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30125546180287193080)
,p_plugin_attribute_id=>wwv_flow_api.id(30125516339963189946)
,p_display_sequence=>30
,p_display_value=>'from-right'
,p_return_value=>'from-right'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30124525889894583198)
,p_plugin_attribute_id=>wwv_flow_api.id(30125516339963189946)
,p_display_sequence=>40
,p_display_value=>'from-left'
,p_return_value=>'from-left'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30125552088622194469)
,p_plugin_attribute_id=>wwv_flow_api.id(30125516339963189946)
,p_display_sequence=>50
,p_display_value=>'from-top'
,p_return_value=>'from-top'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30125560324213195197)
,p_plugin_attribute_id=>wwv_flow_api.id(30125516339963189946)
,p_display_sequence=>60
,p_display_value=>'from-bottom'
,p_return_value=>'from-bottom'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30126448257444204558)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Use Icon'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'NOTIFY'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30126450181386205336)
,p_plugin_attribute_id=>wwv_flow_api.id(30126448257444204558)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30125759072934595553)
,p_plugin_attribute_id=>wwv_flow_api.id(30126448257444204558)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30126678777238602490)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Close Button'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'false'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'NOTIFY'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30126552641644213945)
,p_plugin_attribute_id=>wwv_flow_api.id(30126678777238602490)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30126554876863214738)
,p_plugin_attribute_id=>wwv_flow_api.id(30126678777238602490)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30126726102248612081)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Border Radius'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'10'
,p_display_length=>10
,p_max_length=>99
,p_unit=>'px'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30127042928134619845)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Distance'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'10'
,p_display_length=>10
,p_max_length=>999
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'REPORT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30128189200521242683)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'OK Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'OK'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'NOTIFY'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30127776699465636672)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Cancel Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Cancel'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CONFIRM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30130950701674340618)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Time Out'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'3000'
,p_max_length=>999
,p_unit=>'ms'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(30116207845774989742)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'NOTIFY'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A204E6F7469666C6978202868747470733A2F2F7777772E6E6F7469666C69782E636F6D29202D2056657273696F6E3A20322E372E30202D20417574686F723A204675726B616E204D54202868747470733A2F2F6769746875622E636F6D2F66757263';
wwv_flow_api.g_varchar2_table(2) := '616E29202D20436F707972696768742032303230204E6F7469666C69782C204D4954204C6963656E6365202868747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F4D495429202A2F0A0A5B69645E3D4E6F7469666C69784E6F';
wwv_flow_api.g_varchar2_table(3) := '74696679577261705D7B706F696E7465722D6576656E74733A6E6F6E653B706F736974696F6E3A66697865643B7A2D696E6465783A343030313B6F7061636974793A313B72696768743A313070783B746F703A313070783B77696474683A32383070783B';
wwv_flow_api.g_varchar2_table(4) := '6D61782D77696474683A3936253B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F783B6261636B67726F756E643A7472616E73706172656E747D5B69645E3D4E6F7469666C';
wwv_flow_api.g_varchar2_table(5) := '69784E6F74696679577261705D2E6E782D666C65782D63656E7465722D63656E7465727B6D61782D6865696768743A63616C63283130307668202D2032307078293B6F766572666C6F772D783A68696464656E3B6F766572666C6F772D793A6175746F3B';
wwv_flow_api.g_varchar2_table(6) := '646973706C61793A2D7765626B69742D626F783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A2D6D732D666C6578626F783B646973706C61793A666C65783B2D7765626B69742D666C65782D777261703A777261703B2D6D73';
wwv_flow_api.g_varchar2_table(7) := '2D666C65782D777261703A777261703B666C65782D777261703A777261703B2D7765626B69742D626F782D6F7269656E743A766572746963616C3B2D7765626B69742D626F782D646972656374696F6E3A6E6F726D616C3B2D7765626B69742D666C6578';
wwv_flow_api.g_varchar2_table(8) := '2D646972656374696F6E3A636F6C756D6E3B2D6D732D666C65782D646972656374696F6E3A636F6C756D6E3B666C65782D646972656374696F6E3A636F6C756D6E3B2D7765626B69742D626F782D7061636B3A63656E7465723B2D7765626B69742D6A75';
wwv_flow_api.g_varchar2_table(9) := '73746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465723B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C';
wwv_flow_api.g_varchar2_table(10) := '69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E2D6974656D733A63656E7465723B6D617267696E3A6175746F7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3A3A2D776562';
wwv_flow_api.g_varchar2_table(11) := '6B69742D7363726F6C6C6261727B77696474683A303B6865696768743A307D5B69645E3D4E6F7469666C69784E6F74696679577261705D3A3A2D7765626B69742D7363726F6C6C6261722D7468756D627B6261636B67726F756E643A7472616E73706172';
wwv_flow_api.g_varchar2_table(12) := '656E747D5B69645E3D4E6F7469666C69784E6F74696679577261705D3A3A2D7765626B69742D7363726F6C6C6261722D747261636B7B6261636B67726F756E643A7472616E73706172656E747D5B69645E3D4E6F7469666C69784E6F7469667957726170';
wwv_flow_api.g_varchar2_table(13) := '5D202A7B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F787D5B69645E3D4E6F7469666C69784E6F746966794F7665726C61795D7B2D7765626B69742D7472616E73697469';
wwv_flow_api.g_varchar2_table(14) := '6F6E3A6261636B67726F756E64202E337320656173652D696E2D6F75743B2D6F2D7472616E736974696F6E3A6261636B67726F756E64202E337320656173652D696E2D6F75743B7472616E736974696F6E3A6261636B67726F756E64202E337320656173';
wwv_flow_api.g_varchar2_table(15) := '652D696E2D6F75747D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469767B706F696E7465722D6576656E74733A616C6C3B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E';
wwv_flow_api.g_varchar2_table(16) := '6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E653B666F6E742D66616D696C793A22517569636B73616E64222C2D6170706C652D73797374656D2C426C696E6B4D616353797374656D466F6E742C22';
wwv_flow_api.g_varchar2_table(17) := '5365676F65205549222C526F626F746F2C2248656C766574696361204E657565222C417269616C2C73616E732D73657269663B77696474683A313030253B646973706C61793A2D7765626B69742D696E6C696E652D626F783B646973706C61793A2D7765';
wwv_flow_api.g_varchar2_table(18) := '626B69742D696E6C696E652D666C65783B646973706C61793A2D6D732D696E6C696E652D666C6578626F783B646973706C61793A696E6C696E652D666C65783B2D7765626B69742D666C65782D777261703A777261703B2D6D732D666C65782D77726170';
wwv_flow_api.g_varchar2_table(19) := '3A777261703B666C65782D777261703A777261703B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E';
wwv_flow_api.g_varchar2_table(20) := '2D6974656D733A63656E7465723B706F736974696F6E3A72656C61746976653B6D617267696E3A30203020313070783B626F726465722D7261646975733A3570783B6261636B67726F756E643A233165316531653B636F6C6F723A236666663B70616464';
wwv_flow_api.g_varchar2_table(21) := '696E673A3130707820313270783B666F6E742D73697A653A313470783B6C696E652D6865696768743A312E347D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469763A6C6173742D6368696C647B6D617267696E3A307D5B69645E3D4E';
wwv_flow_api.g_varchar2_table(22) := '6F7469666C69784E6F74696679577261705D3E6469762E776974682D63616C6C6261636B7B637572736F723A706F696E7465727D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D69636F6E7B70616464696E673A38';
wwv_flow_api.g_varchar2_table(23) := '70783B6D696E2D6865696768743A353670787D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E6E782D7061757365647B637572736F723A6175746F7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E63';
wwv_flow_api.g_varchar2_table(24) := '6C69636B2D746F2D636C6F73657B637572736F723A706F696E7465727D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D636C6F73652D627574746F6E7B70616464696E673A31307078203330707820313070782031';
wwv_flow_api.g_varchar2_table(25) := '3270787D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D69636F6E2E776974682D636C6F73652D627574746F6E7B70616464696E673A367078203330707820367078203670787D5B69645E3D4E6F7469666C69784E';
wwv_flow_api.g_varchar2_table(26) := '6F74696679577261705D3E6469763E7370616E2E7468652D6D6573736167657B637572736F723A696E68657269743B666F6E742D7765696768743A6E6F726D616C3B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B776F7264';
wwv_flow_api.g_varchar2_table(27) := '2D627265616B3A627265616B2D616C6C3B776F72642D627265616B3A627265616B2D776F72647D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469763E7370616E2E6E6F746966792D636C6F73652D627574746F6E7B637572736F723A';
wwv_flow_api.g_varchar2_table(28) := '706F696E7465723B2D7765626B69742D7472616E736974696F6E3A616C6C202E327320656173652D696E2D6F75743B2D6F2D7472616E736974696F6E3A616C6C202E327320656173652D696E2D6F75743B7472616E736974696F6E3A616C6C202E327320';
wwv_flow_api.g_varchar2_table(29) := '656173652D696E2D6F75743B706F736974696F6E3A6162736F6C7574653B72696768743A3870783B746F703A303B626F74746F6D3A303B6D617267696E3A6175746F3B636F6C6F723A696E68657269743B77696474683A313670783B6865696768743A31';
wwv_flow_api.g_varchar2_table(30) := '3670787D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469763E7370616E2E6E6F746966792D636C6F73652D627574746F6E3A686F7665727B2D7765626B69742D7472616E73666F726D3A726F74617465283930646567293B7472616E';
wwv_flow_api.g_varchar2_table(31) := '73666F726D3A726F74617465283930646567297D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469763E7370616E2E6E6F746966792D636C6F73652D627574746F6E3E7376677B706F736974696F6E3A6162736F6C7574653B77696474';
wwv_flow_api.g_varchar2_table(32) := '683A313670783B6865696768743A313670783B72696768743A303B746F703A307D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469763E2E6E6D697B706F736974696F6E3A6162736F6C7574653B77696474683A343070783B68656967';
wwv_flow_api.g_varchar2_table(33) := '68743A343070783B666F6E742D73697A653A333070783B6C696E652D6865696768743A343070783B746578742D616C69676E3A63656E7465723B6C6566743A3870783B746F703A303B626F74746F6D3A303B6D617267696E3A6175746F3B626F72646572';
wwv_flow_api.g_varchar2_table(34) := '2D7261646975733A696E68657269747D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469763E2E7766612E736861646F777B636F6C6F723A696E68657269743B6261636B67726F756E643A7267626128302C302C302C2E3135293B626F';
wwv_flow_api.g_varchar2_table(35) := '782D736861646F773A696E736574203020302033347078207267626128302C302C302C2E32293B746578742D736861646F773A3020302031307078207267626128302C302C302C2E33297D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E';
wwv_flow_api.g_varchar2_table(36) := '6469763E7370616E2E776974682D69636F6E7B706F736974696F6E3A72656C61746976653B666C6F61743A6C6566743B77696474683A63616C632831303025202D2034307078293B6D617267696E3A302030203020343070783B70616464696E673A3020';
wwv_flow_api.g_varchar2_table(37) := '30203020313070783B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F787D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E72746C2D6F6E3E2E6E6D';
wwv_flow_api.g_varchar2_table(38) := '697B6C6566743A6175746F3B72696768743A3870787D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E72746C2D6F6E3E7370616E2E776974682D69636F6E7B70616464696E673A302031307078203020303B6D617267696E3A30';
wwv_flow_api.g_varchar2_table(39) := '2034307078203020307D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E72746C2D6F6E3E7370616E2E6E6F746966792D636C6F73652D627574746F6E7B72696768743A6175746F3B6C6566743A3870787D5B69645E3D4E6F7469';
wwv_flow_api.g_varchar2_table(40) := '666C69784E6F74696679577261705D3E6469762E776974682D69636F6E2E776974682D636C6F73652D627574746F6E2E72746C2D6F6E7B70616464696E673A367078203670782036707820333070787D5B69645E3D4E6F7469666C69784E6F7469667957';
wwv_flow_api.g_varchar2_table(41) := '7261705D3E6469762E776974682D636C6F73652D627574746F6E2E72746C2D6F6E7B70616464696E673A313070782031327078203130707820333070787D5B69645E3D4E6F7469666C69784E6F746966794F7665726C61795D2E776974682D616E696D61';
wwv_flow_api.g_varchar2_table(42) := '74696F6E2C5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D666164657B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66616465202E3373';
wwv_flow_api.g_varchar2_table(43) := '20656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320';
wwv_flow_api.g_varchar2_table(44) := '6E6F746966792D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B65796672616D6573206E6F746966792D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030';
wwv_flow_api.g_varchar2_table(45) := '257B6F7061636974793A317D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D7A6F6F6D7B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(46) := '7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(47) := '796672616D6573206E6F746966792D616E696D6174696F6E2D7A6F6F6D7B30257B2D7765626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D3530257B2D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(48) := '3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D7D406B65796672616D6573206E6F';
wwv_flow_api.g_varchar2_table(49) := '746966792D616E696D6174696F6E2D7A6F6F6D7B30257B2D7765626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D3530257B2D7765626B69742D7472616E73666F726D3A7363616C6528312E30';
wwv_flow_api.g_varchar2_table(50) := '35293B7472616E73666F726D3A7363616C6528312E3035297D313030257B2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D7D5B69645E3D4E6F7469666C69784E6F7469667957726170';
wwv_flow_api.g_varchar2_table(51) := '5D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D72696768747B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66726F6D2D7269676874202E337320656173652D696E2D6F757420307320';
wwv_flow_api.g_varchar2_table(52) := '6E6F726D616C3B616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66726F6D2D7269676874202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D616E69';
wwv_flow_api.g_varchar2_table(53) := '6D6174696F6E2D66726F6D2D72696768747B30257B72696768743A2D33303070783B6F7061636974793A307D3530257B72696768743A3870783B6F7061636974793A317D313030257B72696768743A303B6F7061636974793A317D7D406B65796672616D';
wwv_flow_api.g_varchar2_table(54) := '6573206E6F746966792D616E696D6174696F6E2D66726F6D2D72696768747B30257B72696768743A2D33303070783B6F7061636974793A307D3530257B72696768743A3870783B6F7061636974793A317D313030257B72696768743A303B6F7061636974';
wwv_flow_api.g_varchar2_table(55) := '793A317D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D6C6566747B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66726F';
wwv_flow_api.g_varchar2_table(56) := '6D2D6C656674202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66726F6D2D6C656674202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765';
wwv_flow_api.g_varchar2_table(57) := '626B69742D6B65796672616D6573206E6F746966792D616E696D6174696F6E2D66726F6D2D6C6566747B30257B6C6566743A2D33303070783B6F7061636974793A307D3530257B6C6566743A3870783B6F7061636974793A317D313030257B6C6566743A';
wwv_flow_api.g_varchar2_table(58) := '303B6F7061636974793A317D7D406B65796672616D6573206E6F746966792D616E696D6174696F6E2D66726F6D2D6C6566747B30257B6C6566743A2D33303070783B6F7061636974793A307D3530257B6C6566743A3870783B6F7061636974793A317D31';
wwv_flow_api.g_varchar2_table(59) := '3030257B6C6566743A303B6F7061636974793A317D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D746F707B2D7765626B69742D616E696D6174696F6E3A6E6F7469';
wwv_flow_api.g_varchar2_table(60) := '66792D616E696D6174696F6E2D66726F6D2D746F70202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66726F6D2D746F70202E337320656173652D696E2D6F757420';
wwv_flow_api.g_varchar2_table(61) := '3073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D616E696D6174696F6E2D66726F6D2D746F707B30257B746F703A2D353070783B6F7061636974793A307D3530257B746F703A3870783B6F7061636974793A317D';
wwv_flow_api.g_varchar2_table(62) := '313030257B746F703A303B6F7061636974793A317D7D406B65796672616D6573206E6F746966792D616E696D6174696F6E2D66726F6D2D746F707B30257B746F703A2D353070783B6F7061636974793A307D3530257B746F703A3870783B6F7061636974';
wwv_flow_api.g_varchar2_table(63) := '793A317D313030257B746F703A303B6F7061636974793A317D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D626F74746F6D7B2D7765626B69742D616E696D617469';
wwv_flow_api.g_varchar2_table(64) := '6F6E3A6E6F746966792D616E696D6174696F6E2D66726F6D2D626F74746F6D202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D616E696D6174696F6E2D66726F6D2D626F74746F6D202E3373';
wwv_flow_api.g_varchar2_table(65) := '20656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D616E696D6174696F6E2D66726F6D2D626F74746F6D7B30257B626F74746F6D3A2D353070783B6F7061636974793A307D353025';
wwv_flow_api.g_varchar2_table(66) := '7B626F74746F6D3A3870783B6F7061636974793A317D313030257B626F74746F6D3A303B6F7061636974793A317D7D406B65796672616D6573206E6F746966792D616E696D6174696F6E2D66726F6D2D626F74746F6D7B30257B626F74746F6D3A2D3530';
wwv_flow_api.g_varchar2_table(67) := '70783B6F7061636974793A307D3530257B626F74746F6D3A3870783B6F7061636974793A317D313030257B626F74746F6D3A303B6F7061636974793A317D7D5B69645E3D4E6F7469666C69784E6F746966794F7665726C61795D2E776974682D616E696D';
wwv_flow_api.g_varchar2_table(68) := '6174696F6E2E72656D6F76652C5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D666164652E72656D6F76657B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A';
wwv_flow_api.g_varchar2_table(69) := '6E6F746966792D72656D6F76652D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D72656D6F76652D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C7D';
wwv_flow_api.g_varchar2_table(70) := '402D7765626B69742D6B65796672616D6573206E6F746966792D72656D6F76652D666164657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D406B65796672616D6573206E6F746966792D72656D6F76652D666164657B30257B';
wwv_flow_api.g_varchar2_table(71) := '6F7061636974793A317D313030257B6F7061636974793A307D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D7A6F6F6D2E72656D6F76657B2D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(72) := '726D3A7363616C652830293B7472616E73666F726D3A7363616C652830293B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D72656D6F76652D7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174';
wwv_flow_api.g_varchar2_table(73) := '696F6E3A6E6F746966792D72656D6F76652D7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D72656D6F76652D7A6F6F6D7B30257B2D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(74) := '616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D3530257B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B2D7765';
wwv_flow_api.g_varchar2_table(75) := '626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D7D406B65796672616D6573206E6F746966792D72656D6F76652D7A6F6F6D7B30257B2D7765626B69742D7472616E73666F726D3A7363616C65';
wwv_flow_api.g_varchar2_table(76) := '2831293B7472616E73666F726D3A7363616C652831297D3530257B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B2D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(77) := '6D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D746F702E72656D6F76657B6F7061636974';
wwv_flow_api.g_varchar2_table(78) := '793A303B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D746F70202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D746F7020';
wwv_flow_api.g_varchar2_table(79) := '2E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D72656D6F76652D746F2D746F707B30257B746F703A303B6F7061636974793A317D3530257B746F703A3870783B6F7061';
wwv_flow_api.g_varchar2_table(80) := '636974793A317D313030257B746F703A2D353070783B6F7061636974793A307D7D406B65796672616D6573206E6F746966792D72656D6F76652D746F2D746F707B30257B746F703A303B6F7061636974793A317D3530257B746F703A3870783B6F706163';
wwv_flow_api.g_varchar2_table(81) := '6974793A317D313030257B746F703A2D353070783B6F7061636974793A307D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D72696768742E72656D6F76657B6F7061';
wwv_flow_api.g_varchar2_table(82) := '636974793A303B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D7269676874202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F';
wwv_flow_api.g_varchar2_table(83) := '2D7269676874202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D72656D6F76652D746F2D72696768747B30257B72696768743A303B6F7061636974793A317D3530257B';
wwv_flow_api.g_varchar2_table(84) := '72696768743A3870783B6F7061636974793A317D313030257B72696768743A2D33303070783B6F7061636974793A307D7D406B65796672616D6573206E6F746966792D72656D6F76652D746F2D72696768747B30257B72696768743A303B6F7061636974';
wwv_flow_api.g_varchar2_table(85) := '793A317D3530257B72696768743A3870783B6F7061636974793A317D313030257B72696768743A2D33303070783B6F7061636974793A307D7D5B69645E3D4E6F7469666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E';
wwv_flow_api.g_varchar2_table(86) := '2E6E782D66726F6D2D626F74746F6D2E72656D6F76657B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D626F74746F6D202E337320656173652D696E2D6F7574203073206E6F726D616C';
wwv_flow_api.g_varchar2_table(87) := '3B616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D626F74746F6D202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206E6F746966792D72656D6F76652D746F2D626F74';
wwv_flow_api.g_varchar2_table(88) := '746F6D7B30257B626F74746F6D3A303B6F7061636974793A317D3530257B626F74746F6D3A3870783B6F7061636974793A317D313030257B626F74746F6D3A2D353070783B6F7061636974793A307D7D406B65796672616D6573206E6F746966792D7265';
wwv_flow_api.g_varchar2_table(89) := '6D6F76652D746F2D626F74746F6D7B30257B626F74746F6D3A303B6F7061636974793A317D3530257B626F74746F6D3A3870783B6F7061636974793A317D313030257B626F74746F6D3A2D353070783B6F7061636974793A307D7D5B69645E3D4E6F7469';
wwv_flow_api.g_varchar2_table(90) := '666C69784E6F74696679577261705D3E6469762E776974682D616E696D6174696F6E2E6E782D66726F6D2D6C6566742E72656D6F76657B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D';
wwv_flow_api.g_varchar2_table(91) := '6C656674202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6E6F746966792D72656D6F76652D746F2D6C656674202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(92) := '796672616D6573206E6F746966792D72656D6F76652D746F2D6C6566747B30257B6C6566743A303B6F7061636974793A317D3530257B6C6566743A3870783B6F7061636974793A317D313030257B6C6566743A2D33303070783B6F7061636974793A307D';
wwv_flow_api.g_varchar2_table(93) := '7D406B65796672616D6573206E6F746966792D72656D6F76652D746F2D6C6566747B30257B6C6566743A303B6F7061636974793A317D3530257B6C6566743A3870783B6F7061636974793A317D313030257B6C6566743A2D33303070783B6F7061636974';
wwv_flow_api.g_varchar2_table(94) := '793A307D7D5B69645E3D4E6F7469666C69785265706F7274577261705D7B706F736974696F6E3A66697865643B7A2D696E6465783A343030323B77696474683A313030253B6865696768743A313030253B2D7765626B69742D626F782D73697A696E673A';
wwv_flow_api.g_varchar2_table(95) := '626F726465722D626F783B626F782D73697A696E673A626F726465722D626F783B666F6E742D66616D696C793A22517569636B73616E64222C2D6170706C652D73797374656D2C426C696E6B4D616353797374656D466F6E742C225365676F6520554922';
wwv_flow_api.g_varchar2_table(96) := '2C526F626F746F2C2248656C766574696361204E657565222C417269616C2C73616E732D73657269663B6C6566743A303B746F703A303B70616464696E673A313070783B636F6C6F723A233165316531653B626F726465722D7261646975733A32357078';
wwv_flow_api.g_varchar2_table(97) := '3B6261636B67726F756E643A7472616E73706172656E743B646973706C61793A2D7765626B69742D626F783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A2D6D732D666C6578626F783B646973706C61793A666C65783B2D77';
wwv_flow_api.g_varchar2_table(98) := '65626B69742D666C65782D777261703A777261703B2D6D732D666C65782D777261703A777261703B666C65782D777261703A777261703B2D7765626B69742D626F782D6F7269656E743A766572746963616C3B2D7765626B69742D626F782D6469726563';
wwv_flow_api.g_varchar2_table(99) := '74696F6E3A6E6F726D616C3B2D7765626B69742D666C65782D646972656374696F6E3A636F6C756D6E3B2D6D732D666C65782D646972656374696F6E3A636F6C756D6E3B666C65782D646972656374696F6E3A636F6C756D6E3B2D7765626B69742D626F';
wwv_flow_api.g_varchar2_table(100) := '782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E2D6974656D733A63656E7465723B2D7765626B69742D626F782D7061636B3A';
wwv_flow_api.g_varchar2_table(101) := '63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465727D5B69645E3D4E6F7469666C69785265706F72';
wwv_flow_api.g_varchar2_table(102) := '74577261705D202A7B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F787D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D6F';
wwv_flow_api.g_varchar2_table(103) := '7665726C6179225D7B77696474683A313030253B6865696768743A313030253B6C6566743A303B746F703A303B6261636B67726F756E643A72676261283235352C3235352C3235352C2E35293B706F736974696F6E3A66697865643B7A2D696E6465783A';
wwv_flow_api.g_varchar2_table(104) := '307D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D7B77696474683A33323070783B6D61782D77696474683A313030253B6D61782D6865696768743A393676683B6F766572666C6F';
wwv_flow_api.g_varchar2_table(105) := '772D783A68696464656E3B6F766572666C6F772D793A6175746F3B626F726465722D7261646975733A696E68657269743B70616464696E673A313070783B2D7765626B69742D66696C7465723A64726F702D736861646F77283020302035707820726762';
wwv_flow_api.g_varchar2_table(106) := '6128302C20302C20302C202E303529293B66696C7465723A64726F702D736861646F772830203020357078207267626128302C20302C20302C202E303529293B626F726465723A31707820736F6C6964207267626128302C302C302C2E3033293B626163';
wwv_flow_api.g_varchar2_table(107) := '6B67726F756E643A236638663866383B706F736974696F6E3A72656C61746976653B7A2D696E6465783A317D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3A3A2D7765626B6974';
wwv_flow_api.g_varchar2_table(108) := '2D7363726F6C6C6261727B77696474683A303B6865696768743A307D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3A3A2D7765626B69742D7363726F6C6C6261722D7468756D62';
wwv_flow_api.g_varchar2_table(109) := '7B6261636B67726F756E643A7472616E73706172656E747D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3A3A2D7765626B69742D7363726F6C6C6261722D747261636B7B626163';
wwv_flow_api.g_varchar2_table(110) := '6B67726F756E643A7472616E73706172656E747D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C617373243D222D69636F6E225D7B2D7765626B69742D75736572';
wwv_flow_api.g_varchar2_table(111) := '2D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E653B77696474683A31313070783B6865696768743A31313070783B6469';
wwv_flow_api.g_varchar2_table(112) := '73706C61793A626C6F636B3B6D617267696E3A367078206175746F20313270787D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C617373243D222D69636F6E225D';
wwv_flow_api.g_varchar2_table(113) := '207376677B6D696E2D77696474683A313030253B6D61782D77696474683A313030253B6865696768743A6175746F7D5B69645E3D4E6F7469666C69785265706F7274577261705D3E2A3E68357B776F72642D627265616B3A627265616B2D616C6C3B776F';
wwv_flow_api.g_varchar2_table(114) := '72642D627265616B3A627265616B2D776F72643B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B666F6E742D73697A653A313670783B666F6E742D7765696768743A3530303B6C696E652D6865696768743A312E343B6D6172';
wwv_flow_api.g_varchar2_table(115) := '67696E3A30203020313070783B70616464696E673A30203020313070783B626F726465722D626F74746F6D3A31707820736F6C6964207267626128302C302C302C2E31293B666C6F61743A6C6566743B77696474683A313030253B746578742D616C6967';
wwv_flow_api.g_varchar2_table(116) := '6E3A63656E7465727D5B69645E3D4E6F7469666C69785265706F7274577261705D3E2A3E707B776F72642D627265616B3A627265616B2D616C6C3B776F72642D627265616B3A627265616B2D776F72643B666F6E742D66616D696C793A696E6865726974';
wwv_flow_api.g_varchar2_table(117) := '21696D706F7274616E743B666F6E742D73697A653A313370783B6C696E652D6865696768743A312E343B666F6E742D7765696768743A6E6F726D616C3B666C6F61743A6C6566743B77696474683A313030253B70616464696E673A3020313070783B6D61';
wwv_flow_api.g_varchar2_table(118) := '7267696E3A30203020313070787D5B69645E3D4E6F7469666C69785265706F7274577261705D2061234E585265706F7274427574746F6E7B776F72642D627265616B3A627265616B2D616C6C3B776F72642D627265616B3A627265616B2D776F72643B2D';
wwv_flow_api.g_varchar2_table(119) := '7765626B69742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E653B666F6E742D66616D696C793A696E6865';
wwv_flow_api.g_varchar2_table(120) := '72697421696D706F7274616E743B2D7765626B69742D7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F75743B2D6F2D7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F75743B7472616E736974696F6E3A';
wwv_flow_api.g_varchar2_table(121) := '616C6C202E32357320656173652D696E2D6F75743B637572736F723A706F696E7465723B666C6F61743A72696768743B70616464696E673A37707820313770783B6261636B67726F756E643A233332633638323B666F6E742D73697A653A313470783B6C';
wwv_flow_api.g_varchar2_table(122) := '696E652D6865696768743A312E343B666F6E742D7765696768743A3530303B626F726465722D7261646975733A696E686572697421696D706F7274616E743B636F6C6F723A236666667D5B69645E3D4E6F7469666C69785265706F7274577261705D2061';
wwv_flow_api.g_varchar2_table(123) := '234E585265706F7274427574746F6E3A686F7665727B626F782D736861646F773A696E7365742030202D3630707820357078202D357078207267626128302C302C302C2E3235297D5B69645E3D4E6F7469666C69785265706F7274577261705D2E72746C';
wwv_flow_api.g_varchar2_table(124) := '2D6F6E2061234E585265706F7274427574746F6E7B666C6F61743A6C6566747D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D222D6F7665726C6179225D2E776974682D616E696D6174696F6E7B2D7765626B';
wwv_flow_api.g_varchar2_table(125) := '69742D616E696D6174696F6E3A7265706F72742D6F7665726C61792D616E696D6174696F6E202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A7265706F72742D6F7665726C61792D616E696D6174696F6E202E';
wwv_flow_api.g_varchar2_table(126) := '337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573207265706F72742D6F7665726C61792D616E696D6174696F6E7B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B';
wwv_flow_api.g_varchar2_table(127) := '65796672616D6573207265706F72742D6F7665726C61792D616E696D6174696F6E7B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D5B69645E3D4E6F7469666C69785265706F7274577261705D3E6469765B636C6173732A3D22';
wwv_flow_api.g_varchar2_table(128) := '2D636F6E74656E74225D2E776974682D616E696D6174696F6E2E6E782D666164657B2D7765626B69742D616E696D6174696F6E3A7265706F72742D616E696D6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C3B';
wwv_flow_api.g_varchar2_table(129) := '616E696D6174696F6E3A7265706F72742D616E696D6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573207265706F72742D616E696D6174696F6E2D666164657B30';
wwv_flow_api.g_varchar2_table(130) := '257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B65796672616D6573207265706F72742D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D5B69645E3D4E6F746966';
wwv_flow_api.g_varchar2_table(131) := '6C69785265706F7274577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D2E776974682D616E696D6174696F6E2E6E782D7A6F6F6D7B2D7765626B69742D616E696D6174696F6E3A7265706F72742D616E696D6174696F6E2D7A6F6F6D';
wwv_flow_api.g_varchar2_table(132) := '202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A7265706F72742D616E696D6174696F6E2D7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B6579667261';
wwv_flow_api.g_varchar2_table(133) := '6D6573207265706F72742D616E696D6174696F6E2D7A6F6F6D7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65282E35293B7472616E73666F726D3A7363616C65282E35297D3530257B6F7061636974793A31';
wwv_flow_api.g_varchar2_table(134) := '3B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73';
wwv_flow_api.g_varchar2_table(135) := '666F726D3A7363616C652831297D7D406B65796672616D6573207265706F72742D616E696D6174696F6E2D7A6F6F6D7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65282E35293B7472616E73666F726D3A73';
wwv_flow_api.g_varchar2_table(136) := '63616C65282E35297D3530257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B6F7061636974793A313B2D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(137) := '616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D7D5B69645E3D4E6F7469666C69785265706F7274577261705D2E72656D6F76653E6469765B636C6173732A3D222D6F7665726C6179225D2E776974682D616E69';
wwv_flow_api.g_varchar2_table(138) := '6D6174696F6E7B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A7265706F72742D6F7665726C61792D616E696D6174696F6E2D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D617469';
wwv_flow_api.g_varchar2_table(139) := '6F6E3A7265706F72742D6F7665726C61792D616E696D6174696F6E2D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573207265706F72742D6F7665726C61792D616E696D61';
wwv_flow_api.g_varchar2_table(140) := '74696F6E2D72656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D406B65796672616D6573207265706F72742D6F7665726C61792D616E696D6174696F6E2D72656D6F76657B30257B6F7061636974793A317D313030';
wwv_flow_api.g_varchar2_table(141) := '257B6F7061636974793A307D7D5B69645E3D4E6F7469666C69785265706F7274577261705D2E72656D6F76653E6469765B636C6173732A3D222D636F6E74656E74225D2E776974682D616E696D6174696F6E2E6E782D666164657B6F7061636974793A30';
wwv_flow_api.g_varchar2_table(142) := '3B2D7765626B69742D616E696D6174696F6E3A7265706F72742D616E696D6174696F6E2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A7265706F72742D616E696D6174696F6E';
wwv_flow_api.g_varchar2_table(143) := '2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573207265706F72742D616E696D6174696F6E2D666164652D72656D6F76657B30257B6F7061636974793A317D';
wwv_flow_api.g_varchar2_table(144) := '313030257B6F7061636974793A307D7D406B65796672616D6573207265706F72742D616E696D6174696F6E2D666164652D72656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D5B69645E3D4E6F7469666C69785265';
wwv_flow_api.g_varchar2_table(145) := '706F7274577261705D2E72656D6F76653E6469765B636C6173732A3D222D636F6E74656E74225D2E776974682D616E696D6174696F6E2E6E782D7A6F6F6D7B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A7265706F72742D616E';
wwv_flow_api.g_varchar2_table(146) := '696D6174696F6E2D7A6F6F6D2D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A7265706F72742D616E696D6174696F6E2D7A6F6F6D2D72656D6F7665202E337320656173652D696E2D6F7574';
wwv_flow_api.g_varchar2_table(147) := '203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573207265706F72742D616E696D6174696F6E2D7A6F6F6D2D72656D6F76657B30257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C652831293B74';
wwv_flow_api.g_varchar2_table(148) := '72616E73666F726D3A7363616C652831297D3530257B6F7061636974793A2E353B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B6F7061636974793A303B';
wwv_flow_api.g_varchar2_table(149) := '2D7765626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D7D406B65796672616D6573207265706F72742D616E696D6174696F6E2D7A6F6F6D2D72656D6F76657B30257B6F7061636974793A313B';
wwv_flow_api.g_varchar2_table(150) := '2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D3530257B6F7061636974793A2E353B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D';
wwv_flow_api.g_varchar2_table(151) := '3A7363616C6528312E3035297D313030257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D7D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D';
wwv_flow_api.g_varchar2_table(152) := '7B706F736974696F6E3A66697865643B7A2D696E6465783A343030333B77696474683A313030253B6865696768743A313030253B6C6566743A303B746F703A303B70616464696E673A313070783B2D7765626B69742D626F782D73697A696E673A626F72';
wwv_flow_api.g_varchar2_table(153) := '6465722D626F783B626F782D73697A696E673A626F726465722D626F783B6261636B67726F756E643A7472616E73706172656E743B666F6E742D66616D696C793A22517569636B73616E64222C2D6170706C652D73797374656D2C426C696E6B4D616353';
wwv_flow_api.g_varchar2_table(154) := '797374656D466F6E742C225365676F65205549222C526F626F746F2C2248656C766574696361204E657565222C417269616C2C73616E732D73657269663B646973706C61793A2D7765626B69742D626F783B646973706C61793A2D7765626B69742D666C';
wwv_flow_api.g_varchar2_table(155) := '65783B646973706C61793A2D6D732D666C6578626F783B646973706C61793A666C65783B2D7765626B69742D666C65782D777261703A777261703B2D6D732D666C65782D777261703A777261703B666C65782D777261703A777261703B2D7765626B6974';
wwv_flow_api.g_varchar2_table(156) := '2D626F782D6F7269656E743A766572746963616C3B2D7765626B69742D626F782D646972656374696F6E3A6E6F726D616C3B2D7765626B69742D666C65782D646972656374696F6E3A636F6C756D6E3B2D6D732D666C65782D646972656374696F6E3A63';
wwv_flow_api.g_varchar2_table(157) := '6F6C756D6E3B666C65782D646972656374696F6E3A636F6C756D6E3B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465';
wwv_flow_api.g_varchar2_table(158) := '723B616C69676E2D6974656D733A63656E7465723B2D7765626B69742D626F782D7061636B3A63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573';
wwv_flow_api.g_varchar2_table(159) := '746966792D636F6E74656E743A63656E7465727D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E6E782D706F736974696F6E2D63656E7465722D746F707B2D7765626B69742D626F782D7061636B3A73746172743B2D7765626B69742D';
wwv_flow_api.g_varchar2_table(160) := '6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E';
wwv_flow_api.g_varchar2_table(161) := '6E782D706F736974696F6E2D63656E7465722D626F74746F6D7B2D7765626B69742D626F782D7061636B3A656E643B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D666C65782D7061636B3A656E643B6A75';
wwv_flow_api.g_varchar2_table(162) := '73746966792D636F6E74656E743A666C65782D656E647D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E6E782D706F736974696F6E2D6C6566742D746F707B2D7765626B69742D626F782D616C69676E3A73746172743B2D7765626B69';
wwv_flow_api.g_varchar2_table(163) := '742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D7765626B69742D626F782D7061636B3A73746172743B2D7765626B69742D';
wwv_flow_api.g_varchar2_table(164) := '6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E';
wwv_flow_api.g_varchar2_table(165) := '6E782D706F736974696F6E2D6C6566742D63656E7465727B2D7765626B69742D626F782D616C69676E3A73746172743B2D7765626B69742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A73746172743B';
wwv_flow_api.g_varchar2_table(166) := '616C69676E2D6974656D733A666C65782D73746172747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E6E782D706F736974696F6E2D6C6566742D626F74746F6D7B2D7765626B69742D626F782D616C69676E3A73746172743B2D7765';
wwv_flow_api.g_varchar2_table(167) := '626B69742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D7765626B69742D626F782D7061636B3A656E643B2D7765626B6974';
wwv_flow_api.g_varchar2_table(168) := '2D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D666C65782D7061636B3A656E643B6A7573746966792D636F6E74656E743A666C65782D656E647D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E6E782D706F';
wwv_flow_api.g_varchar2_table(169) := '736974696F6E2D72696768742D746F707B2D7765626B69742D626F782D616C69676E3A656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A656E643B616C69676E2D6974656D733A66';
wwv_flow_api.g_varchar2_table(170) := '6C65782D656E643B2D7765626B69742D626F782D7061636B3A73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A73746172743B6A7573746966792D636F6E74656E';
wwv_flow_api.g_varchar2_table(171) := '743A666C65782D73746172747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E6E782D706F736974696F6E2D72696768742D63656E7465727B2D7765626B69742D626F782D616C69676E3A656E643B2D7765626B69742D616C69676E2D';
wwv_flow_api.g_varchar2_table(172) := '6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A656E643B616C69676E2D6974656D733A666C65782D656E647D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E6E782D706F736974696F6E2D72696768742D62';
wwv_flow_api.g_varchar2_table(173) := '6F74746F6D7B2D7765626B69742D626F782D616C69676E3A656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765';
wwv_flow_api.g_varchar2_table(174) := '626B69742D626F782D7061636B3A656E643B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D666C65782D7061636B3A656E643B6A7573746966792D636F6E74656E743A666C65782D656E647D5B69645E3D4E';
wwv_flow_api.g_varchar2_table(175) := '6F7469666C6978436F6E6669726D577261705D202A7B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F787D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E';
wwv_flow_api.g_varchar2_table(176) := '6469765B636C6173732A3D222D6F7665726C6179225D7B77696474683A313030253B6865696768743A313030253B6C6566743A303B746F703A303B6261636B67726F756E643A72676261283235352C3235352C3235352C2E35293B706F736974696F6E3A';
wwv_flow_api.g_varchar2_table(177) := '66697865643B7A2D696E6465783A307D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D6F7665726C6179225D2E776974682D616E696D6174696F6E7B2D7765626B69742D616E696D6174696F6E3A636F';
wwv_flow_api.g_varchar2_table(178) := '6E6669726D2D6F7665726C61792D616E696D6174696F6E202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A636F6E6669726D2D6F7665726C61792D616E696D6174696F6E202E337320656173652D696E2D6F75';
wwv_flow_api.g_varchar2_table(179) := '74203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320636F6E6669726D2D6F7665726C61792D616E696D6174696F6E7B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B65796672616D657320636F6E';
wwv_flow_api.g_varchar2_table(180) := '6669726D2D6F7665726C61792D616E696D6174696F6E7B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E72656D6F76653E6469765B636C6173732A3D222D6F76';
wwv_flow_api.g_varchar2_table(181) := '65726C6179225D2E776974682D616E696D6174696F6E7B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A636F6E6669726D2D6F7665726C61792D616E696D6174696F6E2D72656D6F7665202E337320656173652D696E2D6F757420';
wwv_flow_api.g_varchar2_table(182) := '3073206E6F726D616C3B616E696D6174696F6E3A636F6E6669726D2D6F7665726C61792D616E696D6174696F6E2D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320636F';
wwv_flow_api.g_varchar2_table(183) := '6E6669726D2D6F7665726C61792D616E696D6174696F6E2D72656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D406B65796672616D657320636F6E6669726D2D6F7665726C61792D616E696D6174696F6E2D72656D';
wwv_flow_api.g_varchar2_table(184) := '6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D7B77696474683A33303070783B6D61782D7769';
wwv_flow_api.g_varchar2_table(185) := '6474683A313030253B6D61782D6865696768743A393676683B6F766572666C6F772D783A68696464656E3B6F766572666C6F772D793A6175746F3B626F726465722D7261646975733A323570783B70616464696E673A313070783B6D617267696E3A303B';
wwv_flow_api.g_varchar2_table(186) := '2D7765626B69742D66696C7465723A64726F702D736861646F772830203020357078207267626128302C20302C20302C202E303529293B66696C7465723A64726F702D736861646F772830203020357078207267626128302C20302C20302C202E303529';
wwv_flow_api.g_varchar2_table(187) := '293B6261636B67726F756E643A236638663866383B636F6C6F723A233165316531653B706F736974696F6E3A72656C61746976653B7A2D696E6465783A313B746578742D616C69676E3A63656E7465727D5B69645E3D4E6F7469666C6978436F6E666972';
wwv_flow_api.g_varchar2_table(188) := '6D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3A3A2D7765626B69742D7363726F6C6C6261727B77696474683A303B6865696768743A307D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173';
wwv_flow_api.g_varchar2_table(189) := '732A3D222D636F6E74656E74225D3A3A2D7765626B69742D7363726F6C6C6261722D7468756D627B6261636B67726F756E643A7472616E73706172656E747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D';
wwv_flow_api.g_varchar2_table(190) := '222D636F6E74656E74225D3A3A2D7765626B69742D7363726F6C6C6261722D747261636B7B6261636B67726F756E643A7472616E73706172656E747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D63';
wwv_flow_api.g_varchar2_table(191) := '6F6E74656E74225D3E6469765B636C6173732A3D222D68656164225D7B666C6F61743A6C6566743B77696474683A313030253B746578742D616C69676E3A696E68657269747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B';
wwv_flow_api.g_varchar2_table(192) := '636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D68656164225D3E68357B666C6F61743A6C6566743B77696474683A313030253B6D617267696E3A303B70616464696E673A30203020313070783B626F726465722D626F74';
wwv_flow_api.g_varchar2_table(193) := '746F6D3A31707820736F6C6964207267626128302C302C302C2E31293B636F6C6F723A233332633638323B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B666F6E742D73697A653A313670783B6C696E652D6865696768743A';
wwv_flow_api.g_varchar2_table(194) := '312E343B666F6E742D7765696768743A3530303B746578742D616C69676E3A696E68657269747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D22';
wwv_flow_api.g_varchar2_table(195) := '2D68656164225D3E6469767B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B6D617267696E3A31357078203020323070783B70616464696E673A3020313070783B666C6F61743A6C6566743B77696474683A313030253B666F';
wwv_flow_api.g_varchar2_table(196) := '6E742D73697A653A313470783B6C696E652D6865696768743A312E343B666F6E742D7765696768743A6E6F726D616C3B636F6C6F723A696E68657269743B746578742D616C69676E3A696E68657269747D5B69645E3D4E6F7469666C6978436F6E666972';
wwv_flow_api.g_varchar2_table(197) := '6D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D68656164225D3E6469763E6469767B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B666C6F61743A6C6566743B77';
wwv_flow_api.g_varchar2_table(198) := '696474683A313030253B6D617267696E3A31357078203020303B70616464696E673A307D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D6865';
wwv_flow_api.g_varchar2_table(199) := '6164225D3E6469763E6469763E696E7075747B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B666C6F61743A6C6566743B77696474683A313030253B6865696768743A343070783B6D617267696E3A303B70616464696E673A';
wwv_flow_api.g_varchar2_table(200) := '3020313570783B626F726465723A31707820736F6C6964207267626128302C302C302C2E31293B626F726465722D7261646975733A323570783B666F6E742D73697A653A313470783B666F6E742D7765696768743A6E6F726D616C3B6C696E652D686569';
wwv_flow_api.g_varchar2_table(201) := '6768743A313B2D7765626B69742D7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F75743B2D6F2D7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F75743B7472616E736974696F6E3A616C6C202E323573';
wwv_flow_api.g_varchar2_table(202) := '20656173652D696E2D6F75743B746578742D616C69676E3A6C6566747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E72746C2D6F6E3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D6865';
wwv_flow_api.g_varchar2_table(203) := '6164225D3E6469763E6469763E696E7075747B746578742D616C69676E3A72696768747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D6865';
wwv_flow_api.g_varchar2_table(204) := '6164225D3E6469763E6469763E696E7075743A686F7665727B626F726465722D636F6C6F723A7267626128302C302C302C2E31297D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E7422';
wwv_flow_api.g_varchar2_table(205) := '5D3E6469765B636C6173732A3D222D68656164225D3E6469763E6469763E696E7075743A666F6375737B626F726465722D636F6C6F723A7267626128302C302C302C2E33297D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B';
wwv_flow_api.g_varchar2_table(206) := '636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D68656164225D3E6469763E6469763E696E7075742E6E782D76616C69646174696F6E2D6661696C7572657B626F726465722D636F6C6F723A236666353534397D5B69645E';
wwv_flow_api.g_varchar2_table(207) := '3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D68656164225D3E6469763E6469763E696E7075742E6E782D76616C69646174696F6E2D73756363657373';
wwv_flow_api.g_varchar2_table(208) := '7B626F726465722D636F6C6F723A233332633638327D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D627574746F6E73225D7B2D7765626B69';
wwv_flow_api.g_varchar2_table(209) := '742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E653B626F726465722D7261646975733A696E6865726974';
wwv_flow_api.g_varchar2_table(210) := '3B666C6F61743A6C6566743B77696474683A313030253B746578742D616C69676E3A696E68657269747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C617373';
wwv_flow_api.g_varchar2_table(211) := '2A3D222D627574746F6E73225D3E617B637572736F723A706F696E7465723B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B2D7765626B69742D7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F7574';
wwv_flow_api.g_varchar2_table(212) := '3B2D6F2D7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F75743B7472616E736974696F6E3A616C6C202E32357320656173652D696E2D6F75743B666C6F61743A6C6566743B77696474683A3438253B70616464696E673A397078';
wwv_flow_api.g_varchar2_table(213) := '203570783B626F726465722D7261646975733A696E686572697421696D706F7274616E743B666F6E742D7765696768743A3530303B666F6E742D73697A653A313570783B6C696E652D6865696768743A312E343B636F6C6F723A236638663866383B7465';
wwv_flow_api.g_varchar2_table(214) := '78742D616C69676E3A696E68657269747D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D627574746F6E73225D3E612E636F6E6669726D2D62';
wwv_flow_api.g_varchar2_table(215) := '7574746F6E2D6F6B7B6D617267696E3A30203225203020303B6261636B67726F756E643A233332633638327D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C61';
wwv_flow_api.g_varchar2_table(216) := '73732A3D222D627574746F6E73225D3E612E636F6E6669726D2D627574746F6E2D63616E63656C7B6D617267696E3A30203020302032253B6261636B67726F756E643A236139613961397D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D';
wwv_flow_api.g_varchar2_table(217) := '3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D627574746F6E73225D3E612E66756C6C7B6D617267696E3A303B77696474683A313030257D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D3E';
wwv_flow_api.g_varchar2_table(218) := '6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D627574746F6E73225D3E613A686F7665727B626F782D736861646F773A696E7365742030202D3630707820357078202D357078207267626128302C302C302C2E';
wwv_flow_api.g_varchar2_table(219) := '3235297D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E72746C2D6F6E3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D627574746F6E73225D2C5B69645E3D4E6F7469666C6978436F6E66';
wwv_flow_api.g_varchar2_table(220) := '69726D577261705D2E72746C2D6F6E3E6469765B636C6173732A3D222D636F6E74656E74225D3E6469765B636C6173732A3D222D627574746F6E73225D3E617B2D7765626B69742D7472616E73666F726D3A726F746174655928313830646567293B7472';
wwv_flow_api.g_varchar2_table(221) := '616E73666F726D3A726F746174655928313830646567297D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E776974682D616E696D6174696F6E2E6E782D666164653E6469765B636C6173732A3D222D636F6E74656E74225D7B2D776562';
wwv_flow_api.g_varchar2_table(222) := '6B69742D616E696D6174696F6E3A636F6E6669726D2D616E696D6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A636F6E6669726D2D616E696D6174696F6E2D66616465202E337320';
wwv_flow_api.g_varchar2_table(223) := '656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320636F6E6669726D2D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B6579667261';
wwv_flow_api.g_varchar2_table(224) := '6D657320636F6E6669726D2D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E776974682D616E696D6174696F6E2E6E782D';
wwv_flow_api.g_varchar2_table(225) := '7A6F6F6D3E6469765B636C6173732A3D222D636F6E74656E74225D7B2D7765626B69742D616E696D6174696F6E3A636F6E6669726D2D616E696D6174696F6E2D7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D61';
wwv_flow_api.g_varchar2_table(226) := '74696F6E3A636F6E6669726D2D616E696D6174696F6E2D7A6F6F6D202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320636F6E6669726D2D616E696D6174696F6E2D7A6F6F6D7B30257B6F';
wwv_flow_api.g_varchar2_table(227) := '7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65282E35293B7472616E73666F726D3A7363616C65282E35297D3530257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C6528312E303529';
wwv_flow_api.g_varchar2_table(228) := '3B7472616E73666F726D3A7363616C6528312E3035297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D7D406B65796672616D657320636F6E66';
wwv_flow_api.g_varchar2_table(229) := '69726D2D616E696D6174696F6E2D7A6F6F6D7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65282E35293B7472616E73666F726D3A7363616C65282E35297D3530257B6F7061636974793A313B2D7765626B69';
wwv_flow_api.g_varchar2_table(230) := '742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363';
wwv_flow_api.g_varchar2_table(231) := '616C652831297D7D5B69645E3D4E6F7469666C6978436F6E6669726D577261705D2E776974682D616E696D6174696F6E2E6E782D666164652E72656D6F76653E6469765B636C6173732A3D222D636F6E74656E74225D7B6F7061636974793A303B2D7765';
wwv_flow_api.g_varchar2_table(232) := '626B69742D616E696D6174696F6E3A636F6E6669726D2D616E696D6174696F6E2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A636F6E6669726D2D616E696D6174696F6E2D66';
wwv_flow_api.g_varchar2_table(233) := '6164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320636F6E6669726D2D616E696D6174696F6E2D666164652D72656D6F76657B30257B6F7061636974793A317D31';
wwv_flow_api.g_varchar2_table(234) := '3030257B6F7061636974793A307D7D406B65796672616D657320636F6E6669726D2D616E696D6174696F6E2D666164652D72656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D5B69645E3D4E6F7469666C6978436F';
wwv_flow_api.g_varchar2_table(235) := '6E6669726D577261705D2E776974682D616E696D6174696F6E2E6E782D7A6F6F6D2E72656D6F76653E6469765B636C6173732A3D222D636F6E74656E74225D7B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A636F6E6669726D2D';
wwv_flow_api.g_varchar2_table(236) := '616E696D6174696F6E2D7A6F6F6D2D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A636F6E6669726D2D616E696D6174696F6E2D7A6F6F6D2D72656D6F7665202E337320656173652D696E2D';
wwv_flow_api.g_varchar2_table(237) := '6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320636F6E6669726D2D616E696D6174696F6E2D7A6F6F6D2D72656D6F76657B30257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C6528';
wwv_flow_api.g_varchar2_table(238) := '31293B7472616E73666F726D3A7363616C652831297D3530257B6F7061636974793A2E353B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E73666F726D3A7363616C6528312E3035297D313030257B6F7061636974';
wwv_flow_api.g_varchar2_table(239) := '793A303B2D7765626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D7D406B65796672616D657320636F6E6669726D2D616E696D6174696F6E2D7A6F6F6D2D72656D6F76657B30257B6F70616369';
wwv_flow_api.g_varchar2_table(240) := '74793A313B2D7765626B69742D7472616E73666F726D3A7363616C652831293B7472616E73666F726D3A7363616C652831297D3530257B6F7061636974793A2E353B2D7765626B69742D7472616E73666F726D3A7363616C6528312E3035293B7472616E';
wwv_flow_api.g_varchar2_table(241) := '73666F726D3A7363616C6528312E3035297D313030257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C652830293B7472616E73666F726D3A7363616C652830297D7D5B69645E3D4E6F7469666C69784C6F6164696E67';
wwv_flow_api.g_varchar2_table(242) := '577261705D7B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E653B706F736974696F6E3A';
wwv_flow_api.g_varchar2_table(243) := '66697865643B7A2D696E6465783A343030303B77696474683A313030253B6865696768743A313030253B6C6566743A303B746F703A303B72696768743A303B626F74746F6D3A303B6D617267696E3A6175746F3B646973706C61793A2D7765626B69742D';
wwv_flow_api.g_varchar2_table(244) := '626F783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A2D6D732D666C6578626F783B646973706C61793A666C65783B2D7765626B69742D666C65782D777261703A777261703B2D6D732D666C65782D777261703A777261703B';
wwv_flow_api.g_varchar2_table(245) := '666C65782D777261703A777261703B2D7765626B69742D626F782D6F7269656E743A766572746963616C3B2D7765626B69742D626F782D646972656374696F6E3A6E6F726D616C3B2D7765626B69742D666C65782D646972656374696F6E3A636F6C756D';
wwv_flow_api.g_varchar2_table(246) := '6E3B2D6D732D666C65782D646972656374696F6E3A636F6C756D6E3B666C65782D646972656374696F6E3A636F6C756D6E3B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465';
wwv_flow_api.g_varchar2_table(247) := '723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E2D6974656D733A63656E7465723B2D7765626B69742D626F782D7061636B3A63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D';
wwv_flow_api.g_varchar2_table(248) := '732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465723B746578742D616C69676E3A63656E7465723B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E67';
wwv_flow_api.g_varchar2_table(249) := '3A626F726465722D626F783B6261636B67726F756E643A7267626128302C302C302C2E38293B666F6E742D66616D696C793A22517569636B73616E64222C2D6170706C652D73797374656D2C426C696E6B4D616353797374656D466F6E742C225365676F';
wwv_flow_api.g_varchar2_table(250) := '65205549222C526F626F746F2C2248656C766574696361204E657565222C417269616C2C73616E732D73657269667D5B69645E3D4E6F7469666C69784C6F6164696E67577261705D202A7B2D7765626B69742D626F782D73697A696E673A626F72646572';
wwv_flow_api.g_varchar2_table(251) := '2D626F783B626F782D73697A696E673A626F726465722D626F787D5B69645E3D4E6F7469666C69784C6F6164696E67577261705D2E636C69636B2D746F2D636C6F73657B637572736F723A706F696E7465727D5B69645E3D4E6F7469666C69784C6F6164';
wwv_flow_api.g_varchar2_table(252) := '696E67577261705D3E6469765B636C6173732A3D222D69636F6E225D7B77696474683A363070783B6865696768743A363070783B706F736974696F6E3A72656C61746976653B2D7765626B69742D7472616E736974696F6E3A746F70202E327320656173';
wwv_flow_api.g_varchar2_table(253) := '652D696E2D6F75743B2D6F2D7472616E736974696F6E3A746F70202E327320656173652D696E2D6F75743B7472616E736974696F6E3A746F70202E327320656173652D696E2D6F75743B6D617267696E3A30206175746F7D5B69645E3D4E6F7469666C69';
wwv_flow_api.g_varchar2_table(254) := '784C6F6164696E67577261705D3E6469765B636C6173732A3D222D69636F6E225D20696D672C5B69645E3D4E6F7469666C69784C6F6164696E67577261705D3E6469765B636C6173732A3D222D69636F6E225D207376677B6D61782D77696474683A756E';
wwv_flow_api.g_varchar2_table(255) := '7365743B6D61782D6865696768743A756E7365743B77696474683A313030253B6865696768743A313030253B706F736974696F6E3A6162736F6C7574653B6C6566743A303B746F703A307D5B69645E3D4E6F7469666C69784C6F6164696E67577261705D';
wwv_flow_api.g_varchar2_table(256) := '3E707B706F736974696F6E3A72656C61746976653B6D617267696E3A31307078206175746F20303B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B666F6E742D7765696768743A6E6F726D616C3B666F6E742D73697A653A31';
wwv_flow_api.g_varchar2_table(257) := '3570783B6C696E652D6865696768743A312E343B70616464696E673A3020313070783B77696474683A313030253B746578742D616C69676E3A63656E7465727D5B69645E3D4E6F7469666C69784C6F6164696E67577261705D2E776974682D616E696D61';
wwv_flow_api.g_varchar2_table(258) := '74696F6E7B2D7765626B69742D616E696D6174696F6E3A6C6F6164696E672D616E696D6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A6C6F6164696E672D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(259) := '66616465202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206C6F6164696E672D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A31';
wwv_flow_api.g_varchar2_table(260) := '7D7D406B65796672616D6573206C6F6164696E672D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D5B69645E3D4E6F7469666C69784C6F6164696E67577261705D2E776974682D616E696D';
wwv_flow_api.g_varchar2_table(261) := '6174696F6E2E72656D6F76657B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A6C6F6164696E672D616E696D6174696F6E2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E69';
wwv_flow_api.g_varchar2_table(262) := '6D6174696F6E3A6C6F6164696E672D616E696D6174696F6E2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206C6F6164696E672D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(263) := '666164652D72656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D406B65796672616D6573206C6F6164696E672D616E696D6174696F6E2D666164652D72656D6F76657B30257B6F7061636974793A317D313030257B';
wwv_flow_api.g_varchar2_table(264) := '6F7061636974793A307D7D5B69645E3D4E6F7469666C69784C6F6164696E67577261705D3E702E6E65777B2D7765626B69742D616E696D6174696F6E3A6C6F6164696E672D6E65772D6D6573736167652D66616465202E337320656173652D696E2D6F75';
wwv_flow_api.g_varchar2_table(265) := '74203073206E6F726D616C3B616E696D6174696F6E3A6C6F6164696E672D6E65772D6D6573736167652D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D6573206C6F6164696E672D';
wwv_flow_api.g_varchar2_table(266) := '6E65772D6D6573736167652D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B65796672616D6573206C6F6164696E672D6E65772D6D6573736167652D666164657B30257B6F7061636974793A307D313030257B';
wwv_flow_api.g_varchar2_table(267) := '6F7061636974793A317D7D5B69645E3D4E6F7469666C6978426C6F636B577261705D7B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F';
wwv_flow_api.g_varchar2_table(268) := '6E653B757365722D73656C6563743A6E6F6E653B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F783B706F736974696F6E3A6162736F6C7574653B7A2D696E6465783A3130';
wwv_flow_api.g_varchar2_table(269) := '30303B666F6E742D66616D696C793A22517569636B73616E64222C2D6170706C652D73797374656D2C426C696E6B4D616353797374656D466F6E742C225365676F65205549222C526F626F746F2C2248656C766574696361204E657565222C417269616C';
wwv_flow_api.g_varchar2_table(270) := '2C73616E732D73657269663B6261636B67726F756E643A72676261283235352C3235352C3235352C2E39293B746578742D616C69676E3A63656E7465723B616E696D6174696F6E2D6475726174696F6E3A2E34733B77696474683A313030253B68656967';
wwv_flow_api.g_varchar2_table(271) := '68743A313030253B6C6566743A303B746F703A303B626F726465722D7261646975733A696E68657269743B646973706C61793A2D7765626B69742D626F783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A2D6D732D666C6578';
wwv_flow_api.g_varchar2_table(272) := '626F783B646973706C61793A666C65783B2D7765626B69742D666C65782D777261703A777261703B2D6D732D666C65782D777261703A777261703B666C65782D777261703A777261703B2D7765626B69742D626F782D6F7269656E743A76657274696361';
wwv_flow_api.g_varchar2_table(273) := '6C3B2D7765626B69742D626F782D646972656374696F6E3A6E6F726D616C3B2D7765626B69742D666C65782D646972656374696F6E3A636F6C756D6E3B2D6D732D666C65782D646972656374696F6E3A636F6C756D6E3B666C65782D646972656374696F';
wwv_flow_api.g_varchar2_table(274) := '6E3A636F6C756D6E3B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E2D6974656D733A63656E7465';
wwv_flow_api.g_varchar2_table(275) := '723B2D7765626B69742D626F782D7061636B3A63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E746572';
wwv_flow_api.g_varchar2_table(276) := '7D5B69645E3D4E6F7469666C6978426C6F636B577261705D202A7B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F787D5B69645E3D4E6F7469666C6978426C6F636B577261';
wwv_flow_api.g_varchar2_table(277) := '705D3E7370616E5B636C6173732A3D222D69636F6E225D7B646973706C61793A626C6F636B3B77696474683A343570783B6865696768743A343570783B706F736974696F6E3A72656C61746976653B6D617267696E3A30206175746F7D5B69645E3D4E6F';
wwv_flow_api.g_varchar2_table(278) := '7469666C6978426C6F636B577261705D3E7370616E5B636C6173732A3D222D69636F6E225D207376677B77696474683A696E68657269743B6865696768743A696E68657269747D5B69645E3D4E6F7469666C6978426C6F636B577261705D3E7370616E5B';
wwv_flow_api.g_varchar2_table(279) := '636C6173732A3D222D6D657373616765225D7B706F736974696F6E3A72656C61746976653B646973706C61793A626C6F636B3B77696474683A313030253B6D617267696E3A31307078206175746F20303B70616464696E673A3020313070783B666F6E74';
wwv_flow_api.g_varchar2_table(280) := '2D66616D696C793A696E686572697421696D706F7274616E743B666F6E742D7765696768743A6E6F726D616C3B666F6E742D73697A653A313470783B6C696E652D6865696768743A312E347D5B69645E3D4E6F7469666C6978426C6F636B577261705D2E';
wwv_flow_api.g_varchar2_table(281) := '776974682D616E696D6174696F6E7B2D7765626B69742D616E696D6174696F6E3A626C6F636B2D616E696D6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D6174696F6E3A626C6F636B2D616E696D';
wwv_flow_api.g_varchar2_table(282) := '6174696F6E2D66616465202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320626C6F636B2D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F70616369';
wwv_flow_api.g_varchar2_table(283) := '74793A317D7D406B65796672616D657320626C6F636B2D616E696D6174696F6E2D666164657B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D5B69645E3D4E6F7469666C6978426C6F636B577261705D2E776974682D616E696D';
wwv_flow_api.g_varchar2_table(284) := '6174696F6E2E72656D6F76657B6F7061636974793A303B2D7765626B69742D616E696D6174696F6E3A626C6F636B2D616E696D6174696F6E2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C3B616E696D61';
wwv_flow_api.g_varchar2_table(285) := '74696F6E3A626C6F636B2D616E696D6174696F6E2D666164652D72656D6F7665202E337320656173652D696E2D6F7574203073206E6F726D616C7D402D7765626B69742D6B65796672616D657320626C6F636B2D616E696D6174696F6E2D666164652D72';
wwv_flow_api.g_varchar2_table(286) := '656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D406B65796672616D657320626C6F636B2D616E696D6174696F6E2D666164652D72656D6F76657B30257B6F7061636974793A317D313030257B6F7061636974793A';
wwv_flow_api.g_varchar2_table(287) := '307D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30115551989577955961)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_file_name=>'notiflix-2.7.0.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A204E6F7469666C6978202868747470733A2F2F7777772E6E6F7469666C69782E636F6D29202D2056657273696F6E3A20322E372E30202D20417574686F723A204675726B616E204D54202868747470733A2F2F6769746875622E636F6D2F66757263';
wwv_flow_api.g_varchar2_table(2) := '616E29202D20436F707972696768742032303230204E6F7469666C69782C204D4954204C6963656E6365202868747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F4D495429202A2F0A0A2866756E6374696F6E28742C65297B';
wwv_flow_api.g_varchar2_table(3) := '2266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E65285B5D2C66756E6374696F6E28297B72657475726E20652874297D293A226F626A656374223D3D747970656F66206D6F64756C652626226F';
wwv_flow_api.g_varchar2_table(4) := '626A656374223D3D747970656F66206D6F64756C652E6578706F7274733F6D6F64756C652E6578706F7274733D652874293A742E4E6F7469666C69783D652874297D292822756E646566696E6564223D3D747970656F6620676C6F62616C3F22756E6465';
wwv_flow_api.g_varchar2_table(5) := '66696E6564223D3D747970656F662077696E646F773F746869733A77696E646F773A676C6F62616C2C66756E6374696F6E2874297B2775736520737472696374273B69662822756E646566696E6564223D3D747970656F662074262622756E646566696E';
wwv_flow_api.g_varchar2_table(6) := '6564223D3D747970656F6620742E646F63756D656E742972657475726E21313B76617220652C612C6E2C692C6F2C733D225C6E5C6E566973697420646F63756D656E746174696F6E207061676520746F206C6561726E206D6F72653A2068747470733A2F';
wwv_flow_api.g_varchar2_table(7) := '2F7777772E6E6F7469666C69782E636F6D2F646F63756D656E746174696F6E222C723D222D6170706C652D73797374656D2C20426C696E6B4D616353797374656D466F6E742C205C225365676F652055495C222C20526F626F746F2C205C2248656C7665';
wwv_flow_api.g_varchar2_table(8) := '74696361204E6575655C222C20417269616C2C205C224E6F746F2053616E735C222C2073616E732D73657269662C205C224170706C6520436F6C6F7220456D6F6A695C222C205C225365676F6520554920456D6F6A695C222C205C225365676F65205549';
wwv_flow_api.g_varchar2_table(9) := '2053796D626F6C5C222C205C224E6F746F20436F6C6F7220456D6F6A695C22222C6C3D7B7772617049443A224E6F7469666C69784E6F7469667957726170222C77696474683A223238307078222C706F736974696F6E3A2272696768742D746F70222C64';
wwv_flow_api.g_varchar2_table(10) := '697374616E63653A2231307078222C6F7061636974793A312C626F726465725261646975733A22357078222C72746C3A21312C74696D656F75743A3365332C6D6573736167654D61784C656E6774683A3131302C6261636B4F7665726C61793A21312C62';
wwv_flow_api.g_varchar2_table(11) := '61636B4F7665726C6179436F6C6F723A227267626128302C302C302C302E3529222C706C61696E546578743A21302C73686F774F6E6C795468654C6173744F6E653A21312C636C69636B546F436C6F73653A21312C70617573654F6E486F7665723A2130';
wwv_flow_api.g_varchar2_table(12) := '2C49443A224E6F7469666C69784E6F74696679222C636C6173734E616D653A226E6F7469666C69782D6E6F74696679222C7A696E6465783A343030312C757365476F6F676C65466F6E743A21312C666F6E7446616D696C793A22517569636B73616E6422';
wwv_flow_api.g_varchar2_table(13) := '2C666F6E7453697A653A2231337078222C637373416E696D6174696F6E3A21302C637373416E696D6174696F6E4475726174696F6E3A3430302C637373416E696D6174696F6E5374796C653A2266616465222C636C6F7365427574746F6E3A21312C7573';
wwv_flow_api.g_varchar2_table(14) := '6549636F6E3A21302C757365466F6E74417765736F6D653A21312C666F6E74417765736F6D6549636F6E5374796C653A226261736963222C666F6E74417765736F6D6549636F6E53697A653A2233347078222C737563636573733A7B6261636B67726F75';
wwv_flow_api.g_varchar2_table(15) := '6E643A2223333263363832222C74657874436F6C6F723A2223666666222C6368696C64436C6173734E616D653A2273756363657373222C6E6F7469666C697849636F6E436F6C6F723A227267626128302C302C302C302E3229222C666F6E74417765736F';
wwv_flow_api.g_varchar2_table(16) := '6D65436C6173734E616D653A226661732066612D636865636B2D636972636C65222C666F6E74417765736F6D6549636F6E436F6C6F723A227267626128302C302C302C302E3229222C6261636B4F7665726C6179436F6C6F723A22726762612835302C31';
wwv_flow_api.g_varchar2_table(17) := '39382C3133302C302E3229227D2C6661696C7572653A7B6261636B67726F756E643A2223666635353439222C74657874436F6C6F723A2223666666222C6368696C64436C6173734E616D653A226661696C757265222C6E6F7469666C697849636F6E436F';
wwv_flow_api.g_varchar2_table(18) := '6C6F723A227267626128302C302C302C302E3229222C666F6E74417765736F6D65436C6173734E616D653A226661732066612D74696D65732D636972636C65222C666F6E74417765736F6D6549636F6E436F6C6F723A227267626128302C302C302C302E';
wwv_flow_api.g_varchar2_table(19) := '3229222C6261636B4F7665726C6179436F6C6F723A2272676261283235352C38352C37332C302E3229227D2C7761726E696E673A7B6261636B67726F756E643A2223656562663331222C74657874436F6C6F723A2223666666222C6368696C64436C6173';
wwv_flow_api.g_varchar2_table(20) := '734E616D653A227761726E696E67222C6E6F7469666C697849636F6E436F6C6F723A227267626128302C302C302C302E3229222C666F6E74417765736F6D65436C6173734E616D653A226661732066612D6578636C616D6174696F6E2D636972636C6522';
wwv_flow_api.g_varchar2_table(21) := '2C666F6E74417765736F6D6549636F6E436F6C6F723A227267626128302C302C302C302E3229222C6261636B4F7665726C6179436F6C6F723A2272676261283233382C3139312C34392C302E3229227D2C696E666F3A7B6261636B67726F756E643A2223';
wwv_flow_api.g_varchar2_table(22) := '323663306433222C74657874436F6C6F723A2223666666222C6368696C64436C6173734E616D653A22696E666F222C6E6F7469666C697849636F6E436F6C6F723A227267626128302C302C302C302E3229222C666F6E74417765736F6D65436C6173734E';
wwv_flow_api.g_varchar2_table(23) := '616D653A226661732066612D696E666F2D636972636C65222C666F6E74417765736F6D6549636F6E436F6C6F723A227267626128302C302C302C302E3229222C6261636B4F7665726C6179436F6C6F723A22726762612833382C3139322C3231312C302E';
wwv_flow_api.g_varchar2_table(24) := '3229227D7D2C633D7B49443A224E6F7469666C69785265706F727457726170222C636C6173734E616D653A226E6F7469666C69782D7265706F7274222C77696474683A223332307078222C6261636B67726F756E64436F6C6F723A222366386638663822';
wwv_flow_api.g_varchar2_table(25) := '2C626F726465725261646975733A2232357078222C72746C3A21312C7A696E6465783A343030322C6261636B4F7665726C61793A21302C6261636B4F7665726C6179436F6C6F723A227267626128302C302C302C302E3529222C757365476F6F676C6546';
wwv_flow_api.g_varchar2_table(26) := '6F6E743A21312C666F6E7446616D696C793A22517569636B73616E64222C73766753697A653A223131307078222C706C61696E546578743A21302C7469746C65466F6E7453697A653A2231367078222C7469746C654D61784C656E6774683A33342C6D65';
wwv_flow_api.g_varchar2_table(27) := '7373616765466F6E7453697A653A2231337078222C6D6573736167654D61784C656E6774683A3430302C627574746F6E466F6E7453697A653A2231347078222C627574746F6E4D61784C656E6774683A33342C637373416E696D6174696F6E3A21302C63';
wwv_flow_api.g_varchar2_table(28) := '7373416E696D6174696F6E4475726174696F6E3A3336302C637373416E696D6174696F6E5374796C653A2266616465222C737563636573733A7B737667436F6C6F723A2223333263363832222C7469746C65436F6C6F723A2223316531653165222C6D65';
wwv_flow_api.g_varchar2_table(29) := '7373616765436F6C6F723A2223323432343234222C627574746F6E4261636B67726F756E643A2223333263363832222C627574746F6E436F6C6F723A2223666666222C6261636B4F7665726C6179436F6C6F723A22726762612835302C3139382C313330';
wwv_flow_api.g_varchar2_table(30) := '2C302E3229227D2C6661696C7572653A7B737667436F6C6F723A2223666635353439222C7469746C65436F6C6F723A2223316531653165222C6D657373616765436F6C6F723A2223323432343234222C627574746F6E4261636B67726F756E643A222366';
wwv_flow_api.g_varchar2_table(31) := '6635353439222C627574746F6E436F6C6F723A2223666666222C6261636B4F7665726C6179436F6C6F723A2272676261283235352C38352C37332C302E3229227D2C7761726E696E673A7B737667436F6C6F723A2223656562663331222C7469746C6543';
wwv_flow_api.g_varchar2_table(32) := '6F6C6F723A2223316531653165222C6D657373616765436F6C6F723A2223323432343234222C627574746F6E4261636B67726F756E643A2223656562663331222C627574746F6E436F6C6F723A2223666666222C6261636B4F7665726C6179436F6C6F72';
wwv_flow_api.g_varchar2_table(33) := '3A2272676261283233382C3139312C34392C302E3229227D2C696E666F3A7B737667436F6C6F723A2223323663306433222C7469746C65436F6C6F723A2223316531653165222C6D657373616765436F6C6F723A2223323432343234222C627574746F6E';
wwv_flow_api.g_varchar2_table(34) := '4261636B67726F756E643A2223323663306433222C627574746F6E436F6C6F723A2223666666222C6261636B4F7665726C6179436F6C6F723A22726762612833382C3139322C3231312C302E3229227D7D2C6D3D7B49443A224E6F7469666C6978436F6E';
wwv_flow_api.g_varchar2_table(35) := '6669726D57726170222C636C6173734E616D653A226E6F7469666C69782D636F6E6669726D222C77696474683A223330307078222C7A696E6465783A343030332C706F736974696F6E3A2263656E746572222C64697374616E63653A2231307078222C62';
wwv_flow_api.g_varchar2_table(36) := '61636B67726F756E64436F6C6F723A2223663866386638222C626F726465725261646975733A2232357078222C6261636B4F7665726C61793A21302C6261636B4F7665726C6179436F6C6F723A227267626128302C302C302C302E3529222C72746C3A21';
wwv_flow_api.g_varchar2_table(37) := '312C757365476F6F676C65466F6E743A21312C666F6E7446616D696C793A22517569636B73616E64222C637373416E696D6174696F6E3A21302C637373416E696D6174696F6E5374796C653A2266616465222C637373416E696D6174696F6E4475726174';
wwv_flow_api.g_varchar2_table(38) := '696F6E3A3330302C706C61696E546578743A21302C7469746C65436F6C6F723A2223333263363832222C7469746C65466F6E7453697A653A2231367078222C7469746C654D61784C656E6774683A33342C6D657373616765436F6C6F723A222331653165';
wwv_flow_api.g_varchar2_table(39) := '3165222C6D657373616765466F6E7453697A653A2231347078222C6D6573736167654D61784C656E6774683A3131302C627574746F6E73466F6E7453697A653A2231357078222C627574746F6E734D61784C656E6774683A33342C6F6B427574746F6E43';
wwv_flow_api.g_varchar2_table(40) := '6F6C6F723A2223663866386638222C6F6B427574746F6E4261636B67726F756E643A2223333263363832222C63616E63656C427574746F6E436F6C6F723A2223663866386638222C63616E63656C427574746F6E4261636B67726F756E643A2223613961';
wwv_flow_api.g_varchar2_table(41) := '396139227D2C703D7B49443A224E6F7469666C69784C6F6164696E6757726170222C636C6173734E616D653A226E6F7469666C69782D6C6F6164696E67222C7A696E6465783A3465332C6261636B67726F756E64436F6C6F723A227267626128302C302C';
wwv_flow_api.g_varchar2_table(42) := '302C302E3829222C72746C3A21312C757365476F6F676C65466F6E743A21312C666F6E7446616D696C793A22517569636B73616E64222C637373416E696D6174696F6E3A21302C637373416E696D6174696F6E4475726174696F6E3A3430302C636C6963';
wwv_flow_api.g_varchar2_table(43) := '6B546F436C6F73653A21312C637573746F6D53766755726C3A6E756C6C2C73766753697A653A2238307078222C737667436F6C6F723A2223333263363832222C6D65737361676549443A224E6F7469666C69784C6F6164696E674D657373616765222C6D';
wwv_flow_api.g_varchar2_table(44) := '657373616765466F6E7453697A653A2231357078222C6D6573736167654D61784C656E6774683A33342C6D657373616765436F6C6F723A2223646364636463227D2C643D7B49443A224E6F7469666C6978426C6F636B57726170222C717565727953656C';
wwv_flow_api.g_varchar2_table(45) := '6563746F724C696D69743A3230302C636C6173734E616D653A226E6F7469666C69782D626C6F636B222C706F736974696F6E3A226162736F6C757465222C7A696E6465783A3165332C6261636B67726F756E64436F6C6F723A2272676261283235352C32';
wwv_flow_api.g_varchar2_table(46) := '35352C3235352C302E3929222C72746C3A21312C757365476F6F676C65466F6E743A21312C666F6E7446616D696C793A22517569636B73616E64222C637373416E696D6174696F6E3A21302C637373416E696D6174696F6E4475726174696F6E3A333030';
wwv_flow_api.g_varchar2_table(47) := '2C73766753697A653A2234357078222C737667436F6C6F723A2223333833383338222C6D657373616765466F6E7453697A653A2231347078222C6D6573736167654D61784C656E6774683A33342C6D657373616765436F6C6F723A222333383338333822';
wwv_flow_api.g_varchar2_table(48) := '7D2C673D66756E6374696F6E28742C65297B72657475726E20636F6E736F6C652E6572726F722822256320222B742B2220222C2270616464696E673A3270783B626F726465722D7261646975733A323070783B636F6C6F723A236666663B6261636B6772';
wwv_flow_api.g_varchar2_table(49) := '6F756E643A23666635353439222C225C6E222B652B73297D2C663D66756E6374696F6E28742C65297B72657475726E20636F6E736F6C652E6C6F672822256320222B742B2220222C2270616464696E673A3270783B626F726465722D7261646975733A32';
wwv_flow_api.g_varchar2_table(50) := '3070783B636F6C6F723A236666663B6261636B67726F756E643A23323663306433222C225C6E222B652B73297D2C783D66756E6374696F6E2865297B72657475726E20657C7C28653D226865616422292C6E756C6C213D3D742E646F63756D656E745B65';
wwv_flow_api.g_varchar2_table(51) := '5D7C7C286728224E6F7469666C6978222C225C6E4E6F7469666C6978206E6565647320746F20626520617070656E64656420746F20746865205C223C222B652B223E5C2220656C656D656E742C2062757420796F752063616C6C6564206974206265666F';
wwv_flow_api.g_varchar2_table(52) := '726520746865205C223C222B652B223E5C2220656C656D656E7420686173206265656E20637265617465642E22292C2131297D2C753D66756E6374696F6E28297B72657475726E206E756C6C7D2C623D66756E6374696F6E28297B6966286E756C6C213D';
wwv_flow_api.g_varchar2_table(53) := '3D752829262621742E646F63756D656E742E676574456C656D656E744279496428224E6F7469666C6978496E7465726E616C4353532229297B696628217828226865616422292972657475726E21313B76617220653D742E646F63756D656E742E637265';
wwv_flow_api.g_varchar2_table(54) := '617465456C656D656E7428227374796C6522293B652E69643D224E6F7469666C6978496E7465726E616C435353222C652E696E6E657248544D4C3D7528292C742E646F63756D656E742E686561642E617070656E644368696C642865297D7D2C793D6675';
wwv_flow_api.g_varchar2_table(55) := '6E6374696F6E28297B76617220743D7B7D2C653D21312C613D303B225B6F626A65637420426F6F6C65616E5D223D3D3D4F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28617267756D656E74735B305D29262628653D617267';
wwv_flow_api.g_varchar2_table(56) := '756D656E74735B305D2C612B2B293B666F7228766172206E3D66756E6374696F6E2861297B666F7228766172206E20696E2061294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28612C6E29262628745B6E5D';
wwv_flow_api.g_varchar2_table(57) := '3D652626225B6F626A656374204F626A6563745D223D3D3D4F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28615B6E5D293F7928745B6E5D2C615B6E5D293A615B6E5D297D3B613C617267756D656E74732E6C656E6774683B';
wwv_flow_api.g_varchar2_table(58) := '612B2B296E28617267756D656E74735B615D293B72657475726E20747D2C683D66756E6374696F6E2865297B76617220613D742E646F63756D656E742E637265617465456C656D656E74282264697622293B72657475726E20612E696E6E657248544D4C';
wwv_flow_api.g_varchar2_table(59) := '3D652C612E74657874436F6E74656E747C7C612E696E6E6572546578747C7C22227D2C6B3D66756E6374696F6E28652C61297B69662821742E646F63756D656E742E676574456C656D656E744279496428224E6F7469666C6978517569636B73616E6422';
wwv_flow_api.g_varchar2_table(60) := '29262665262622737472696E67223D3D747970656F662061262622717569636B73616E64223D3D3D612E746F4C6F63616C654C6F776572436173652822656E2229297B696628217828226865616422292972657475726E21313B766172206E3D742E646F';
wwv_flow_api.g_varchar2_table(61) := '63756D656E742E63726561746552616E676528293B6E2E73656C6563744E6F646528742E646F63756D656E742E68656164293B76617220693D6E2E637265617465436F6E7465787475616C467261676D656E7428223C6C696E6B2069643D5C224E6F7469';
wwv_flow_api.g_varchar2_table(62) := '666C6978476F6F676C65444E535C222072656C3D5C22646E732D70726566657463685C2220687265663D5C222F2F666F6E74732E676F6F676C65617069732E636F6D5C22202F3E22293B742E646F63756D656E742E686561642E617070656E644368696C';
wwv_flow_api.g_varchar2_table(63) := '642869293B766172206F3D742E646F63756D656E742E63726561746552616E676528293B6F2E73656C6563744E6F646528742E646F63756D656E742E68656164293B76617220733D6F2E637265617465436F6E7465787475616C467261676D656E742822';
wwv_flow_api.g_varchar2_table(64) := '3C6C696E6B2069643D5C224E6F7469666C6978517569636B73616E645C2220687265663D5C2268747470733A2F2F666F6E74732E676F6F676C65617069732E636F6D2F6373733F66616D696C793D517569636B73616E643A3330302C3430302C3530302C';
wwv_flow_api.g_varchar2_table(65) := '37303026616D703B7375627365743D6C6174696E2D6578745C222072656C3D5C227374796C6573686565745C22202F3E22293B742E646F63756D656E742E686561642E617070656E644368696C642873297D7D2C773D66756E6374696F6E28742C65297B';
wwv_flow_api.g_varchar2_table(66) := '747C7C28743D22313130707822292C657C7C28653D222333326336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C222069643D5C224E585265706F7274537563636573';
wwv_flow_api.g_varchar2_table(67) := '735C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C222066696C6C3D5C22222B652B225C222066696C6C2D72756C653D5C226576656E6F64645C2220636C69702D72756C653D5C226576656E6F64645C2220696D6167';
wwv_flow_api.g_varchar2_table(68) := '652D72656E646572696E673D5C226F7074696D697A655175616C6974795C222073686170652D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E5C2220746578742D72656E646572696E673D5C2267656F6D6574726963507265';
wwv_flow_api.g_varchar2_table(69) := '636973696F6E5C222076657273696F6E3D5C22312E315C222076696577426F783D5C2230203020313230203132305C2220786D6C3A73706163653D5C2270726573657276655C223E3C7374796C653E402D7765626B69742D6B65796672616D6573204E58';
wwv_flow_api.g_varchar2_table(70) := '5265706F727453756363657373352D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D35';
wwv_flow_api.g_varchar2_table(71) := '372E377078293B7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D35372E377078297D3530252C746F7B2D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(72) := '726D3A7472616E736C61746528363070782C35372E37707829207363616C6528312C3129207472616E736C617465282D363070782C2D35372E377078293B7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65';
wwv_flow_api.g_varchar2_table(73) := '28312C3129207472616E736C617465282D363070782C2D35372E377078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E39352C2E393529207472616E736C617465';
wwv_flow_api.g_varchar2_table(74) := '282D363070782C2D35372E377078293B7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D35372E377078297D7D406B65796672616D6573';
wwv_flow_api.g_varchar2_table(75) := '204E585265706F727453756363657373352D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E352C2E3529207472616E736C617465282D36307078';
wwv_flow_api.g_varchar2_table(76) := '2C2D35372E377078293B7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D35372E377078297D3530252C746F7B2D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(77) := '73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C6528312C3129207472616E736C617465282D363070782C2D35372E377078293B7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363';
wwv_flow_api.g_varchar2_table(78) := '616C6528312C3129207472616E736C617465282D363070782C2D35372E377078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E39352C2E393529207472616E736C';
wwv_flow_api.g_varchar2_table(79) := '617465282D363070782C2D35372E377078293B7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D35372E377078297D7D402D7765626B69';
wwv_flow_api.g_varchar2_table(80) := '742D6B65796672616D6573204E585265706F727453756363657373362D616E696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D406B65796672616D6573204E585265706F727453756363657373362D616E';
wwv_flow_api.g_varchar2_table(81) := '696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D402D7765626B69742D6B65796672616D6573204E585265706F727453756363657373342D616E696D6174696F6E7B30257B6F7061636974793A307D3430';
wwv_flow_api.g_varchar2_table(82) := '252C746F7B6F7061636974793A317D7D406B65796672616D6573204E585265706F727453756363657373342D616E696D6174696F6E7B30257B6F7061636974793A307D3430252C746F7B6F7061636974793A317D7D402D7765626B69742D6B6579667261';
wwv_flow_api.g_varchar2_table(83) := '6D6573204E585265706F727453756363657373332D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070';
wwv_flow_api.g_varchar2_table(84) := '782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(85) := '3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472';
wwv_flow_api.g_varchar2_table(86) := '616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078';
wwv_flow_api.g_varchar2_table(87) := '293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D406B65796672616D6573204E585265706F727453756363657373332D';
wwv_flow_api.g_varchar2_table(88) := '616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472';
wwv_flow_api.g_varchar2_table(89) := '616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829';
wwv_flow_api.g_varchar2_table(90) := '207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D';
wwv_flow_api.g_varchar2_table(91) := '3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C617465';
wwv_flow_api.g_varchar2_table(92) := '28363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D234E585265706F727453756363657373202A7B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A312E32';
wwv_flow_api.g_varchar2_table(93) := '733B616E696D6174696F6E2D6475726174696F6E3A312E32733B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C312C31293B616E696D6174696F6E2D74696D696E672D66';
wwv_flow_api.g_varchar2_table(94) := '756E6374696F6E3A63756269632D62657A69657228302C302C312C31297D3C2F7374796C653E3C672069643D5C224E585265706F727453756363657373315C223E3C672069643D5C224E585265706F727453756363657373325C223E3C67207374796C65';
wwv_flow_api.g_varchar2_table(95) := '3D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373332D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373332D616E696D6174696F6E3B2D7765626B';
wwv_flow_api.g_varchar2_table(96) := '69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F';
wwv_flow_api.g_varchar2_table(97) := '6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C223E3C7061746820643D5C224D3630203131352E';
wwv_flow_api.g_varchar2_table(98) := '33384332392E3436203131352E333820342E36322039302E353420342E363220363020342E36322032392E34362032392E343620342E363220363020342E36326333302E353420302035352E33382032342E38342035352E33382035352E333820302033';
wwv_flow_api.g_varchar2_table(99) := '302E35342D32342E38342035352E33382D35352E33382035352E33387A4D363020304332362E3932203020302032362E393220302036307332362E39322036302036302036302036302D32362E39322036302D36305339332E3038203020363020307A5C';
wwv_flow_api.g_varchar2_table(100) := '22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373342D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373342D616E696D6174696F';
wwv_flow_api.g_varchar2_table(101) := '6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572';
wwv_flow_api.g_varchar2_table(102) := '282E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C222F3E3C2F673E3C67207374796C65';
wwv_flow_api.g_varchar2_table(103) := '3D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373352D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373352D616E696D6174696F6E3B2D7765626B';
wwv_flow_api.g_varchar2_table(104) := '69742D7472616E73666F726D3A7472616E736C61746528363070782C35372E37707829207363616C6528312C3129207472616E736C617465282D363070782C2D35372E377078293B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E';
wwv_flow_api.g_varchar2_table(105) := '6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C223E3C7061746820643D5C224D38382E';
wwv_flow_api.g_varchar2_table(106) := '32372033352E33394C35322E382037352E32392033312E34332035382E32632D2E39382D2E38312D322E34342D2E36332D332E32342E33362D2E37392E39392D2E363320322E34342E333620332E32346C32332E30382031382E3436632E34332E33342E';
wwv_flow_api.g_varchar2_table(107) := '39332E353120312E34342E35312E3634203020312E32372D2E323620312E37342D2E37386C33362E39312D34312E353361322E3320322E332030203020302D2E31392D332E3236632D2E39352D2E38362D322E34312D2E37372D332E32362E31397A5C22';
wwv_flow_api.g_varchar2_table(108) := '207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373362D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F727453756363657373362D616E696D6174696F6E';
wwv_flow_api.g_varchar2_table(109) := '3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228';
wwv_flow_api.g_varchar2_table(110) := '2E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C222F3E3C2F673E3C2F673E3C2F673E3C';
wwv_flow_api.g_varchar2_table(111) := '2F7376673E223B72657475726E20617D2C763D66756E6374696F6E28742C65297B747C7C28743D22313130707822292C657C7C28653D222366663535343922293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F';
wwv_flow_api.g_varchar2_table(112) := '72672F323030302F7376675C222069643D5C224E585265706F72744661696C7572655C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C222066696C6C3D5C22222B652B225C222066696C6C2D72756C653D5C22657665';
wwv_flow_api.g_varchar2_table(113) := '6E6F64645C2220636C69702D72756C653D5C226576656E6F64645C2220696D6167652D72656E646572696E673D5C226F7074696D697A655175616C6974795C222073686170652D72656E646572696E673D5C2267656F6D6574726963507265636973696F';
wwv_flow_api.g_varchar2_table(114) := '6E5C2220746578742D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E5C222076657273696F6E3D5C22312E315C222076696577426F783D5C2230203020313230203132305C2220786D6C3A73706163653D5C22707265736572';
wwv_flow_api.g_varchar2_table(115) := '76655C223E3C7374796C653E402D7765626B69742D6B65796672616D6573204E585265706F72744661696C757265342D616E696D6174696F6E7B30257B6F7061636974793A307D3430252C746F7B6F7061636974793A317D7D406B65796672616D657320';
wwv_flow_api.g_varchar2_table(116) := '4E585265706F72744661696C757265342D616E696D6174696F6E7B30257B6F7061636974793A307D3430252C746F7B6F7061636974793A317D7D402D7765626B69742D6B65796672616D6573204E585265706F72744661696C757265332D616E696D6174';
wwv_flow_api.g_varchar2_table(117) := '696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C6174';
wwv_flow_api.g_varchar2_table(118) := '6528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65';
wwv_flow_api.g_varchar2_table(119) := '28312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D77';
wwv_flow_api.g_varchar2_table(120) := '65626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C';
wwv_flow_api.g_varchar2_table(121) := '3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D406B65796672616D6573204E585265706F72744661696C757265332D616E696D6174696F6E7B30257B2D7765626B69742D7472616E7366';
wwv_flow_api.g_varchar2_table(122) := '6F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E35';
wwv_flow_api.g_varchar2_table(123) := '2C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D36307078';
wwv_flow_api.g_varchar2_table(124) := '2C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E73';
wwv_flow_api.g_varchar2_table(125) := '6C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E39352920';
wwv_flow_api.g_varchar2_table(126) := '7472616E736C617465282D363070782C2D36307078297D7D402D7765626B69742D6B65796672616D6573204E585265706F72744661696C757265352D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C617465';
wwv_flow_api.g_varchar2_table(127) := '28363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C6174';
wwv_flow_api.g_varchar2_table(128) := '65282D363070782C2D36307078297D3530252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73';
wwv_flow_api.g_varchar2_table(129) := '666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C363070';
wwv_flow_api.g_varchar2_table(130) := '7829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D3630';
wwv_flow_api.g_varchar2_table(131) := '70782C2D36307078297D7D406B65796672616D6573204E585265706F72744661696C757265352D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C';
wwv_flow_api.g_varchar2_table(132) := '2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3530252C746F';
wwv_flow_api.g_varchar2_table(133) := '7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C36';
wwv_flow_api.g_varchar2_table(134) := '30707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E39352920747261';
wwv_flow_api.g_varchar2_table(135) := '6E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D402D7765626B69742D6B';
wwv_flow_api.g_varchar2_table(136) := '65796672616D6573204E585265706F72744661696C757265362D616E696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D406B65796672616D6573204E585265706F72744661696C757265362D616E696D61';
wwv_flow_api.g_varchar2_table(137) := '74696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D234E585265706F72744661696C757265202A7B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A312E32733B616E696D6174696F6E2D647572';
wwv_flow_api.g_varchar2_table(138) := '6174696F6E3A312E32733B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C312C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62';
wwv_flow_api.g_varchar2_table(139) := '657A69657228302C302C312C31297D3C2F7374796C653E3C672069643D5C224E585265706F72744661696C757265315C223E3C672069643D5C224E585265706F72744661696C757265325C223E3C67207374796C653D5C222D7765626B69742D616E696D';
wwv_flow_api.g_varchar2_table(140) := '6174696F6E2D6E616D653A4E585265706F72744661696C757265332D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72744661696C757265332D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D7469';
wwv_flow_api.g_varchar2_table(141) := '6D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B2D7765626B69742D';
wwv_flow_api.g_varchar2_table(142) := '7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078295C223E3C7061746820643D5C224D342E33352033342E393563302D31362E38322031332E';
wwv_flow_api.g_varchar2_table(143) := '37382D33302E362033302E362D33302E366835302E316331362E383220302033302E362031332E37382033302E362033302E367635302E3163302031362E38322D31332E37382033302E362D33302E362033302E36682D35302E31632D31362E38322030';
wwv_flow_api.g_varchar2_table(144) := '2D33302E362D31332E37382D33302E362D33302E36762D35302E317A4D33342E3935203132306835302E316331392E323220302033342E39352D31352E37332033342E39352D33342E3935762D35302E31433132302031352E3733203130342E32372030';
wwv_flow_api.g_varchar2_table(145) := '2038352E30352030682D35302E314331352E3733203020302031352E373320302033342E39357635302E314330203130342E32372031352E3733203132302033342E3935203132307A5C22207374796C653D5C222D7765626B69742D616E696D6174696F';
wwv_flow_api.g_varchar2_table(146) := '6E2D6E616D653A4E585265706F72744661696C757265342D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72744661696C757265342D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E67';
wwv_flow_api.g_varchar2_table(147) := '2D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C222066696C6C3D5C22696E68';
wwv_flow_api.g_varchar2_table(148) := '657269745C2220646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C222F3E3C2F673E3C67207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A';
wwv_flow_api.g_varchar2_table(149) := '4E585265706F72744661696C757265352D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72744661696C757265352D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E637469';
wwv_flow_api.g_varchar2_table(150) := '6F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B2D7765626B69742D7472616E73666F726D3A74';
wwv_flow_api.g_varchar2_table(151) := '72616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078295C223E3C7061746820643D5C224D38322E342033372E36632D2E392D2E392D322E33372D2E392D332E323720304C36';
wwv_flow_api.g_varchar2_table(152) := '302035362E37332034302E38362033372E3661322E33303620322E3330362030203020302D332E323620332E32364C35362E37332036302033372E362037392E3133632D2E392E392D2E3920322E3337203020332E32372E34352E343520312E30342E36';
wwv_flow_api.g_varchar2_table(153) := '3820312E36332E36382E3539203020312E31382D2E323320312E36332D2E36384C36302036332E32362037392E31332038322E34632E34352E343520312E30352E363820312E36342E36382E3538203020312E31382D2E323320312E36332D2E36382E39';
wwv_flow_api.g_varchar2_table(154) := '2D2E392E392D322E333720302D332E32374C36332E32362036302038322E342034302E3836632E392D2E39312E392D322E333620302D332E32367A5C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F72';
wwv_flow_api.g_varchar2_table(155) := '744661696C757265362D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72744661696C757265362D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269';
wwv_flow_api.g_varchar2_table(156) := '632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E';
wwv_flow_api.g_varchar2_table(157) := '696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C222F3E3C2F673E3C2F673E3C2F673E3C2F7376673E223B72657475726E20617D2C4E3D66756E6374696F6E28742C65297B747C7C28743D';
wwv_flow_api.g_varchar2_table(158) := '22313130707822292C657C7C28653D222365656266333122293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C222069643D5C224E585265706F72745761726E696E675C22207769';
wwv_flow_api.g_varchar2_table(159) := '6474683D5C22222B742B225C22206865696768743D5C22222B742B225C222066696C6C3D5C22222B652B225C222066696C6C2D72756C653D5C226576656E6F64645C2220636C69702D72756C653D5C226576656E6F64645C2220696D6167652D72656E64';
wwv_flow_api.g_varchar2_table(160) := '6572696E673D5C226F7074696D697A655175616C6974795C222073686170652D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E5C2220746578742D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E';
wwv_flow_api.g_varchar2_table(161) := '5C222076657273696F6E3D5C22312E315C222076696577426F783D5C2230203020313230203132305C2220786D6C3A73706163653D5C2270726573657276655C223E3C7374796C653E402D7765626B69742D6B65796672616D6573204E585265706F7274';
wwv_flow_api.g_varchar2_table(162) := '5761726E696E67332D616E696D6174696F6E7B30257B6F7061636974793A307D3430252C746F7B6F7061636974793A317D7D406B65796672616D6573204E585265706F72745761726E696E67332D616E696D6174696F6E7B30257B6F7061636974793A30';
wwv_flow_api.g_varchar2_table(163) := '7D3430252C746F7B6F7061636974793A317D7D402D7765626B69742D6B65796672616D6573204E585265706F72745761726E696E67322D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C6174652836307078';
wwv_flow_api.g_varchar2_table(164) := '2C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D3630';
wwv_flow_api.g_varchar2_table(165) := '70782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(166) := '7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363';
wwv_flow_api.g_varchar2_table(167) := '616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36';
wwv_flow_api.g_varchar2_table(168) := '307078297D7D406B65796672616D6573204E585265706F72745761726E696E67322D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E35292074';
wwv_flow_api.g_varchar2_table(169) := '72616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D776562';
wwv_flow_api.g_varchar2_table(170) := '6B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C363070782920';
wwv_flow_api.g_varchar2_table(171) := '7363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C6174';
wwv_flow_api.g_varchar2_table(172) := '65282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D402D7765626B69742D6B6579667261';
wwv_flow_api.g_varchar2_table(173) := '6D6573204E585265706F72745761726E696E67342D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E352C2E3529207472616E736C617465282D36';
wwv_flow_api.g_varchar2_table(174) := '3070782C2D36362E367078293B7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36362E367078297D3530252C746F7B2D7765626B69742D74';
wwv_flow_api.g_varchar2_table(175) := '72616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C6528312C3129207472616E736C617465282D363070782C2D36362E367078293B7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829';
wwv_flow_api.g_varchar2_table(176) := '207363616C6528312C3129207472616E736C617465282D363070782C2D36362E367078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E39352C2E39352920747261';
wwv_flow_api.g_varchar2_table(177) := '6E736C617465282D363070782C2D36362E367078293B7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36362E367078297D7D406B6579';
wwv_flow_api.g_varchar2_table(178) := '6672616D6573204E585265706F72745761726E696E67342D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E352C2E3529207472616E736C617465';
wwv_flow_api.g_varchar2_table(179) := '282D363070782C2D36362E367078293B7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36362E367078297D3530252C746F7B2D7765626B69';
wwv_flow_api.g_varchar2_table(180) := '742D7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C6528312C3129207472616E736C617465282D363070782C2D36362E367078293B7472616E73666F726D3A7472616E736C61746528363070782C36362E36';
wwv_flow_api.g_varchar2_table(181) := '707829207363616C6528312C3129207472616E736C617465282D363070782C2D36362E367078297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E39352C2E39352920';
wwv_flow_api.g_varchar2_table(182) := '7472616E736C617465282D363070782C2D36362E367078293B7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36362E367078297D7D40';
wwv_flow_api.g_varchar2_table(183) := '2D7765626B69742D6B65796672616D6573204E585265706F72745761726E696E67352D616E696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D406B65796672616D6573204E585265706F72745761726E69';
wwv_flow_api.g_varchar2_table(184) := '6E67352D616E696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D234E585265706F72745761726E696E67202A7B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A312E32733B616E696D';
wwv_flow_api.g_varchar2_table(185) := '6174696F6E2D6475726174696F6E3A312E32733B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C312C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F';
wwv_flow_api.g_varchar2_table(186) := '6E3A63756269632D62657A69657228302C302C312C31297D3C2F7374796C653E3C672069643D5C224E585265706F72745761726E696E67315C223E3C67207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F72';
wwv_flow_api.g_varchar2_table(187) := '745761726E696E67322D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72745761726E696E67322D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269';
wwv_flow_api.g_varchar2_table(188) := '632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B2D7765626B69742D7472616E73666F726D3A7472616E736C6174';
wwv_flow_api.g_varchar2_table(189) := '6528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078295C223E3C7061746820643D5C224D3131352E3436203130362E31356C2D35342E30342D39332E38632D2E36312D312E30362D322E3233';
wwv_flow_api.g_varchar2_table(190) := '2D312E30362D322E383420306C2D35342E30342039332E38632D2E363220312E30372E323120322E323920312E343220322E3239683130382E303863312E3231203020322E30342D312E323220312E34322D322E32397A4D36352E31372031302E326C35';
wwv_flow_api.g_varchar2_table(191) := '342E30342039332E3863322E323820332E39362D2E363520382E37382D352E313720382E373848352E3936632D342E353220302D372E34352D342E38322D352E31372D382E37386C35342E30342D39332E3863322E32382D332E393520382E30332D3420';
wwv_flow_api.g_varchar2_table(192) := '31302E333420307A5C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F72745761726E696E67332D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72745761726E696E6733';
wwv_flow_api.g_varchar2_table(193) := '2D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A637562';
wwv_flow_api.g_varchar2_table(194) := '69632D62657A696572282E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C222F3E3C2F67';
wwv_flow_api.g_varchar2_table(195) := '3E3C67207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F72745761726E696E67342D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F72745761726E696E67342D616E696D6174';
wwv_flow_api.g_varchar2_table(196) := '696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69';
wwv_flow_api.g_varchar2_table(197) := '6572282E34322C302C2E35382C31293B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C36362E36707829207363616C6528312C3129207472616E736C617465282D363070782C2D36362E367078295C223E3C70617468';
wwv_flow_api.g_varchar2_table(198) := '20643D5C224D35372E38332039342E3031633020312E322E393720322E313720322E313720322E313773322E31372D2E393720322E31372D322E3137762D332E3263302D312E322D2E39372D322E31372D322E31372D322E3137732D322E31372E39372D';
wwv_flow_api.g_varchar2_table(199) := '322E313720322E313776332E327A6D302D31342E3135633020312E322E393720322E313720322E313720322E313773322E31372D2E393720322E31372D322E31375633392E323163302D312E322D2E39372D322E31372D322E31372D322E3137732D322E';
wwv_flow_api.g_varchar2_table(200) := '31372E39372D322E313720322E31377634302E36357A5C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F72745761726E696E67352D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E58';
wwv_flow_api.g_varchar2_table(201) := '5265706F72745761726E696E67352D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E';
wwv_flow_api.g_varchar2_table(202) := '672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D74';
wwv_flow_api.g_varchar2_table(203) := '7970653D5C22325C222F3E3C2F673E3C2F673E3C2F7376673E223B72657475726E20617D2C433D66756E6374696F6E28742C65297B747C7C28743D22313130707822292C657C7C28653D222332366330643322293B76617220613D223C73766720786D6C';
wwv_flow_api.g_varchar2_table(204) := '6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C222069643D5C224E585265706F7274496E666F5C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C222066696C6C3D5C22222B652B225C';
wwv_flow_api.g_varchar2_table(205) := '222066696C6C2D72756C653D5C226576656E6F64645C2220636C69702D72756C653D5C226576656E6F64645C2220696D6167652D72656E646572696E673D5C226F7074696D697A655175616C6974795C222073686170652D72656E646572696E673D5C22';
wwv_flow_api.g_varchar2_table(206) := '67656F6D6574726963507265636973696F6E5C2220746578742D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E5C222076657273696F6E3D5C22312E315C222076696577426F783D5C2230203020313230203132305C222078';
wwv_flow_api.g_varchar2_table(207) := '6D6C3A73706163653D5C2270726573657276655C223E3C7374796C653E402D7765626B69742D6B65796672616D6573204E585265706F7274496E666F352D616E696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A';
wwv_flow_api.g_varchar2_table(208) := '317D7D406B65796672616D6573204E585265706F7274496E666F352D616E696D6174696F6E7B30257B6F7061636974793A307D3530252C746F7B6F7061636974793A317D7D402D7765626B69742D6B65796672616D6573204E585265706F7274496E666F';
wwv_flow_api.g_varchar2_table(209) := '342D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(210) := '7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3530252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C363070';
wwv_flow_api.g_varchar2_table(211) := '7829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078';
wwv_flow_api.g_varchar2_table(212) := '297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61';
wwv_flow_api.g_varchar2_table(213) := '746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D406B65796672616D6573204E585265706F7274496E666F342D616E696D6174696F6E7B30257B2D7765626B69742D74';
wwv_flow_api.g_varchar2_table(214) := '72616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C363070782920736361';
wwv_flow_api.g_varchar2_table(215) := '6C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3530252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C61746528';
wwv_flow_api.g_varchar2_table(216) := '2D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(217) := '7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C';
wwv_flow_api.g_varchar2_table(218) := '2E393529207472616E736C617465282D363070782C2D36307078297D7D402D7765626B69742D6B65796672616D6573204E585265706F7274496E666F332D616E696D6174696F6E7B30257B6F7061636974793A307D3430252C746F7B6F7061636974793A';
wwv_flow_api.g_varchar2_table(219) := '317D7D406B65796672616D6573204E585265706F7274496E666F332D616E696D6174696F6E7B30257B6F7061636974793A307D3430252C746F7B6F7061636974793A317D7D402D7765626B69742D6B65796672616D6573204E585265706F7274496E666F';
wwv_flow_api.g_varchar2_table(220) := '322D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(221) := '7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C363070';
wwv_flow_api.g_varchar2_table(222) := '7829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078';
wwv_flow_api.g_varchar2_table(223) := '297D3630257B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61';
wwv_flow_api.g_varchar2_table(224) := '746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078297D7D406B65796672616D6573204E585265706F7274496E666F322D616E696D6174696F6E7B30257B2D7765626B69742D74';
wwv_flow_api.g_varchar2_table(225) := '72616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E352C2E3529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C363070782920736361';
wwv_flow_api.g_varchar2_table(226) := '6C65282E352C2E3529207472616E736C617465282D363070782C2D36307078297D3430252C746F7B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C61746528';
wwv_flow_api.g_varchar2_table(227) := '2D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C2D36307078297D3630257B2D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(228) := '7472616E736C61746528363070782C3630707829207363616C65282E39352C2E393529207472616E736C617465282D363070782C2D36307078293B7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C65282E39352C';
wwv_flow_api.g_varchar2_table(229) := '2E393529207472616E736C617465282D363070782C2D36307078297D7D234E585265706F7274496E666F202A7B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A312E32733B616E696D6174696F6E2D6475726174696F6E3A312E3273';
wwv_flow_api.g_varchar2_table(230) := '3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C312C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C';
wwv_flow_api.g_varchar2_table(231) := '312C31297D3C2F7374796C653E3C672069643D5C224E585265706F7274496E666F315C223E3C67207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F7274496E666F322D616E696D6174696F6E3B616E696D61';
wwv_flow_api.g_varchar2_table(232) := '74696F6E2D6E616D653A4E585265706F7274496E666F322D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174';
wwv_flow_api.g_varchar2_table(233) := '696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E';
wwv_flow_api.g_varchar2_table(234) := '736C617465282D363070782C2D36307078295C223E3C7061746820643D5C224D3630203131352E33384332392E3436203131352E333820342E36322039302E353420342E363220363020342E36322032392E34362032392E343620342E36322036302034';
wwv_flow_api.g_varchar2_table(235) := '2E36326333302E353420302035352E33382032342E38342035352E33382035352E333820302033302E35342D32342E38342035352E33382D35352E33382035352E33387A4D363020304332362E3932203020302032362E393220302036307332362E3932';
wwv_flow_api.g_varchar2_table(236) := '2036302036302036302036302D32362E39322036302D36305339332E3038203020363020307A5C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F7274496E666F332D616E696D6174696F6E3B616E696D';
wwv_flow_api.g_varchar2_table(237) := '6174696F6E2D6E616D653A4E585265706F7274496E666F332D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D61';
wwv_flow_api.g_varchar2_table(238) := '74696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D';
wwv_flow_api.g_varchar2_table(239) := '616E696D61746F722D747970653D5C22325C222F3E3C2F673E3C67207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F7274496E666F342D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E58';
wwv_flow_api.g_varchar2_table(240) := '5265706F7274496E666F342D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D696E672D66';
wwv_flow_api.g_varchar2_table(241) := '756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B2D7765626B69742D7472616E73666F726D3A7472616E736C61746528363070782C3630707829207363616C6528312C3129207472616E736C617465282D363070782C';
wwv_flow_api.g_varchar2_table(242) := '2D36307078295C223E3C7061746820643D5C224D35372E37352034332E383563302D312E323420312E30312D322E323520322E32352D322E323573322E323520312E303120322E323520322E32357634382E3138633020312E32342D312E303120322E32';
wwv_flow_api.g_varchar2_table(243) := '352D322E323520322E3235732D322E32352D312E30312D322E32352D322E32355634332E38357A6D302D31352E383863302D312E323420312E30312D322E323520322E32352D322E323573322E323520312E303120322E323520322E323576332E333263';
wwv_flow_api.g_varchar2_table(244) := '3020312E32352D312E303120322E32352D322E323520322E3235732D322E32352D312D322E32352D322E3235762D332E33327A5C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E585265706F7274496E666F352D61';
wwv_flow_api.g_varchar2_table(245) := '6E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E585265706F7274496E666F352D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C30';
wwv_flow_api.g_varchar2_table(246) := '2C2E35382C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31295C222066696C6C3D5C22696E68657269745C2220646174612D616E696D61746F722D67726F75703D5C';
wwv_flow_api.g_varchar2_table(247) := '22747275655C2220646174612D616E696D61746F722D747970653D5C22325C222F3E3C2F673E3C2F673E3C2F7376673E223B72657475726E20617D2C7A3D66756E6374696F6E28742C65297B747C7C28743D223630707822292C657C7C28653D22233332';
wwv_flow_api.g_varchar2_table(248) := '6336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C22207374726F6B653D5C22222B652B225C222077696474683D5C22222B742B225C22206865696768743D5C22222B';
wwv_flow_api.g_varchar2_table(249) := '742B225C22207472616E73666F726D3D5C227363616C65282E38295C222076696577426F783D5C223020302033382033385C223E3C672066696C6C3D5C226E6F6E655C222066696C6C2D72756C653D5C226576656E6F64645C22207374726F6B652D7769';
wwv_flow_api.g_varchar2_table(250) := '6474683D5C22325C22207472616E73666F726D3D5C227472616E736C61746528312031295C223E3C636972636C652063783D5C2231385C222063793D5C2231385C2220723D5C2231385C22207374726F6B652D6F7061636974793D5C222E32355C222F3E';
wwv_flow_api.g_varchar2_table(251) := '3C7061746820643D5C224D333620313863302D392E39342D382E30362D31382D31382D31385C223E3C616E696D6174655472616E73666F726D206174747269627574654E616D653D5C227472616E73666F726D5C22206475723D5C2231735C222066726F';
wwv_flow_api.g_varchar2_table(252) := '6D3D5C22302031382031385C2220726570656174436F756E743D5C22696E646566696E6974655C2220746F3D5C223336302031382031385C2220747970653D5C22726F746174655C222F3E3C2F706174683E3C2F673E3C2F7376673E223B72657475726E';
wwv_flow_api.g_varchar2_table(253) := '20617D2C533D66756E6374696F6E28742C65297B747C7C28743D223630707822292C657C7C28653D222333326336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C2220';
wwv_flow_api.g_varchar2_table(254) := '69643D5C224E584C6F6164696E67486F7572676C6173735C222066696C6C3D5C22222B652B225C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C222066696C6C2D72756C653D5C226576656E6F64645C2220636C6970';
wwv_flow_api.g_varchar2_table(255) := '2D72756C653D5C226576656E6F64645C2220696D6167652D72656E646572696E673D5C226F7074696D697A655175616C6974795C222073686170652D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E5C2220746578742D7265';
wwv_flow_api.g_varchar2_table(256) := '6E646572696E673D5C2267656F6D6574726963507265636973696F6E5C222076657273696F6E3D5C22312E315C222076696577426F783D5C2230203020323030203230305C2220786D6C3A73706163653D5C2270726573657276655C223E3C7374796C65';
wwv_flow_api.g_varchar2_table(257) := '3E402D7765626B69742D6B65796672616D6573204E58686F7572676C617373352D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7363616C6528312C31293B7472616E73666F726D3A7363616C6528312C31297D31362E36';
wwv_flow_api.g_varchar2_table(258) := '37257B2D7765626B69742D7472616E73666F726D3A7363616C6528312C2E38293B7472616E73666F726D3A7363616C6528312C2E38297D33332E3333257B2D7765626B69742D7472616E73666F726D3A7363616C65282E38382C2E36293B7472616E7366';
wwv_flow_api.g_varchar2_table(259) := '6F726D3A7363616C65282E38382C2E36297D33372E35257B2D7765626B69742D7472616E73666F726D3A7363616C65282E38352C2E3535293B7472616E73666F726D3A7363616C65282E38352C2E3535297D34312E3637257B2D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(260) := '6E73666F726D3A7363616C65282E382C2E35293B7472616E73666F726D3A7363616C65282E382C2E35297D34352E3833257B2D7765626B69742D7472616E73666F726D3A7363616C65282E37352C2E3435293B7472616E73666F726D3A7363616C65282E';
wwv_flow_api.g_varchar2_table(261) := '37352C2E3435297D3530257B2D7765626B69742D7472616E73666F726D3A7363616C65282E372C2E34293B7472616E73666F726D3A7363616C65282E372C2E34297D35342E3137257B2D7765626B69742D7472616E73666F726D3A7363616C65282E362C';
wwv_flow_api.g_varchar2_table(262) := '2E3335293B7472616E73666F726D3A7363616C65282E362C2E3335297D35382E3333257B2D7765626B69742D7472616E73666F726D3A7363616C65282E352C2E33293B7472616E73666F726D3A7363616C65282E352C2E33297D38332E3333252C746F7B';
wwv_flow_api.g_varchar2_table(263) := '2D7765626B69742D7472616E73666F726D3A7363616C65282E322C30293B7472616E73666F726D3A7363616C65282E322C30297D7D406B65796672616D6573204E58686F7572676C617373352D616E696D6174696F6E7B30257B2D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(264) := '616E73666F726D3A7363616C6528312C31293B7472616E73666F726D3A7363616C6528312C31297D31362E3637257B2D7765626B69742D7472616E73666F726D3A7363616C6528312C2E38293B7472616E73666F726D3A7363616C6528312C2E38297D33';
wwv_flow_api.g_varchar2_table(265) := '332E3333257B2D7765626B69742D7472616E73666F726D3A7363616C65282E38382C2E36293B7472616E73666F726D3A7363616C65282E38382C2E36297D33372E35257B2D7765626B69742D7472616E73666F726D3A7363616C65282E38352C2E353529';
wwv_flow_api.g_varchar2_table(266) := '3B7472616E73666F726D3A7363616C65282E38352C2E3535297D34312E3637257B2D7765626B69742D7472616E73666F726D3A7363616C65282E382C2E35293B7472616E73666F726D3A7363616C65282E382C2E35297D34352E3833257B2D7765626B69';
wwv_flow_api.g_varchar2_table(267) := '742D7472616E73666F726D3A7363616C65282E37352C2E3435293B7472616E73666F726D3A7363616C65282E37352C2E3435297D3530257B2D7765626B69742D7472616E73666F726D3A7363616C65282E372C2E34293B7472616E73666F726D3A736361';
wwv_flow_api.g_varchar2_table(268) := '6C65282E372C2E34297D35342E3137257B2D7765626B69742D7472616E73666F726D3A7363616C65282E362C2E3335293B7472616E73666F726D3A7363616C65282E362C2E3335297D35382E3333257B2D7765626B69742D7472616E73666F726D3A7363';
wwv_flow_api.g_varchar2_table(269) := '616C65282E352C2E33293B7472616E73666F726D3A7363616C65282E352C2E33297D38332E3333252C746F7B2D7765626B69742D7472616E73666F726D3A7363616C65282E322C30293B7472616E73666F726D3A7363616C65282E322C30297D7D402D77';
wwv_flow_api.g_varchar2_table(270) := '65626B69742D6B65796672616D6573204E58686F7572676C617373332D616E696D6174696F6E7B30257B2D7765626B69742D7472616E73666F726D3A7363616C6528312C2E3032293B7472616E73666F726D3A7363616C6528312C2E3032297D37392E31';
wwv_flow_api.g_varchar2_table(271) := '37252C746F7B2D7765626B69742D7472616E73666F726D3A7363616C6528312C31293B7472616E73666F726D3A7363616C6528312C31297D7D406B65796672616D6573204E58686F7572676C617373332D616E696D6174696F6E7B30257B2D7765626B69';
wwv_flow_api.g_varchar2_table(272) := '742D7472616E73666F726D3A7363616C6528312C2E3032293B7472616E73666F726D3A7363616C6528312C2E3032297D37392E3137252C746F7B2D7765626B69742D7472616E73666F726D3A7363616C6528312C31293B7472616E73666F726D3A736361';
wwv_flow_api.g_varchar2_table(273) := '6C6528312C31297D7D402D7765626B69742D6B65796672616D6573204E58686F7572676C617373312D616E696D6174696F6E7B30252C38332E3333257B2D7765626B69742D7472616E73666F726D3A726F746174652830646567293B7472616E73666F72';
wwv_flow_api.g_varchar2_table(274) := '6D3A726F746174652830646567297D746F7B2D7765626B69742D7472616E73666F726D3A726F7461746528313830646567293B7472616E73666F726D3A726F7461746528313830646567297D7D406B65796672616D6573204E58686F7572676C61737331';
wwv_flow_api.g_varchar2_table(275) := '2D616E696D6174696F6E7B30252C38332E3333257B2D7765626B69742D7472616E73666F726D3A726F746174652830646567293B7472616E73666F726D3A726F746174652830646567297D746F7B2D7765626B69742D7472616E73666F726D3A726F7461';
wwv_flow_api.g_varchar2_table(276) := '746528313830646567293B7472616E73666F726D3A726F7461746528313830646567297D7D234E584C6F6164696E67486F7572676C617373202A7B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A312E32733B616E696D6174696F6E';
wwv_flow_api.g_varchar2_table(277) := '2D6475726174696F6E3A312E32733B2D7765626B69742D616E696D6174696F6E2D697465726174696F6E2D636F756E743A696E66696E6974653B616E696D6174696F6E2D697465726174696F6E2D636F756E743A696E66696E6974653B2D7765626B6974';
wwv_flow_api.g_varchar2_table(278) := '2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C312C31293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302C302C312C31297D3C2F73';
wwv_flow_api.g_varchar2_table(279) := '74796C653E3C6720646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22315C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E58686F757267';
wwv_flow_api.g_varchar2_table(280) := '6C617373312D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E58686F7572676C617373312D616E696D6174696F6E3B2D7765626B69742D7472616E73666F726D2D6F726967696E3A353025203530253B7472616E73666F726D2D6F7269';
wwv_flow_api.g_varchar2_table(281) := '67696E3A353025203530253B7472616E73666F726D2D626F783A66696C6C2D626F785C223E3C672069643D5C224E58686F7572676C617373325C222066696C6C3D5C22696E68657269745C223E3C6720646174612D616E696D61746F722D67726F75703D';
wwv_flow_api.g_varchar2_table(282) := '5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D6E616D653A4E58686F7572676C617373332D616E696D6174696F6E3B616E696D6174696F6E2D6E61';
wwv_flow_api.g_varchar2_table(283) := '6D653A4E58686F7572676C617373332D616E696D6174696F6E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B616E696D6174696F6E2D74696D69';
wwv_flow_api.g_varchar2_table(284) := '6E672D66756E6374696F6E3A63756269632D62657A696572282E34322C302C2E35382C31293B2D7765626B69742D7472616E73666F726D2D6F726967696E3A35302520313030253B7472616E73666F726D2D6F726967696E3A35302520313030253B7472';
wwv_flow_api.g_varchar2_table(285) := '616E73666F726D2D626F783A66696C6C2D626F785C22206F7061636974793D5C222E345C223E3C706174682069643D5C224E58686F7572676C617373345C2220643D5C224D313030203130306C2D33342E33382033322E30387633312E31346836382E37';
wwv_flow_api.g_varchar2_table(286) := '36762D33312E31347A5C222F3E3C2F673E3C6720646174612D616E696D61746F722D67726F75703D5C22747275655C2220646174612D616E696D61746F722D747970653D5C22325C22207374796C653D5C222D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(287) := '6E616D653A4E58686F7572676C617373352D616E696D6174696F6E3B616E696D6174696F6E2D6E616D653A4E58686F7572676C617373352D616E696D6174696F6E3B2D7765626B69742D7472616E73666F726D2D6F726967696E3A35302520313030253B';
wwv_flow_api.g_varchar2_table(288) := '7472616E73666F726D2D6F726967696E3A35302520313030253B7472616E73666F726D2D626F783A66696C6C2D626F785C22206F7061636974793D5C222E345C223E3C706174682069643D5C224E58686F7572676C617373365C2220643D5C224D313030';
wwv_flow_api.g_varchar2_table(289) := '203130304C36352E36322036372E39325633362E37386836382E37367633312E31347A5C222F3E3C2F673E3C7061746820643D5C224D35312E31342033382E383968382E33337631342E393363302031352E3120382E32392032382E39392032332E3334';
wwv_flow_api.g_varchar2_table(290) := '2033392E3120312E383820312E323520332E303420332E393720332E303420372E3038732D312E313620352E38332D332E303420372E3039632D31352E30352031302E312D32332E33342032332E39392D32332E33342033392E30397631342E3933682D';
wwv_flow_api.g_varchar2_table(291) := '382E333361342E38353920342E383539203020312030203020392E37326839372E373261342E38353920342E38353920302031203020302D392E3732682D382E3333762D31342E393363302D31352E312D382E32392D32382E39392D32332E33342D3339';
wwv_flow_api.g_varchar2_table(292) := '2E30392D312E38382D312E32362D332E30342D332E39382D332E30342D372E303973312E31362D352E383320332E30342D372E30386331352E30352D31302E31312032332E33342D32342032332E33342D33392E315633382E383968382E333361342E38';
wwv_flow_api.g_varchar2_table(293) := '353920342E38353920302031203020302D392E37324835312E313461342E38353920342E383539203020312030203020392E37327A6D37392E36372031342E393363302031352E38372D31312E39332032362E32352D31392E30342033312E30332D342E';
wwv_flow_api.g_varchar2_table(294) := '3620332E30382D372E333420382E37352D372E33342031352E3135203020362E343120322E37342031322E303720372E33342031352E313520372E313120342E37382031392E30342031352E31362031392E30342033312E30337631342E39334836392E';
wwv_flow_api.g_varchar2_table(295) := '3139762D31342E393363302D31352E38372031312E39332D32362E32352031392E30342D33312E303220342E362D332E303920372E33342D382E373520372E33342D31352E313620302D362E342D322E37342D31322E30372D372E33342D31352E31352D';
wwv_flow_api.g_varchar2_table(296) := '372E31312D342E37382D31392E30342D31352E31362D31392E30342D33312E30335633382E38396836312E36327631342E39337A5C222F3E3C2F673E3C2F673E3C2F7376673E223B72657475726E20617D2C493D66756E6374696F6E28742C65297B747C';
wwv_flow_api.g_varchar2_table(297) := '7C28743D223630707822292C657C7C28653D222333326336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C222077696474683D5C22222B742B225C2220686569676874';
wwv_flow_api.g_varchar2_table(298) := '3D5C22222B742B225C222076696577426F783D5C2232352032352035302035305C22207374796C653D5C222D7765626B69742D616E696D6174696F6E3A726F74617465203273206C696E65617220696E66696E6974653B616E696D6174696F6E3A726F74';
wwv_flow_api.g_varchar2_table(299) := '617465203273206C696E65617220696E66696E6974653B6865696768743A222B742B223B2D7765626B69742D7472616E73666F726D2D6F726967696E3A63656E7465722063656E7465723B2D6D732D7472616E73666F726D2D6F726967696E3A63656E74';
wwv_flow_api.g_varchar2_table(300) := '65722063656E7465723B7472616E73666F726D2D6F726967696E3A63656E7465722063656E7465723B77696474683A222B742B223B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A303B6D617267696E3A6175746F5C223E3C73';
wwv_flow_api.g_varchar2_table(301) := '74796C653E402D7765626B69742D6B65796672616D657320726F746174657B746F7B2D7765626B69742D7472616E73666F726D3A726F7461746528333630646567293B7472616E73666F726D3A726F7461746528333630646567297D7D406B6579667261';
wwv_flow_api.g_varchar2_table(302) := '6D657320726F746174657B746F7B2D7765626B69742D7472616E73666F726D3A726F7461746528333630646567293B7472616E73666F726D3A726F7461746528333630646567297D7D402D7765626B69742D6B65796672616D657320646173687B30257B';
wwv_flow_api.g_varchar2_table(303) := '7374726F6B652D6461736861727261793A312C3230303B7374726F6B652D646173686F66667365743A307D3530257B7374726F6B652D6461736861727261793A38392C3230303B7374726F6B652D646173686F66667365743A2D33357D746F7B7374726F';
wwv_flow_api.g_varchar2_table(304) := '6B652D6461736861727261793A38392C3230303B7374726F6B652D646173686F66667365743A2D3132347D7D406B65796672616D657320646173687B30257B7374726F6B652D6461736861727261793A312C3230303B7374726F6B652D646173686F6666';
wwv_flow_api.g_varchar2_table(305) := '7365743A307D3530257B7374726F6B652D6461736861727261793A38392C3230303B7374726F6B652D646173686F66667365743A2D33357D746F7B7374726F6B652D6461736861727261793A38392C3230303B7374726F6B652D646173686F6666736574';
wwv_flow_api.g_varchar2_table(306) := '3A2D3132347D7D3C2F7374796C653E3C636972636C652063783D5C2235305C222063793D5C2235305C2220723D5C2232305C222066696C6C3D5C226E6F6E655C22207374726F6B653D5C22222B652B225C22207374726F6B652D77696474683D5C22325C';
wwv_flow_api.g_varchar2_table(307) := '22207374796C653D5C222D7765626B69742D616E696D6174696F6E3A6461736820312E357320656173652D696E2D6F757420696E66696E6974652C636F6C6F7220312E357320656173652D696E2D6F757420696E66696E6974653B616E696D6174696F6E';
wwv_flow_api.g_varchar2_table(308) := '3A6461736820312E357320656173652D696E2D6F757420696E66696E6974652C636F6C6F7220312E357320656173652D696E2D6F757420696E66696E6974655C22207374726F6B652D6461736861727261793D5C22313530203230305C22207374726F6B';
wwv_flow_api.g_varchar2_table(309) := '652D646173686F66667365743D5C222D31305C22207374726F6B652D6C696E656361703D5C22726F756E645C222F3E3C2F7376673E223B72657475726E20617D2C4C3D66756E6374696F6E28742C65297B747C7C28743D223630707822292C657C7C2865';
wwv_flow_api.g_varchar2_table(310) := '3D222333326336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C222066696C6C3D5C22222B652B225C222077696474683D5C22222B742B225C22206865696768743D5C';
wwv_flow_api.g_varchar2_table(311) := '22222B742B225C222076696577426F783D5C2230203020313238203132385C223E3C673E3C706174682066696C6C3D5C22696E68657269745C2220643D5C224D3130392E32352035352E35682D33366C31322D31326132392E35342032392E3534203020';
wwv_flow_api.g_varchar2_table(312) := '3020302D34392E35332031324831382E37354134362E30342034362E30342030203020312039362E392033312E38346C31322E33352D31322E33347633367A6D2D39302E352031376833366C2D31322031326132392E35342032392E3534203020302030';
wwv_flow_api.g_varchar2_table(313) := '2034392E35332D31326831362E39374134362E30342034362E30342030203020312033312E312039362E31364C31382E3734203130382E35762D33367A5C222F3E3C616E696D6174655472616E73666F726D206174747269627574654E616D653D5C2274';
wwv_flow_api.g_varchar2_table(314) := '72616E73666F726D5C22206475723D5C22312E35735C222066726F6D3D5C22302036342036345C2220726570656174436F756E743D5C22696E646566696E6974655C2220746F3D5C223336302036342036345C2220747970653D5C22726F746174655C22';
wwv_flow_api.g_varchar2_table(315) := '2F3E3C2F673E3C2F7376673E223B72657475726E20617D2C4D3D66756E6374696F6E28742C65297B747C7C28743D223630707822292C657C7C28653D222333326336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777';
wwv_flow_api.g_varchar2_table(316) := '772E77332E6F72672F323030302F7376675C222066696C6C3D5C22222B652B225C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C22207072657365727665417370656374526174696F3D5C22784D6964594D69645C22';
wwv_flow_api.g_varchar2_table(317) := '2076696577426F783D5C2230203020313030203130305C223E3C67207472616E73666F726D3D5C227472616E736C617465283235203530295C223E3C636972636C6520723D5C22395C222066696C6C3D5C22696E68657269745C22207472616E73666F72';
wwv_flow_api.g_varchar2_table(318) := '6D3D5C227363616C65282E323339295C223E3C616E696D6174655472616E73666F726D206174747269627574654E616D653D5C227472616E73666F726D5C2220626567696E3D5C222D302E323636735C222063616C634D6F64653D5C2273706C696E655C';
wwv_flow_api.g_varchar2_table(319) := '22206475723D5C22302E38735C22206B657953706C696E65733D5C22302E33203020302E3720313B302E33203020302E3720315C22206B657954696D65733D5C22303B302E353B315C2220726570656174436F756E743D5C22696E646566696E6974655C';
wwv_flow_api.g_varchar2_table(320) := '2220747970653D5C227363616C655C222076616C7565733D5C22303B313B305C222F3E3C2F636972636C653E3C2F673E3C67207472616E73666F726D3D5C227472616E736C617465283530203530295C223E3C636972636C6520723D5C22395C22206669';
wwv_flow_api.g_varchar2_table(321) := '6C6C3D5C22696E68657269745C22207472616E73666F726D3D5C227363616C65282E3030313532295C223E3C616E696D6174655472616E73666F726D206174747269627574654E616D653D5C227472616E73666F726D5C2220626567696E3D5C222D302E';
wwv_flow_api.g_varchar2_table(322) := '313333735C222063616C634D6F64653D5C2273706C696E655C22206475723D5C22302E38735C22206B657953706C696E65733D5C22302E33203020302E3720313B302E33203020302E3720315C22206B657954696D65733D5C22303B302E353B315C2220';
wwv_flow_api.g_varchar2_table(323) := '726570656174436F756E743D5C22696E646566696E6974655C2220747970653D5C227363616C655C222076616C7565733D5C22303B313B305C222F3E3C2F636972636C653E3C2F673E3C67207472616E73666F726D3D5C227472616E736C617465283735';
wwv_flow_api.g_varchar2_table(324) := '203530295C223E3C636972636C6520723D5C22395C222066696C6C3D5C22696E68657269745C22207472616E73666F726D3D5C227363616C65282E323939295C223E3C616E696D6174655472616E73666F726D206174747269627574654E616D653D5C22';
wwv_flow_api.g_varchar2_table(325) := '7472616E73666F726D5C2220626567696E3D5C2230735C222063616C634D6F64653D5C2273706C696E655C22206475723D5C22302E38735C22206B657953706C696E65733D5C22302E33203020302E3720313B302E33203020302E3720315C22206B6579';
wwv_flow_api.g_varchar2_table(326) := '54696D65733D5C22303B302E353B315C2220726570656174436F756E743D5C22696E646566696E6974655C2220747970653D5C227363616C655C222076616C7565733D5C22303B313B305C222F3E3C2F636972636C653E3C2F673E3C2F7376673E223B72';
wwv_flow_api.g_varchar2_table(327) := '657475726E20617D2C413D66756E6374696F6E28742C65297B747C7C28743D223630707822292C657C7C28653D222333326336383222293B76617220613D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F73';
wwv_flow_api.g_varchar2_table(328) := '76675C22207374726F6B653D5C22222B652B225C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C222076696577426F783D5C223020302034342034345C223E3C672066696C6C3D5C226E6F6E655C222066696C6C2D72';
wwv_flow_api.g_varchar2_table(329) := '756C653D5C226576656E6F64645C22207374726F6B652D77696474683D5C22325C223E3C636972636C652063783D5C2232325C222063793D5C2232325C2220723D5C22315C223E3C616E696D617465206174747269627574654E616D653D5C22725C2220';
wwv_flow_api.g_varchar2_table(330) := '626567696E3D5C2230735C222063616C634D6F64653D5C2273706C696E655C22206475723D5C22312E38735C22206B657953706C696E65733D5C22302E3136352C20302E38342C20302E34342C20315C22206B657954696D65733D5C22303B20315C2220';
wwv_flow_api.g_varchar2_table(331) := '726570656174436F756E743D5C22696E646566696E6974655C222076616C7565733D5C22313B2032305C222F3E3C616E696D617465206174747269627574654E616D653D5C227374726F6B652D6F7061636974795C2220626567696E3D5C2230735C2220';
wwv_flow_api.g_varchar2_table(332) := '63616C634D6F64653D5C2273706C696E655C22206475723D5C22312E38735C22206B657953706C696E65733D5C22302E332C20302E36312C20302E3335352C20315C22206B657954696D65733D5C22303B20315C2220726570656174436F756E743D5C22';
wwv_flow_api.g_varchar2_table(333) := '696E646566696E6974655C222076616C7565733D5C22313B20305C222F3E3C2F636972636C653E3C636972636C652063783D5C2232325C222063793D5C2232325C2220723D5C22315C223E3C616E696D617465206174747269627574654E616D653D5C22';
wwv_flow_api.g_varchar2_table(334) := '725C2220626567696E3D5C222D302E39735C222063616C634D6F64653D5C2273706C696E655C22206475723D5C22312E38735C22206B657953706C696E65733D5C22302E3136352C20302E38342C20302E34342C20315C22206B657954696D65733D5C22';
wwv_flow_api.g_varchar2_table(335) := '303B20315C2220726570656174436F756E743D5C22696E646566696E6974655C222076616C7565733D5C22313B2032305C222F3E3C616E696D617465206174747269627574654E616D653D5C227374726F6B652D6F7061636974795C2220626567696E3D';
wwv_flow_api.g_varchar2_table(336) := '5C222D302E39735C222063616C634D6F64653D5C2273706C696E655C22206475723D5C22312E38735C22206B657953706C696E65733D5C22302E332C20302E36312C20302E3335352C20315C22206B657954696D65733D5C22303B20315C222072657065';
wwv_flow_api.g_varchar2_table(337) := '6174436F756E743D5C22696E646566696E6974655C222076616C7565733D5C22313B20305C222F3E3C2F636972636C653E3C2F673E3C2F7376673E223B72657475726E20617D2C583D66756E6374696F6E28742C652C61297B747C7C28743D2236307078';
wwv_flow_api.g_varchar2_table(338) := '22292C657C7C28653D222366386638663822292C617C7C28613D222333326336383222293B766172206E3D223C73766720786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C222069643D5C224E584C6F6164696E67';
wwv_flow_api.g_varchar2_table(339) := '4E6F7469666C69784C69625C222077696474683D5C22222B742B225C22206865696768743D5C22222B742B225C222066696C6C2D72756C653D5C226576656E6F64645C2220636C69702D72756C653D5C226576656E6F64645C2220696D6167652D72656E';
wwv_flow_api.g_varchar2_table(340) := '646572696E673D5C226F7074696D697A655175616C6974795C222073686170652D72656E646572696E673D5C2267656F6D6574726963507265636973696F6E5C2220746578742D72656E646572696E673D5C2267656F6D6574726963507265636973696F';
wwv_flow_api.g_varchar2_table(341) := '6E5C222076657273696F6E3D5C22312E315C222076696577426F783D5C2230203020323030203230305C2220786D6C3A73706163653D5C2270726573657276655C223E3C646566733E3C7374796C653E406B65796672616D6573206E6F7469666C69782D';
wwv_flow_api.g_varchar2_table(342) := '6E7B30257B7374726F6B652D646173686F66667365743A313030307D746F7B7374726F6B652D646173686F66667365743A307D7D406B65796672616D6573206E6F7469666C69782D787B30257B7374726F6B652D646173686F66667365743A313030307D';
wwv_flow_api.g_varchar2_table(343) := '746F7B7374726F6B652D646173686F66667365743A307D7D406B65796672616D6573206E6F7469666C69782D646F747B30252C746F7B7374726F6B652D77696474683A307D3530257B7374726F6B652D77696474683A31327D7D2E6E782D69636F6E2D6C';
wwv_flow_api.g_varchar2_table(344) := '696E657B7374726F6B653A222B652B223B7374726F6B652D77696474683A31323B7374726F6B652D6C696E656361703A726F756E643B7374726F6B652D6C696E656A6F696E3A726F756E643B7374726F6B652D6D697465726C696D69743A32323B66696C';
wwv_flow_api.g_varchar2_table(345) := '6C3A6E6F6E657D3C2F7374796C653E3C2F646566733E3C7061746820643D5C224D34372E3937203133352E303561362E3520362E35203020312031203020313320362E3520362E3520302030203120302D31337A5C22207374796C653D5C22616E696D61';
wwv_flow_api.g_varchar2_table(346) := '74696F6E2D6E616D653A6E6F7469666C69782D646F743B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E2D6F75743B616E696D6174696F6E2D6475726174696F6E3A312E3235733B616E696D6174696F6E2D69746572';
wwv_flow_api.g_varchar2_table(347) := '6174696F6E2D636F756E743A696E66696E6974653B616E696D6174696F6E2D646972656374696F6E3A6E6F726D616C5C222066696C6C3D5C22222B612B225C22207374726F6B653D5C22222B612B225C22207374726F6B652D6C696E656361703D5C2272';
wwv_flow_api.g_varchar2_table(348) := '6F756E645C22207374726F6B652D6C696E656A6F696E3D5C22726F756E645C22207374726F6B652D6D697465726C696D69743D5C2232325C22207374726F6B652D77696474683D5C2231325C222F3E3C7061746820636C6173733D5C226E782D69636F6E';
wwv_flow_api.g_varchar2_table(349) := '2D6C696E655C2220643D5C224D31302E3134203134342E37365638372E353563302D352E36382D342E35342D34312E33362033372E38332D34312E33362034322E333620302033372E38322033352E36382033372E38322034312E33367635372E32315C';
wwv_flow_api.g_varchar2_table(350) := '22207374796C653D5C22616E696D6174696F6E2D6E616D653A6E6F7469666C69782D6E3B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A6C696E6561723B616E696D6174696F6E2D6475726174696F6E3A322E35733B616E696D617469';
wwv_flow_api.g_varchar2_table(351) := '6F6E2D64656C61793A30733B616E696D6174696F6E2D697465726174696F6E2D636F756E743A696E66696E6974653B616E696D6174696F6E2D646972656374696F6E3A6E6F726D616C5C22207374726F6B652D6461736861727261793D5C223530305C22';
wwv_flow_api.g_varchar2_table(352) := '2F3E3C7061746820636C6173733D5C226E782D69636F6E2D6C696E655C2220643D5C224D3131352E3036203134342E34396332342E39382D33322E36382034392E39362D36352E33352037342E39342D39382E30334D3131342E38392034362E36633235';
wwv_flow_api.g_varchar2_table(353) := '2E30392033322E35382035302E31392036352E31372037352E32392039372E37355C22207374796C653D5C22616E696D6174696F6E2D6E616D653A6E6F7469666C69782D783B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A6C696E65';
wwv_flow_api.g_varchar2_table(354) := '61723B616E696D6174696F6E2D6475726174696F6E3A322E35733B616E696D6174696F6E2D64656C61793A2E32733B616E696D6174696F6E2D697465726174696F6E2D636F756E743A696E66696E6974653B616E696D6174696F6E2D646972656374696F';
wwv_flow_api.g_varchar2_table(355) := '6E3A6E6F726D616C5C22207374726F6B652D6461736861727261793D5C223530305C222F3E3C2F7376673E223B72657475726E206E7D2C523D302C423D302C463D66756E6374696F6E28612C6E2C6F2C73297B69662821782822626F6479222929726574';
wwv_flow_api.g_varchar2_table(356) := '75726E21313B657C7C6A2E4E6F746966792E496E6974287B7D293B76617220633D792821302C652C7B7D293B696628226F626A656374223D3D747970656F66206E26262141727261792E69734172726179286E297C7C226F626A656374223D3D74797065';
wwv_flow_api.g_varchar2_table(357) := '6F66206F26262141727261792E69734172726179286F29297B766172206D3D7B7D3B226F626A656374223D3D747970656F66206E3F6D3D6E3A226F626A656374223D3D747970656F66206F2626286D3D6F292C653D792821302C652C6D297D7661722070';
wwv_flow_api.g_varchar2_table(358) := '3D655B732E746F4C6F63616C654C6F776572436173652822656E22295D3B522B2B2C2266756E6374696F6E223D3D747970656F66206E2626422B2B2C22737472696E6722213D747970656F662061262628613D224E6F7469666C697820222B73292C652E';
wwv_flow_api.g_varchar2_table(359) := '706C61696E54657874262628613D68286129292C21652E706C61696E546578742626612E6C656E6774683E652E6D6573736167654D61784C656E677468262628653D792821302C652C7B636C6F7365427574746F6E3A21302C6D6573736167654D61784C';
wwv_flow_api.g_varchar2_table(360) := '656E6774683A3130307D292C613D2248544D4C2054616773204572726F723A20596F757220636F6E74656E74206C656E677468206973206D6F7265207468616E205C226D6573736167654D61784C656E6774685C22206F7074696F6E2E22292C612E6C65';
wwv_flow_api.g_varchar2_table(361) := '6E6774683E652E6D6573736167654D61784C656E677468262628613D612E737562737472696E6728302C652E6D6573736167654D61784C656E677468292B222E2E2E22292C22736861646F77223D3D3D652E666F6E74417765736F6D6549636F6E537479';
wwv_flow_api.g_varchar2_table(362) := '6C65262628702E666F6E74417765736F6D6549636F6E436F6C6F723D702E6261636B67726F756E64292C652E637373416E696D6174696F6E7C7C28652E637373416E696D6174696F6E4475726174696F6E3D30293B76617220643D742E646F63756D656E';
wwv_flow_api.g_varchar2_table(363) := '742E637265617465456C656D656E74282264697622293B642E69643D6C2E7772617049442C642E7374796C652E77696474683D652E77696474682C642E7374796C652E7A496E6465783D652E7A696E6465782C642E7374796C652E6F7061636974793D65';
wwv_flow_api.g_varchar2_table(364) := '2E6F7061636974792C2263656E7465722D63656E746572223D3D3D652E706F736974696F6E3F28642E7374796C652E6C6566743D652E64697374616E63652C642E7374796C652E746F703D652E64697374616E63652C642E7374796C652E72696768743D';
wwv_flow_api.g_varchar2_table(365) := '652E64697374616E63652C642E7374796C652E626F74746F6D3D652E64697374616E63652C642E7374796C652E6D617267696E3D226175746F222C642E636C6173734C6973742E61646428226E782D666C65782D63656E7465722D63656E74657222292C';
wwv_flow_api.g_varchar2_table(366) := '642E7374796C652E6D61784865696768743D2263616C6328283130307668202D20222B652E64697374616E63652B2229202D20222B652E64697374616E63652B2229222C642E7374796C652E646973706C61793D22666C6578222C642E7374796C652E66';
wwv_flow_api.g_varchar2_table(367) := '6C6578577261703D2277726170222C642E7374796C652E666C6578446972656374696F6E3D22636F6C756D6E222C642E7374796C652E6A757374696679436F6E74656E743D2263656E746572222C642E7374796C652E616C69676E4974656D733D226365';
wwv_flow_api.g_varchar2_table(368) := '6E746572222C642E7374796C652E706F696E7465724576656E74733D226E6F6E6522293A2263656E7465722D746F70223D3D3D652E706F736974696F6E3F28642E7374796C652E6C6566743D652E64697374616E63652C642E7374796C652E7269676874';
wwv_flow_api.g_varchar2_table(369) := '3D652E64697374616E63652C642E7374796C652E746F703D652E64697374616E63652C642E7374796C652E626F74746F6D3D226175746F222C642E7374796C652E6D617267696E3D226175746F22293A2263656E7465722D626F74746F6D223D3D3D652E';
wwv_flow_api.g_varchar2_table(370) := '706F736974696F6E3F28642E7374796C652E6C6566743D652E64697374616E63652C642E7374796C652E72696768743D652E64697374616E63652C642E7374796C652E626F74746F6D3D652E64697374616E63652C642E7374796C652E746F703D226175';
wwv_flow_api.g_varchar2_table(371) := '746F222C642E7374796C652E6D617267696E3D226175746F22293A2272696768742D626F74746F6D223D3D3D652E706F736974696F6E3F28642E7374796C652E72696768743D652E64697374616E63652C642E7374796C652E626F74746F6D3D652E6469';
wwv_flow_api.g_varchar2_table(372) := '7374616E63652C642E7374796C652E746F703D226175746F222C642E7374796C652E6C6566743D226175746F22293A226C6566742D746F70223D3D3D652E706F736974696F6E3F28642E7374796C652E6C6566743D652E64697374616E63652C642E7374';
wwv_flow_api.g_varchar2_table(373) := '796C652E746F703D652E64697374616E63652C642E7374796C652E72696768743D226175746F222C642E7374796C652E626F74746F6D3D226175746F22293A226C6566742D626F74746F6D223D3D3D652E706F736974696F6E3F28642E7374796C652E6C';
wwv_flow_api.g_varchar2_table(374) := '6566743D652E64697374616E63652C642E7374796C652E626F74746F6D3D652E64697374616E63652C642E7374796C652E746F703D226175746F222C642E7374796C652E72696768743D226175746F22293A28642E7374796C652E72696768743D652E64';
wwv_flow_api.g_varchar2_table(375) := '697374616E63652C642E7374796C652E746F703D652E64697374616E63652C642E7374796C652E6C6566743D226175746F222C642E7374796C652E626F74746F6D3D226175746F22293B76617220673B652E6261636B4F7665726C6179262628673D742E';
wwv_flow_api.g_varchar2_table(376) := '646F63756D656E742E637265617465456C656D656E74282264697622292C672E69643D652E49442B224F7665726C6179222C672E7374796C652E77696474683D2231303025222C672E7374796C652E6865696768743D2231303025222C672E7374796C65';
wwv_flow_api.g_varchar2_table(377) := '2E706F736974696F6E3D226669786564222C672E7374796C652E7A496E6465783D652E7A696E6465782C672E7374796C652E6C6566743D302C672E7374796C652E746F703D302C672E7374796C652E72696768743D302C672E7374796C652E626F74746F';
wwv_flow_api.g_varchar2_table(378) := '6D3D302C672E7374796C652E6261636B67726F756E643D702E6261636B4F7665726C6179436F6C6F727C7C652E6261636B4F7665726C6179436F6C6F722C672E636C6173734E616D653D652E637373416E696D6174696F6E3F22776974682D616E696D61';
wwv_flow_api.g_varchar2_table(379) := '74696F6E223A22222C672E7374796C652E616E696D6174696F6E4475726174696F6E3D652E637373416E696D6174696F6E3F652E637373416E696D6174696F6E4475726174696F6E2B226D73223A22222C742E646F63756D656E742E676574456C656D65';
wwv_flow_api.g_varchar2_table(380) := '6E744279496428672E6964293F303D3D3D42262628742E646F63756D656E742E676574456C656D656E744279496428672E6964292E7374796C652E6261636B67726F756E643D702E6261636B4F7665726C6179436F6C6F727C7C652E6261636B4F766572';
wwv_flow_api.g_varchar2_table(381) := '6C6179436F6C6F72293A742E646F63756D656E742E626F64792E617070656E644368696C64286729292C742E646F63756D656E742E676574456C656D656E744279496428642E6964297C7C742E646F63756D656E742E626F64792E617070656E64436869';
wwv_flow_api.g_varchar2_table(382) := '6C642864293B76617220663D742E646F63756D656E742E637265617465456C656D656E74282264697622293B662E69643D652E49442B222D222B522C662E636C6173734E616D653D652E636C6173734E616D652B2220222B702E6368696C64436C617373';
wwv_flow_api.g_varchar2_table(383) := '4E616D652B2220222B28652E637373416E696D6174696F6E3F22776974682D616E696D6174696F6E223A2222292B2220222B28652E75736549636F6E3F22776974682D69636F6E223A2222292B22206E782D222B652E637373416E696D6174696F6E5374';
wwv_flow_api.g_varchar2_table(384) := '796C652B2220222B28652E636C6F7365427574746F6E26262266756E6374696F6E22213D747970656F66206E3F22776974682D636C6F73652D627574746F6E223A2222292B2220222B282266756E6374696F6E223D3D747970656F66206E3F2277697468';
wwv_flow_api.g_varchar2_table(385) := '2D63616C6C6261636B223A2222292B2220222B28652E636C69636B546F436C6F73653F22636C69636B2D746F2D636C6F7365223A2222292C662E7374796C652E666F6E7453697A653D652E666F6E7453697A652C662E7374796C652E636F6C6F723D702E';
wwv_flow_api.g_varchar2_table(386) := '74657874436F6C6F722C662E7374796C652E6261636B67726F756E643D702E6261636B67726F756E642C662E7374796C652E626F726465725261646975733D652E626F726465725261646975732C662E7374796C652E706F696E7465724576656E74733D';
wwv_flow_api.g_varchar2_table(387) := '22616C6C222C652E72746C262628662E7365744174747269627574652822646972222C2272746C22292C662E636C6173734C6973742E616464282272746C2D6F6E2229292C662E7374796C652E666F6E7446616D696C793D225C22222B652E666F6E7446';
wwv_flow_api.g_varchar2_table(388) := '616D696C792B225C222C20222B722C652E637373416E696D6174696F6E262628662E7374796C652E616E696D6174696F6E4475726174696F6E3D652E637373416E696D6174696F6E4475726174696F6E2B226D7322293B76617220753D22223B69662865';
wwv_flow_api.g_varchar2_table(389) := '2E636C6F7365427574746F6E26262266756E6374696F6E22213D747970656F66206E262628753D223C7370616E20636C6173733D5C226E6F746966792D636C6F73652D627574746F6E5C223E3C73766720636C6173733D5C22636C636B32636C735C2220';
wwv_flow_api.g_varchar2_table(390) := '786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C2220786D6C3A73706163653D5C2270726573657276655C222077696474683D5C22323070785C22206865696768743D5C22323070785C222076657273696F6E3D5C';
wwv_flow_api.g_varchar2_table(391) := '22312E315C22207374796C653D5C2273686170652D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20746578742D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20696D6167652D72656E646572696E';
wwv_flow_api.g_varchar2_table(392) := '673A6F7074696D697A655175616C6974793B2066696C6C2D72756C653A6576656E6F64643B20636C69702D72756C653A6576656E6F64645C2276696577426F783D5C223020302032302032305C22786D6C6E733A786C696E6B3D5C22687474703A2F2F77';
wwv_flow_api.g_varchar2_table(393) := '77772E77332E6F72672F313939392F786C696E6B5C223E3C646566733E3C7374796C6520747970653D5C22746578742F6373735C223E2E636C69636B32636C6F73657B66696C6C3A222B702E6E6F7469666C697849636F6E436F6C6F722B227D3C2F7374';
wwv_flow_api.g_varchar2_table(394) := '796C653E3C2F646566733E3C673E3C7061746820636C6173733D5C22636C69636B32636C6F73655C2220643D5C224D302E333820322E31396C372E3820372E3831202D372E3820372E3831632D302E35312C302E35202D302E35312C312E3331202D302E';
wwv_flow_api.g_varchar2_table(395) := '30312C312E383120302E32352C302E323520302E35372C302E333820302E39312C302E333820302E33342C3020302E36372C2D302E313420302E39312C2D302E33386C372E3831202D372E383120372E383120372E383163302E32342C302E323420302E';
wwv_flow_api.g_varchar2_table(396) := '35372C302E333820302E39312C302E333820302E33342C3020302E36362C2D302E313420302E392C2D302E333820302E35312C2D302E3520302E35312C2D312E333120302C2D312E38316C2D372E3831202D372E383120372E3831202D372E383163302E';
wwv_flow_api.g_varchar2_table(397) := '35312C2D302E3520302E35312C2D312E333120302C2D312E3832202D302E352C2D302E35202D312E33312C2D302E35202D312E38312C306C2D372E383120372E3831202D372E3831202D372E3831632D302E352C2D302E35202D312E33312C2D302E3520';
wwv_flow_api.g_varchar2_table(398) := '2D312E38312C30202D302E35312C302E3531202D302E35312C312E333220302C312E38327A5C222F3E3C2F673E3C2F7376673E3C2F7370616E3E22292C21652E75736549636F6E29662E696E6E657248544D4C3D223C7370616E20636C6173733D5C2274';
wwv_flow_api.g_varchar2_table(399) := '68652D6D6573736167655C223E222B612B223C2F7370616E3E222B28652E636C6F7365427574746F6E3F753A2222293B656C736520696628652E757365466F6E74417765736F6D6529662E696E6E657248544D4C3D223C69207374796C653D5C22636F6C';
wwv_flow_api.g_varchar2_table(400) := '6F723A222B702E666F6E74417765736F6D6549636F6E436F6C6F722B223B20666F6E742D73697A653A222B652E666F6E74417765736F6D6549636F6E53697A652B223B5C2220636C6173733D5C226E6D692077666120222B702E666F6E74417765736F6D';
wwv_flow_api.g_varchar2_table(401) := '65436C6173734E616D652B2220222B2822736861646F77223D3D3D652E666F6E74417765736F6D6549636F6E5374796C653F22736861646F77223A22626173696322292B225C223E3C2F693E3C7370616E20636C6173733D5C227468652D6D6573736167';
wwv_flow_api.g_varchar2_table(402) := '6520776974682D69636F6E5C223E222B612B223C2F7370616E3E222B28652E636C6F7365427574746F6E3F753A2222293B656C73657B76617220623B623D2253756363657373223D3D3D733F223C73766720636C6173733D5C226E6D695C2220786D6C6E';
wwv_flow_api.g_varchar2_table(403) := '733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C2220786D6C3A73706163653D5C2270726573657276655C222077696474683D5C22343070785C22206865696768743D5C22343070785C222076657273696F6E3D5C22312E31';
wwv_flow_api.g_varchar2_table(404) := '5C22207374796C653D5C2273686170652D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20746578742D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20696D6167652D72656E646572696E673A6F70';
wwv_flow_api.g_varchar2_table(405) := '74696D697A655175616C6974793B2066696C6C2D72756C653A6576656E6F64643B20636C69702D72756C653A6576656E6F64645C2276696577426F783D5C223020302034302034305C22786D6C6E733A786C696E6B3D5C22687474703A2F2F7777772E77';
wwv_flow_api.g_varchar2_table(406) := '332E6F72672F313939392F786C696E6B5C223E3C646566733E3C7374796C6520747970653D5C22746578742F6373735C223E234E6F7469666C69782D49636F6E2D537563636573737B66696C6C3A222B702E6E6F7469666C697849636F6E436F6C6F722B';
wwv_flow_api.g_varchar2_table(407) := '227D3C2F7374796C653E3C2F646566733E3C673E3C706174682069643D5C224E6F7469666C69782D49636F6E2D537563636573735C2220643D5C224D323020306331312E30332C302032302C382E39372032302C323020302C31312E3033202D382E3937';
wwv_flow_api.g_varchar2_table(408) := '2C3230202D32302C3230202D31312E30332C30202D32302C2D382E3937202D32302C2D323020302C2D31312E303320382E39372C2D32302032302C2D32307A6D302033372E393863392E39322C302031372E39382C2D382E30362031372E39382C2D3137';
wwv_flow_api.g_varchar2_table(409) := '2E393820302C2D392E3932202D382E30362C2D31372E3938202D31372E39382C2D31372E3938202D392E39322C30202D31372E39382C382E3036202D31372E39382C31372E393820302C392E393220382E30362C31372E39382031372E39382C31372E39';
wwv_flow_api.g_varchar2_table(410) := '387A6D2D322E34202D31332E32396C31312E3532202D31322E393663302E33372C2D302E343120312E30312C2D302E343520312E34322C2D302E303820302E34322C302E333720302E34362C3120302E30392C312E34326C2D31322E31362031332E3637';
wwv_flow_api.g_varchar2_table(411) := '632D302E31392C302E3232202D302E34362C302E3334202D302E37352C302E3334202D302E32332C30202D302E34352C2D302E3037202D302E36332C2D302E32326C2D372E36202D362E3037632D302E34332C2D302E3335202D302E352C2D302E393920';
wwv_flow_api.g_varchar2_table(412) := '2D302E31362C2D312E343220302E33352C2D302E343320302E39392C2D302E3520312E34322C2D302E31366C362E383520352E34387A5C222F3E3C2F673E3C2F7376673E223A224661696C757265223D3D3D733F223C73766720636C6173733D5C226E6D';
wwv_flow_api.g_varchar2_table(413) := '695C2220786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C2220786D6C3A73706163653D5C2270726573657276655C222077696474683D5C22343070785C22206865696768743D5C22343070785C22207665727369';
wwv_flow_api.g_varchar2_table(414) := '6F6E3D5C22312E315C22207374796C653D5C2273686170652D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20746578742D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20696D6167652D72656E64';
wwv_flow_api.g_varchar2_table(415) := '6572696E673A6F7074696D697A655175616C6974793B2066696C6C2D72756C653A6576656E6F64643B20636C69702D72756C653A6576656E6F64645C2276696577426F783D5C223020302034302034305C22786D6C6E733A786C696E6B3D5C2268747470';
wwv_flow_api.g_varchar2_table(416) := '3A2F2F7777772E77332E6F72672F313939392F786C696E6B5C223E3C646566733E3C7374796C6520747970653D5C22746578742F6373735C223E234E6F7469666C69782D49636F6E2D4661696C7572657B66696C6C3A222B702E6E6F7469666C69784963';
wwv_flow_api.g_varchar2_table(417) := '6F6E436F6C6F722B227D3C2F7374796C653E3C2F646566733E3C673E3C706174682069643D5C224E6F7469666C69782D49636F6E2D4661696C7572655C2220643D5C224D323020306331312E30332C302032302C382E39372032302C323020302C31312E';
wwv_flow_api.g_varchar2_table(418) := '3033202D382E39372C3230202D32302C3230202D31312E30332C30202D32302C2D382E3937202D32302C2D323020302C2D31312E303320382E39372C2D32302032302C2D32307A6D302033372E393863392E39322C302031372E39382C2D382E30362031';
wwv_flow_api.g_varchar2_table(419) := '372E39382C2D31372E393820302C2D392E3932202D382E30362C2D31372E3938202D31372E39382C2D31372E3938202D392E39322C30202D31372E39382C382E3036202D31372E39382C31372E393820302C392E393220382E30362C31372E3938203137';
wwv_flow_api.g_varchar2_table(420) := '2E39382C31372E39387A6D312E3432202D31372E39386C362E313320362E313263302E33392C302E3420302E33392C312E303420302C312E3433202D302E31392C302E3139202D302E34352C302E3239202D302E37312C302E3239202D302E32372C3020';
wwv_flow_api.g_varchar2_table(421) := '2D302E35332C2D302E31202D302E37322C2D302E32396C2D362E3132202D362E3133202D362E313320362E3133632D302E31392C302E3139202D302E34342C302E3239202D302E37312C302E3239202D302E32372C30202D302E35322C2D302E31202D30';
wwv_flow_api.g_varchar2_table(422) := '2E37312C2D302E3239202D302E33392C2D302E3339202D302E33392C2D312E303320302C2D312E34336C362E3133202D362E3132202D362E3133202D362E3133632D302E33392C2D302E3339202D302E33392C2D312E303320302C2D312E343220302E33';
wwv_flow_api.g_varchar2_table(423) := '392C2D302E333920312E30332C2D302E333920312E34322C306C362E313320362E313220362E3132202D362E313263302E342C2D302E333920312E30342C2D302E333920312E34332C3020302E33392C302E333920302E33392C312E303320302C312E34';
wwv_flow_api.g_varchar2_table(424) := '326C2D362E313320362E31337A5C222F3E3C2F673E3C2F7376673E223A225761726E696E67223D3D3D733F223C73766720636C6173733D5C226E6D695C2220786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C2220';
wwv_flow_api.g_varchar2_table(425) := '786D6C3A73706163653D5C2270726573657276655C222077696474683D5C22343070785C22206865696768743D5C22343070785C222076657273696F6E3D5C22312E315C22207374796C653D5C2273686170652D72656E646572696E673A67656F6D6574';
wwv_flow_api.g_varchar2_table(426) := '726963507265636973696F6E3B20746578742D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20696D6167652D72656E646572696E673A6F7074696D697A655175616C6974793B2066696C6C2D72756C653A6576656E6F64643B';
wwv_flow_api.g_varchar2_table(427) := '20636C69702D72756C653A6576656E6F64645C2276696577426F783D5C223020302034302034305C22786D6C6E733A786C696E6B3D5C22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B5C223E3C646566733E3C7374796C652074';
wwv_flow_api.g_varchar2_table(428) := '7970653D5C22746578742F6373735C223E234E6F7469666C69782D49636F6E2D5761726E696E677B66696C6C3A222B702E6E6F7469666C697849636F6E436F6C6F722B227D3C2F7374796C653E3C2F646566733E3C673E3C706174682069643D5C224E6F';
wwv_flow_api.g_varchar2_table(429) := '7469666C69782D49636F6E2D5761726E696E675C2220643D5C224D32312E393120332E34386C31372E382033302E383963302E38342C312E3436202D302E32332C332E3235202D312E39312C332E32356C2D33352E362030632D312E36382C30202D322E';
wwv_flow_api.g_varchar2_table(430) := '37352C2D312E3739202D312E39312C2D332E32356C31372E38202D33302E383963302E38352C2D312E343720322E39372C2D312E343720332E38322C307A6D31362E31352033312E38346C2D31372E38202D33302E3839632D302E31312C2D302E32202D';
wwv_flow_api.g_varchar2_table(431) := '302E34312C2D302E32202D302E35322C306C2D31372E382033302E3839632D302E31322C302E3220302E30352C302E3420302E32362C302E346C33352E36203063302E32312C3020302E33382C2D302E3220302E32362C2D302E347A6D2D31392E303120';
wwv_flow_api.g_varchar2_table(432) := '2D342E31326C30202D312E303563302C2D302E353320302E34322C2D302E393520302E39352C2D302E393520302E35332C3020302E39352C302E343220302E39352C302E39356C3020312E303563302C302E3533202D302E34322C302E3935202D302E39';
wwv_flow_api.g_varchar2_table(433) := '352C302E3935202D302E35332C30202D302E39352C2D302E3432202D302E39352C2D302E39357A6D30202D342E36366C30202D31332E333963302C2D302E353220302E34322C2D302E393520302E39352C2D302E393520302E35332C3020302E39352C30';
wwv_flow_api.g_varchar2_table(434) := '2E343320302E39352C302E39356C302031332E333963302C302E3533202D302E34322C302E3936202D302E39352C302E3936202D302E35332C30202D302E39352C2D302E3433202D302E39352C2D302E39367A5C222F3E3C2F673E3C2F7376673E223A22';
wwv_flow_api.g_varchar2_table(435) := '496E666F223D3D3D733F223C73766720636C6173733D5C226E6D695C2220786D6C6E733D5C22687474703A2F2F7777772E77332E6F72672F323030302F7376675C2220786D6C3A73706163653D5C2270726573657276655C222077696474683D5C223430';
wwv_flow_api.g_varchar2_table(436) := '70785C22206865696768743D5C22343070785C222076657273696F6E3D5C22312E315C22207374796C653D5C2273686170652D72656E646572696E673A67656F6D6574726963507265636973696F6E3B20746578742D72656E646572696E673A67656F6D';
wwv_flow_api.g_varchar2_table(437) := '6574726963507265636973696F6E3B20696D6167652D72656E646572696E673A6F7074696D697A655175616C6974793B2066696C6C2D72756C653A6576656E6F64643B20636C69702D72756C653A6576656E6F64645C2276696577426F783D5C22302030';
wwv_flow_api.g_varchar2_table(438) := '2034302034305C22786D6C6E733A786C696E6B3D5C22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B5C223E3C646566733E3C7374796C6520747970653D5C22746578742F6373735C223E234E6F7469666C69782D49636F6E2D49';
wwv_flow_api.g_varchar2_table(439) := '6E666F7B66696C6C3A222B702E6E6F7469666C697849636F6E436F6C6F722B227D3C2F7374796C653E3C2F646566733E3C673E3C706174682069643D5C224E6F7469666C69782D49636F6E2D496E666F5C2220643D5C224D323020306331312E30332C30';
wwv_flow_api.g_varchar2_table(440) := '2032302C382E39372032302C323020302C31312E3033202D382E39372C3230202D32302C3230202D31312E30332C30202D32302C2D382E3937202D32302C2D323020302C2D31312E303320382E39372C2D32302032302C2D32307A6D302033372E393863';
wwv_flow_api.g_varchar2_table(441) := '392E39322C302031372E39382C2D382E30362031372E39382C2D31372E393820302C2D392E3932202D382E30362C2D31372E3938202D31372E39382C2D31372E3938202D392E39322C30202D31372E39382C382E3036202D31372E39382C31372E393820';
wwv_flow_api.g_varchar2_table(442) := '302C392E393220382E30362C31372E39382031372E39382C31372E39387A6D2D302E3939202D32332E3363302C2D302E353420302E34342C2D302E393820302E39392C2D302E393820302E35352C3020302E39392C302E343420302E39392C302E39386C';
wwv_flow_api.g_varchar2_table(443) := '302031352E383663302C302E3535202D302E34342C302E3939202D302E39392C302E3939202D302E35352C30202D302E39392C2D302E3434202D302E39392C2D302E39396C30202D31352E38367A6D30202D352E323263302C2D302E353520302E34342C';
wwv_flow_api.g_varchar2_table(444) := '2D302E393920302E39392C2D302E393920302E35352C3020302E39392C302E343420302E39392C302E39396C3020312E303963302C302E3534202D302E34342C302E3939202D302E39392C302E3939202D302E35352C30202D302E39392C2D302E343520';
wwv_flow_api.g_varchar2_table(445) := '2D302E39392C2D302E39396C30202D312E30397A5C222F3E3C2F673E3C2F7376673E223A22222C662E696E6E657248544D4C3D622B223C7370616E20636C6173733D5C227468652D6D65737361676520776974682D69636F6E5C223E222B612B223C2F73';
wwv_flow_api.g_varchar2_table(446) := '70616E3E222B28652E636C6F7365427574746F6E3F753A2222297D696628226C6566742D626F74746F6D223D3D3D652E706F736974696F6E7C7C2272696768742D626F74746F6D223D3D3D652E706F736974696F6E297B766172206B3D742E646F63756D';
wwv_flow_api.g_varchar2_table(447) := '656E742E676574456C656D656E744279496428642E6964293B6B2E696E736572744265666F726528662C6B2E66697273744368696C64297D656C736520742E646F63756D656E742E676574456C656D656E744279496428642E6964292E617070656E6443';
wwv_flow_api.g_varchar2_table(448) := '68696C642866293B76617220773D742E646F63756D656E742E676574456C656D656E744279496428662E6964293B69662877297B76617220762C4E3D742E646F63756D656E742E676574456C656D656E744279496428642E6964293B652E6261636B4F76';
wwv_flow_api.g_varchar2_table(449) := '65726C6179262628763D742E646F63756D656E742E676574456C656D656E744279496428672E696429293B76617220432C7A2C533D66756E6374696F6E28297B772E636C6173734C6973742E616464282272656D6F766522292C652E6261636B4F766572';
wwv_flow_api.g_varchar2_table(450) := '6C61792626303E3D4E2E6368696C64456C656D656E74436F756E742626762E636C6173734C6973742E616464282272656D6F766522292C636C65617254696D656F75742843297D2C493D66756E6374696F6E28297B7726266E756C6C213D3D772E706172';
wwv_flow_api.g_varchar2_table(451) := '656E744E6F64652626772E706172656E744E6F64652E72656D6F76654368696C642877292C303E3D4E2E6368696C64456C656D656E74436F756E7426266E756C6C213D3D4E2E706172656E744E6F64652626284E2E706172656E744E6F64652E72656D6F';
wwv_flow_api.g_varchar2_table(452) := '76654368696C64284E292C652E6261636B4F7665726C617926266E756C6C213D3D762E706172656E744E6F64652626762E706172656E744E6F64652E72656D6F76654368696C64287629292C636C65617254696D656F7574287A297D3B696628652E636C';
wwv_flow_api.g_varchar2_table(453) := '6F7365427574746F6E26262266756E6374696F6E22213D747970656F66206E297B766172204C3D742E646F63756D656E742E676574456C656D656E744279496428662E6964292E717565727953656C6563746F72416C6C28227370616E2E6E6F74696679';
wwv_flow_api.g_varchar2_table(454) := '2D636C6F73652D627574746F6E22295B305D3B4C2E6164644576656E744C697374656E65722822636C69636B222C66756E6374696F6E28297B5328293B76617220743D73657454696D656F75742866756E6374696F6E28297B4928292C636C6561725469';
wwv_flow_api.g_varchar2_table(455) := '6D656F75742874297D2C652E637373416E696D6174696F6E4475726174696F6E297D297D696628282266756E6374696F6E223D3D747970656F66206E7C7C652E636C69636B546F436C6F7365292626772E6164644576656E744C697374656E6572282263';
wwv_flow_api.g_varchar2_table(456) := '6C69636B222C66756E6374696F6E28297B2266756E6374696F6E223D3D747970656F66206E262628422D2D2C6E2829292C5328293B76617220743D73657454696D656F75742866756E6374696F6E28297B4928292C636C65617254696D656F7574287429';
wwv_flow_api.g_varchar2_table(457) := '7D2C652E637373416E696D6174696F6E4475726174696F6E297D292C21652E636C6F7365427574746F6E26262266756E6374696F6E22213D747970656F66206E297B766172204D3D66756E6374696F6E28297B433D73657454696D656F75742866756E63';
wwv_flow_api.g_varchar2_table(458) := '74696F6E28297B5328297D2C652E74696D656F7574292C7A3D73657454696D656F75742866756E6374696F6E28297B4928297D2C652E74696D656F75742B652E637373416E696D6174696F6E4475726174696F6E297D3B4D28292C652E70617573654F6E';
wwv_flow_api.g_varchar2_table(459) := '486F766572262628772E6164644576656E744C697374656E657228226D6F757365656E746572222C66756E6374696F6E28297B772E636C6173734C6973742E61646428226E782D70617573656422292C636C65617254696D656F75742843292C636C6561';
wwv_flow_api.g_varchar2_table(460) := '7254696D656F7574287A297D292C772E6164644576656E744C697374656E657228226D6F7573656C65617665222C66756E6374696F6E28297B772E636C6173734C6973742E72656D6F766528226E782D70617573656422292C4D28297D29297D7D696628';
wwv_flow_api.g_varchar2_table(461) := '652E73686F774F6E6C795468654C6173744F6E652626303C5229666F722876617220412C583D742E646F63756D656E742E717565727953656C6563746F72416C6C28225B69645E3D222B652E49442B222D5D3A6E6F74285B69643D222B652E49442B222D';
wwv_flow_api.g_varchar2_table(462) := '222B522B225D2922292C463D303B463C582E6C656E6774683B462B2B29413D585B465D2C6E756C6C213D3D412E706172656E744E6F64652626412E706172656E744E6F64652E72656D6F76654368696C642841293B653D792821302C652C63297D2C453D';
wwv_flow_api.g_varchar2_table(463) := '66756E6374696F6E28652C6E2C692C6F2C732C6C297B69662821782822626F647922292972657475726E21313B617C7C6A2E5265706F72742E496E6974287B7D293B766172206D3D7B7D3B696628226F626A656374223D3D747970656F66206F26262141';
wwv_flow_api.g_varchar2_table(464) := '727261792E69734172726179286F297C7C226F626A656374223D3D747970656F66207326262141727261792E69734172726179287329297B76617220703D7B7D3B226F626A656374223D3D747970656F66206F3F703D6F3A226F626A656374223D3D7479';
wwv_flow_api.g_varchar2_table(465) := '70656F662073262628703D73292C6D3D792821302C612C7B7D292C613D792821302C612C70297D76617220643D615B6C2E746F4C6F63616C654C6F776572436173652822656E22295D3B22737472696E6722213D747970656F662065262628653D224E6F';
wwv_flow_api.g_varchar2_table(466) := '7469666C697820222B6C292C22737472696E6722213D747970656F66206E2626282253756363657373223D3D3D6C3F6E3D225C22446F206E6F742074727920746F206265636F6D65206120706572736F6E206F6620737563636573732062757420747279';
wwv_flow_api.g_varchar2_table(467) := '20746F206265636F6D65206120706572736F6E206F662076616C75652E5C22203C62723E3C62723E2D20416C626572742045696E737465696E223A224661696C757265223D3D3D6C3F6E3D225C224661696C7572652069732073696D706C792074686520';
wwv_flow_api.g_varchar2_table(468) := '6F70706F7274756E69747920746F20626567696E20616761696E2C20746869732074696D65206D6F726520696E74656C6C6967656E746C792E5C22203C62723E3C62723E2D2048656E727920466F7264223A225761726E696E67223D3D3D6C3F6E3D225C';
wwv_flow_api.g_varchar2_table(469) := '225468652070656F706C65732077686F2077616E7420746F206C69766520636F6D666F727461626C7920776974686F75742070726F647563696E6720616E6420666174696775653B20746865792061726520646F6F6D656420746F206C6F736520746865';
wwv_flow_api.g_varchar2_table(470) := '6972206469676E6974792C207468656E206C6962657274792C20616E64207468656E20696E646570656E64656E636520616E642064657374696E792E5C22203C62723E3C62723E2D204D757374616661204B656D616C204174617475726B223A22496E66';
wwv_flow_api.g_varchar2_table(471) := '6F223D3D6C2626286E3D225C224B6E6F776C65646765207265737473206E6F742075706F6E20747275746820616C6F6E652C206275742075706F6E206572726F7220616C736F2E5C22203C62723E3C62723E2D204361726C20477573746176204A756E67';
wwv_flow_api.g_varchar2_table(472) := '2229292C22737472696E6722213D747970656F662069262628693D224F6B617922292C612E706C61696E54657874262628653D682865292C6E3D68286E292C693D68286929292C612E706C61696E546578747C7C28652E6C656E6774683E612E7469746C';
wwv_flow_api.g_varchar2_table(473) := '654D61784C656E677468262628653D2248544D4C2054616773204572726F72222C6E3D22596F7572205469746C6520636F6E74656E74206C656E677468206973206D6F7265207468616E205C227469746C654D61784C656E6774685C22206F7074696F6E';
wwv_flow_api.g_varchar2_table(474) := '2E222C693D224F6B617922292C6E2E6C656E6774683E612E6D6573736167654D61784C656E677468262628653D2248544D4C2054616773204572726F72222C6E3D22596F7572204D65737361676520636F6E74656E74206C656E677468206973206D6F72';
wwv_flow_api.g_varchar2_table(475) := '65207468616E205C226D6573736167654D61784C656E6774685C22206F7074696F6E2E222C693D224F6B617922292C692E6C656E6774683E612E627574746F6E4D61784C656E677468262628653D2248544D4C2054616773204572726F72222C6E3D2259';
wwv_flow_api.g_varchar2_table(476) := '6F757220427574746F6E20636F6E74656E74206C656E677468206973206D6F7265207468616E205C22627574746F6E4D61784C656E6774685C22206F7074696F6E2E222C693D224F6B61792229292C652E6C656E6774683E612E7469746C654D61784C65';
wwv_flow_api.g_varchar2_table(477) := '6E677468262628653D652E737562737472696E6728302C612E7469746C654D61784C656E677468292B222E2E2E22292C6E2E6C656E6774683E612E6D6573736167654D61784C656E6774682626286E3D6E2E737562737472696E6728302C612E6D657373';
wwv_flow_api.g_varchar2_table(478) := '6167654D61784C656E677468292B222E2E2E22292C692E6C656E6774683E612E627574746F6E4D61784C656E677468262628693D692E737562737472696E6728302C612E627574746F6E4D61784C656E677468292B222E2E2E22292C612E637373416E69';
wwv_flow_api.g_varchar2_table(479) := '6D6174696F6E7C7C28612E637373416E696D6174696F6E4475726174696F6E3D30293B76617220673D742E646F63756D656E742E637265617465456C656D656E74282264697622293B672E69643D632E49442C672E636C6173734E616D653D612E636C61';
wwv_flow_api.g_varchar2_table(480) := '73734E616D652C672E7374796C652E7A496E6465783D612E7A696E6465782C672E7374796C652E626F726465725261646975733D612E626F726465725261646975732C672E7374796C652E666F6E7446616D696C793D225C22222B612E666F6E7446616D';
wwv_flow_api.g_varchar2_table(481) := '696C792B225C222C20222B722C612E72746C262628672E7365744174747269627574652822646972222C2272746C22292C672E636C6173734C6973742E616464282272746C2D6F6E2229292C672E7374796C652E646973706C61793D22666C6578222C67';
wwv_flow_api.g_varchar2_table(482) := '2E7374796C652E666C6578577261703D2277726170222C672E7374796C652E666C6578446972656374696F6E3D22636F6C756D6E222C672E7374796C652E616C69676E4974656D733D2263656E746572222C672E7374796C652E6A757374696679436F6E';
wwv_flow_api.g_varchar2_table(483) := '74656E743D2263656E746572223B76617220663D22223B612E6261636B4F7665726C6179262628663D223C64697620636C6173733D5C22222B612E636C6173734E616D652B222D6F7665726C6179222B28612E637373416E696D6174696F6E3F22207769';
wwv_flow_api.g_varchar2_table(484) := '74682D616E696D6174696F6E223A2222292B225C22207374796C653D5C226261636B67726F756E643A222B28642E6261636B4F7665726C6179436F6C6F727C7C612E6261636B4F7665726C6179436F6C6F72292B223B616E696D6174696F6E2D64757261';
wwv_flow_api.g_varchar2_table(485) := '74696F6E3A222B612E637373416E696D6174696F6E4475726174696F6E2B226D733B5C223E3C2F6469763E22293B76617220753D22223B6966282253756363657373223D3D3D6C3F753D7728612E73766753697A652C642E737667436F6C6F72293A2246';
wwv_flow_api.g_varchar2_table(486) := '61696C757265223D3D3D6C3F753D7628612E73766753697A652C642E737667436F6C6F72293A225761726E696E67223D3D3D6C3F753D4E28612E73766753697A652C642E737667436F6C6F72293A22496E666F223D3D6C262628753D4328612E73766753';
wwv_flow_api.g_varchar2_table(487) := '697A652C642E737667436F6C6F7229292C672E696E6E657248544D4C3D662B223C64697620636C6173733D5C22222B612E636C6173734E616D652B222D636F6E74656E74222B28612E637373416E696D6174696F6E3F2220776974682D616E696D617469';
wwv_flow_api.g_varchar2_table(488) := '6F6E20223A2222292B22206E782D222B612E637373416E696D6174696F6E5374796C652B225C22207374796C653D5C2277696474683A222B612E77696474682B223B206261636B67726F756E643A222B612E6261636B67726F756E64436F6C6F722B223B';
wwv_flow_api.g_varchar2_table(489) := '20616E696D6174696F6E2D6475726174696F6E3A222B612E637373416E696D6174696F6E4475726174696F6E2B226D733B5C223E3C646976207374796C653D5C2277696474683A222B612E73766753697A652B223B206865696768743A222B612E737667';
wwv_flow_api.g_varchar2_table(490) := '53697A652B223B5C2220636C6173733D5C22222B612E636C6173734E616D652B222D69636F6E5C223E222B752B223C2F6469763E3C683520636C6173733D5C22222B612E636C6173734E616D652B222D7469746C655C22207374796C653D5C22666F6E74';
wwv_flow_api.g_varchar2_table(491) := '2D7765696768743A3530303B20666F6E742D73697A653A222B612E7469746C65466F6E7453697A652B223B20636F6C6F723A222B642E7469746C65436F6C6F722B223B5C223E222B652B223C2F68353E3C7020636C6173733D5C22222B612E636C617373';
wwv_flow_api.g_varchar2_table(492) := '4E616D652B222D6D6573736167655C22207374796C653D5C22666F6E742D73697A653A222B612E6D657373616765466F6E7453697A652B223B20636F6C6F723A222B642E6D657373616765436F6C6F722B223B5C223E222B6E2B223C2F703E3C61206964';
wwv_flow_api.g_varchar2_table(493) := '3D5C224E585265706F7274427574746F6E5C2220636C6173733D5C22222B612E636C6173734E616D652B222D627574746F6E5C22207374796C653D5C22666F6E742D7765696768743A3530303B20666F6E742D73697A653A222B612E627574746F6E466F';
wwv_flow_api.g_varchar2_table(494) := '6E7453697A652B223B206261636B67726F756E643A222B642E627574746F6E4261636B67726F756E642B223B20636F6C6F723A222B642E627574746F6E436F6C6F722B223B5C223E222B692B223C2F613E3C2F6469763E222C21742E646F63756D656E74';
wwv_flow_api.g_varchar2_table(495) := '2E676574456C656D656E744279496428672E696429297B742E646F63756D656E742E626F64792E617070656E644368696C642867293B76617220623D742E646F63756D656E742E676574456C656D656E744279496428672E6964292C6B3D742E646F6375';
wwv_flow_api.g_varchar2_table(496) := '6D656E742E676574456C656D656E744279496428224E585265706F7274427574746F6E22293B6B2E6164644576656E744C697374656E65722822636C69636B222C66756E6374696F6E28297B2266756E6374696F6E223D3D747970656F66206F26266F28';
wwv_flow_api.g_varchar2_table(497) := '292C622E636C6173734C6973742E616464282272656D6F766522293B76617220743D73657454696D656F75742866756E6374696F6E28297B6E756C6C213D3D622E706172656E744E6F64652626622E706172656E744E6F64652E72656D6F76654368696C';
wwv_flow_api.g_varchar2_table(498) := '642862292C636C65617254696D656F75742874297D2C612E637373416E696D6174696F6E4475726174696F6E297D297D613D792821302C612C6D297D2C443D66756E6374696F6E28652C612C692C6F2C732C6C2C632C702C64297B69662821782822626F';
wwv_flow_api.g_varchar2_table(499) := '647922292972657475726E21313B6E7C7C6A2E436F6E6669726D2E496E6974287B7D293B76617220673D792821302C6E2C7B7D293B226F626A65637422213D747970656F6620637C7C41727261792E697341727261792863297C7C286E3D792821302C6E';
wwv_flow_api.g_varchar2_table(500) := '2C6329292C22737472696E6722213D747970656F662065262628653D224E6F7469666C697820436F6E6669726D22292C22737472696E6722213D747970656F662061262628613D22446F20796F752061677265652077697468206D653F22292C22737472';
wwv_flow_api.g_varchar2_table(501) := '696E6722213D747970656F662069262628693D2259657322292C22737472696E6722213D747970656F66206F2626286F3D224E6F22292C2266756E6374696F6E22213D747970656F662073262628733D766F69642030292C2266756E6374696F6E22213D';
wwv_flow_api.g_varchar2_table(502) := '747970656F66206C2626286C3D766F69642030292C6E2E706C61696E54657874262628653D682865292C613D682861292C693D682869292C6F3D68286F29292C6E2E706C61696E546578747C7C28652E6C656E6774683E6E2E7469746C654D61784C656E';
wwv_flow_api.g_varchar2_table(503) := '677468262628653D2248544D4C2054616773204572726F72222C613D22596F7572205469746C6520636F6E74656E74206C656E677468206973206D6F7265207468616E205C227469746C654D61784C656E6774685C22206F7074696F6E2E222C693D224F';
wwv_flow_api.g_varchar2_table(504) := '6B6179222C6F3D222E2E2E22292C612E6C656E6774683E6E2E6D6573736167654D61784C656E677468262628653D2248544D4C2054616773204572726F72222C613D22596F7572204D65737361676520636F6E74656E74206C656E677468206973206D6F';
wwv_flow_api.g_varchar2_table(505) := '7265207468616E205C226D6573736167654D61784C656E6774685C22206F7074696F6E2E222C693D224F6B6179222C6F3D222E2E2E22292C28692E6C656E6774687C7C6F2E6C656E677468293E6E2E627574746F6E734D61784C656E677468262628653D';
wwv_flow_api.g_varchar2_table(506) := '2248544D4C2054616773204572726F72222C613D22596F757220427574746F6E7320636F6E74656E7473206C656E677468206973206D6F7265207468616E205C22627574746F6E734D61784C656E6774685C22206F7074696F6E2E222C693D224F6B6179';
wwv_flow_api.g_varchar2_table(507) := '222C6F3D222E2E2E2229292C652E6C656E6774683E6E2E7469746C654D61784C656E677468262628653D652E737562737472696E6728302C6E2E7469746C654D61784C656E677468292B222E2E2E22292C612E6C656E6774683E6E2E6D6573736167654D';
wwv_flow_api.g_varchar2_table(508) := '61784C656E677468262628613D612E737562737472696E6728302C6E2E6D6573736167654D61784C656E677468292B222E2E2E22292C692E6C656E6774683E6E2E627574746F6E734D61784C656E677468262628693D692E737562737472696E6728302C';
wwv_flow_api.g_varchar2_table(509) := '6E2E627574746F6E734D61784C656E677468292B222E2E2E22292C6F2E6C656E6774683E6E2E627574746F6E734D61784C656E6774682626286F3D6F2E737562737472696E6728302C6E2E627574746F6E734D61784C656E677468292B222E2E2E22292C';
wwv_flow_api.g_varchar2_table(510) := '6E2E637373416E696D6174696F6E7C7C286E2E637373416E696D6174696F6E4475726174696F6E3D30293B76617220663D742E646F63756D656E742E637265617465456C656D656E74282264697622293B662E69643D6D2E49442C662E636C6173734E61';
wwv_flow_api.g_varchar2_table(511) := '6D653D6E2E636C6173734E616D652B286E2E637373416E696D6174696F6E3F2220776974682D616E696D6174696F6E206E782D222B6E2E637373416E696D6174696F6E5374796C653A2222292C662E7374796C652E7A496E6465783D6E2E7A696E646578';
wwv_flow_api.g_varchar2_table(512) := '2C662E7374796C652E70616464696E673D6E2E64697374616E63652C6E2E72746C262628662E7365744174747269627574652822646972222C2272746C22292C662E636C6173734C6973742E616464282272746C2D6F6E2229293B76617220753D227374';
wwv_flow_api.g_varchar2_table(513) := '72696E67223D3D747970656F66206E2E706F736974696F6E3F6E2E706F736974696F6E2E7472696D28293A2263656E746572223B662E636C6173734C6973742E61646428226E782D706F736974696F6E2D222B75292C662E7374796C652E666F6E744661';
wwv_flow_api.g_varchar2_table(514) := '6D696C793D225C22222B6E2E666F6E7446616D696C792B225C222C20222B723B76617220623D22223B6E2E6261636B4F7665726C6179262628623D223C64697620636C6173733D5C22222B6E2E636C6173734E616D652B222D6F7665726C6179222B286E';
wwv_flow_api.g_varchar2_table(515) := '2E637373416E696D6174696F6E3F2220776974682D616E696D6174696F6E223A2222292B225C22207374796C653D5C226261636B67726F756E643A222B6E2E6261636B4F7665726C6179436F6C6F722B223B616E696D6174696F6E2D6475726174696F6E';
wwv_flow_api.g_varchar2_table(516) := '3A222B6E2E637373416E696D6174696F6E4475726174696F6E2B226D733B5C223E3C2F6469763E22293B766172206B3D22223B2266756E6374696F6E223D3D747970656F6620732626286B3D223C612069643D5C224E58436F6E6669726D427574746F6E';
wwv_flow_api.g_varchar2_table(517) := '43616E63656C5C2220636C6173733D5C22636F6E6669726D2D627574746F6E2D63616E63656C5C22207374796C653D5C22636F6C6F723A222B6E2E63616E63656C427574746F6E436F6C6F722B223B6261636B67726F756E643A222B6E2E63616E63656C';
wwv_flow_api.g_varchar2_table(518) := '427574746F6E4261636B67726F756E642B223B666F6E742D73697A653A222B6E2E627574746F6E73466F6E7453697A652B223B5C223E222B6F2B223C2F613E22293B76617220773D22222C763D21313B69662870262622737472696E67223D3D74797065';
wwv_flow_api.g_varchar2_table(519) := '6F6620642626303C642E6C656E677468262628763D642C773D223C6469763E3C696E7075742069643D5C224E58436F6E6669726D56616C69646174696F6E496E7075745C2220747970653D5C22746578745C22207374796C653D5C22666F6E742D73697A';
wwv_flow_api.g_varchar2_table(520) := '653A222B6E2E6D657373616765466F6E7453697A652B223B626F726465722D7261646975733A20222B6E2E626F726465725261646975732B223B5C22206D61786C656E6774683D5C22222B642E6C656E6774682B225C22206175746F636F6D706C657465';
wwv_flow_api.g_varchar2_table(521) := '3D5C226F66665C22207370656C6C636865636B3D5C2266616C73655C22206175746F6361706974616C697A653D5C226E6F6E655C22202F3E3C2F6469763E22292C662E696E6E657248544D4C3D622B223C64697620636C6173733D5C22222B6E2E636C61';
wwv_flow_api.g_varchar2_table(522) := '73734E616D652B222D636F6E74656E745C22207374796C653D5C2277696474683A222B6E2E77696474682B223B206261636B67726F756E643A222B6E2E6261636B67726F756E64436F6C6F722B223B20616E696D6174696F6E2D6475726174696F6E3A22';
wwv_flow_api.g_varchar2_table(523) := '2B6E2E637373416E696D6174696F6E4475726174696F6E2B226D733B20626F726465722D7261646975733A20222B6E2E626F726465725261646975732B223B5C223E3C64697620636C6173733D5C22222B6E2E636C6173734E616D652B222D686561645C';
wwv_flow_api.g_varchar2_table(524) := '223E3C6835207374796C653D5C22636F6C6F723A222B6E2E7469746C65436F6C6F722B223B666F6E742D73697A653A222B6E2E7469746C65466F6E7453697A652B223B5C223E222B652B223C2F68353E3C646976207374796C653D5C22636F6C6F723A22';
wwv_flow_api.g_varchar2_table(525) := '2B6E2E6D657373616765436F6C6F722B223B666F6E742D73697A653A222B6E2E6D657373616765466F6E7453697A652B223B5C223E222B612B772B223C2F6469763E3C2F6469763E3C64697620636C6173733D5C22222B6E2E636C6173734E616D652B22';
wwv_flow_api.g_varchar2_table(526) := '2D627574746F6E735C223E3C612069643D5C224E58436F6E6669726D427574746F6E4F6B5C2220636C6173733D5C22636F6E6669726D2D627574746F6E2D6F6B222B282266756E6374696F6E223D3D747970656F6620733F22223A222066756C6C22292B';
wwv_flow_api.g_varchar2_table(527) := '225C22207374796C653D5C22636F6C6F723A222B6E2E6F6B427574746F6E436F6C6F722B223B6261636B67726F756E643A222B6E2E6F6B427574746F6E4261636B67726F756E642B223B666F6E742D73697A653A222B6E2E627574746F6E73466F6E7453';
wwv_flow_api.g_varchar2_table(528) := '697A652B223B5C223E222B692B223C2F613E222B6B2B223C2F6469763E3C2F6469763E222C21742E646F63756D656E742E676574456C656D656E744279496428662E696429297B742E646F63756D656E742E626F64792E617070656E644368696C642866';
wwv_flow_api.g_varchar2_table(529) := '293B766172204E3D742E646F63756D656E742E676574456C656D656E744279496428662E6964292C433D742E646F63756D656E742E676574456C656D656E744279496428224E58436F6E6669726D427574746F6E4F6B22292C7A3D742E646F63756D656E';
wwv_flow_api.g_varchar2_table(530) := '742E676574456C656D656E744279496428224E58436F6E6669726D56616C69646174696F6E496E70757422293B6966287A2626287A2E666F63757328292C7A2E6164644576656E744C697374656E657228226B65797570222C66756E6374696F6E287429';
wwv_flow_api.g_varchar2_table(531) := '7B76617220653D28742E7461726765742E76616C75657C7C2222292E746F537472696E6728293B69662865213D3D76297A2E636C6173734C6973742E61646428226E782D76616C69646174696F6E2D6661696C75726522292C7A2E636C6173734C697374';
wwv_flow_api.g_varchar2_table(532) := '2E72656D6F766528226E782D76616C69646174696F6E2D7375636365737322293B656C73657B7A2E636C6173734C6973742E72656D6F766528226E782D76616C69646174696F6E2D6661696C75726522292C7A2E636C6173734C6973742E61646428226E';
wwv_flow_api.g_varchar2_table(533) := '782D76616C69646174696F6E2D7375636365737322293B76617220613D22656E746572223D3D3D28742E6B65797C7C2222292E746F4C6F63616C654C6F776572436173652822656E22297C7C31333D3D3D742E6B6579436F64653B612626432E64697370';
wwv_flow_api.g_varchar2_table(534) := '617463684576656E74286E6577204576656E742822636C69636B2229297D7D29292C432E6164644576656E744C697374656E65722822636C69636B222C66756E6374696F6E2874297B6966287026267626267A297B76617220653D287A2E76616C75657C';
wwv_flow_api.g_varchar2_table(535) := '7C2222292E746F537472696E6728293B69662865213D3D762972657475726E207A2E666F63757328292C7A2E636C6173734C6973742E61646428226E782D76616C69646174696F6E2D6661696C75726522292C742E73746F7050726F7061676174696F6E';
wwv_flow_api.g_varchar2_table(536) := '28292C742E70726576656E7444656661756C7428292C742E72657475726E56616C75653D21312C742E63616E63656C427562626C653D21302C21313B7A2E636C6173734C6973742E72656D6F766528226E782D76616C69646174696F6E2D6661696C7572';
wwv_flow_api.g_varchar2_table(537) := '6522297D2266756E6374696F6E223D3D747970656F66207326267328292C4E2E636C6173734C6973742E616464282272656D6F766522293B76617220613D73657454696D656F75742866756E6374696F6E28297B6E756C6C213D3D4E2E706172656E744E';
wwv_flow_api.g_varchar2_table(538) := '6F64652626284E2E706172656E744E6F64652E72656D6F76654368696C64284E292C636C65617254696D656F7574286129297D2C6E2E637373416E696D6174696F6E4475726174696F6E297D292C2266756E6374696F6E223D3D747970656F662073297B';
wwv_flow_api.g_varchar2_table(539) := '76617220533D742E646F63756D656E742E676574456C656D656E744279496428224E58436F6E6669726D427574746F6E43616E63656C22293B532E6164644576656E744C697374656E65722822636C69636B222C66756E6374696F6E28297B2266756E63';
wwv_flow_api.g_varchar2_table(540) := '74696F6E223D3D747970656F66206C26266C28292C4E2E636C6173734C6973742E616464282272656D6F766522293B76617220743D73657454696D656F75742866756E6374696F6E28297B6E756C6C213D3D4E2E706172656E744E6F64652626284E2E70';
wwv_flow_api.g_varchar2_table(541) := '6172656E744E6F64652E72656D6F76654368696C64284E292C636C65617254696D656F7574287429297D2C6E2E637373416E696D6174696F6E4475726174696F6E297D297D7D6E3D792821302C6E2C67297D2C543D66756E6374696F6E28652C612C6E2C';
wwv_flow_api.g_varchar2_table(542) := '6F2C73297B69662821782822626F647922292972657475726E21313B697C7C6A2E4C6F6164696E672E496E6974287B7D293B766172206C3D792821302C692C7B7D293B696628226F626A656374223D3D747970656F66206526262141727261792E697341';
wwv_flow_api.g_varchar2_table(543) := '727261792865297C7C226F626A656374223D3D747970656F66206126262141727261792E69734172726179286129297B76617220633D7B7D3B226F626A656374223D3D747970656F6620653F633D653A226F626A656374223D3D747970656F6620612626';
wwv_flow_api.g_varchar2_table(544) := '28633D61292C693D792821302C692C63297D766172206D3D22223B69662822737472696E67223D3D747970656F6620652626303C652E6C656E6774682626286D3D65292C6F297B6D3D6D2E746F537472696E6728292E6C656E6774683E692E6D65737361';
wwv_flow_api.g_varchar2_table(545) := '67654D61784C656E6774683F68286D292E746F537472696E6728292E737562737472696E6728302C692E6D6573736167654D61784C656E677468292B222E2E2E223A68286D292E746F537472696E6728293B76617220643D22223B303C6D2E6C656E6774';
wwv_flow_api.g_varchar2_table(546) := '68262628643D223C702069643D5C22222B692E6D65737361676549442B225C2220636C6173733D5C226C6F6164696E672D6D6573736167655C22207374796C653D5C22636F6C6F723A222B692E6D657373616765436F6C6F722B223B666F6E742D73697A';
wwv_flow_api.g_varchar2_table(547) := '653A222B692E6D657373616765466F6E7453697A652B223B5C223E222B6D2B223C2F703E22292C692E637373416E696D6174696F6E7C7C28692E637373416E696D6174696F6E4475726174696F6E3D30293B76617220663D22223B696628227374616E64';
wwv_flow_api.g_varchar2_table(548) := '617264223D3D3D6E29663D7A28692E73766753697A652C692E737667436F6C6F72293B656C73652069662822686F7572676C617373223D3D3D6E29663D5328692E73766753697A652C692E737667436F6C6F72293B656C73652069662822636972636C65';
wwv_flow_api.g_varchar2_table(549) := '223D3D3D6E29663D4928692E73766753697A652C692E737667436F6C6F72293B656C736520696628226172726F7773223D3D3D6E29663D4C28692E73766753697A652C692E737667436F6C6F72293B656C73652069662822646F7473223D3D3D6E29663D';
wwv_flow_api.g_varchar2_table(550) := '4D28692E73766753697A652C692E737667436F6C6F72293B656C7365206966282270756C7365223D3D3D6E29663D4128692E73766753697A652C692E737667436F6C6F72293B656C73652069662822637573746F6D223D3D3D6E26266E756C6C213D3D69';
wwv_flow_api.g_varchar2_table(551) := '2E637573746F6D53766755726C29663D223C696D6720636C6173733D5C22637573746F6D2D6C6F6164696E672D69636F6E5C222077696474683D5C22222B692E73766753697A652B225C22206865696768743D5C22222B692E73766753697A652B225C22';
wwv_flow_api.g_varchar2_table(552) := '207372633D5C22222B692E637573746F6D53766755726C2B225C2220616C743D5C224E6F7469666C69785C223E223B656C73657B69662822637573746F6D223D3D3D6E26266E756C6C3D3D692E637573746F6D53766755726C2972657475726E20672822';
wwv_flow_api.g_varchar2_table(553) := '4E6F7469666C6978204572726F72222C22596F75206861766520746F20736574206120737461746963205356472075726C20746F205C22637573746F6D53766755726C5C22206F7074696F6E20746F20757365204C6F6164696E6720437573746F6D2E22';
wwv_flow_api.g_varchar2_table(554) := '292C21313B226E6F7469666C6978223D3D3D6E262628663D5828692E73766753697A652C2223663866386638222C22233332633638322229297D76617220753D7061727365496E742828692E73766753697A657C7C2222292E7265706C616365282F5B5E';
wwv_flow_api.g_varchar2_table(555) := '302D395D2F672C222229292C623D742E696E6E657257696474682C6B3D753E3D623F622D34302B227078223A752B227078222C773D223C646976207374796C653D5C2277696474683A222B6B2B223B206865696768743A222B6B2B223B5C2220636C6173';
wwv_flow_api.g_varchar2_table(556) := '733D5C22222B692E636C6173734E616D652B222D69636F6E222B28303C6D2E6C656E6774683F2220776974682D6D657373616765223A2222292B225C223E222B662B223C2F6469763E222C763D742E646F63756D656E742E637265617465456C656D656E';
wwv_flow_api.g_varchar2_table(557) := '74282264697622293B696628762E69643D702E49442C762E636C6173734E616D653D692E636C6173734E616D652B28692E637373416E696D6174696F6E3F2220776974682D616E696D6174696F6E223A2222292B28692E636C69636B546F436C6F73653F';
wwv_flow_api.g_varchar2_table(558) := '2220636C69636B2D746F2D636C6F7365223A2222292C762E7374796C652E7A496E6465783D692E7A696E6465782C762E7374796C652E6261636B67726F756E643D692E6261636B67726F756E64436F6C6F722C762E7374796C652E616E696D6174696F6E';
wwv_flow_api.g_varchar2_table(559) := '4475726174696F6E3D692E637373416E696D6174696F6E4475726174696F6E2B226D73222C762E7374796C652E666F6E7446616D696C793D225C22222B692E666F6E7446616D696C792B225C222C20222B722C762E7374796C652E646973706C61793D22';
wwv_flow_api.g_varchar2_table(560) := '666C6578222C762E7374796C652E666C6578577261703D2277726170222C762E7374796C652E666C6578446972656374696F6E3D22636F6C756D6E222C762E7374796C652E616C69676E4974656D733D2263656E746572222C762E7374796C652E6A7573';
wwv_flow_api.g_varchar2_table(561) := '74696679436F6E74656E743D2263656E746572222C692E72746C262628762E7365744174747269627574652822646972222C2272746C22292C762E636C6173734C6973742E616464282272746C2D6F6E2229292C762E696E6E657248544D4C3D772B642C';
wwv_flow_api.g_varchar2_table(562) := '21742E646F63756D656E742E676574456C656D656E744279496428762E696429262628742E646F63756D656E742E626F64792E617070656E644368696C642876292C692E636C69636B546F436C6F736529297B766172204E3D742E646F63756D656E742E';
wwv_flow_api.g_varchar2_table(563) := '676574456C656D656E744279496428762E6964293B4E2E6164644576656E744C697374656E65722822636C69636B222C66756E6374696F6E28297B762E636C6173734C6973742E616464282272656D6F766522293B76617220743D73657454696D656F75';
wwv_flow_api.g_varchar2_table(564) := '742866756E6374696F6E28297B6E756C6C213D3D762E706172656E744E6F6465262628762E706172656E744E6F64652E72656D6F76654368696C642876292C636C65617254696D656F7574287429297D2C692E637373416E696D6174696F6E4475726174';
wwv_flow_api.g_varchar2_table(565) := '696F6E297D297D7D656C736520696628742E646F63756D656E742E676574456C656D656E744279496428702E4944292976617220433D742E646F63756D656E742E676574456C656D656E744279496428702E4944292C523D73657454696D656F75742866';
wwv_flow_api.g_varchar2_table(566) := '756E6374696F6E28297B432E636C6173734C6973742E616464282272656D6F766522293B76617220743D73657454696D656F75742866756E6374696F6E28297B6E756C6C213D3D432E706172656E744E6F6465262628432E706172656E744E6F64652E72';
wwv_flow_api.g_varchar2_table(567) := '656D6F76654368696C642843292C636C65617254696D656F7574287429297D2C692E637373416E696D6174696F6E4475726174696F6E293B636C65617254696D656F75742852297D2C73293B693D792821302C692C6C297D2C4F3D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(568) := '65297B22737472696E6722213D747970656F662065262628653D2222293B76617220613D742E646F63756D656E742E676574456C656D656E744279496428702E4944293B6966286129696628303C652E6C656E677468297B653D652E6C656E6774683E69';
wwv_flow_api.g_varchar2_table(569) := '2E6D6573736167654D61784C656E6774683F682865292E737562737472696E6728302C692E6D6573736167654D61784C656E677468292B222E2E2E223A682865293B766172206E3D612E676574456C656D656E747342795461674E616D6528227022295B';
wwv_flow_api.g_varchar2_table(570) := '305D3B6966286E296E2E696E6E657248544D4C3D653B656C73657B766172206F3D742E646F63756D656E742E637265617465456C656D656E7428227022293B6F2E69643D692E6D65737361676549442C6F2E636C6173734E616D653D226C6F6164696E67';
wwv_flow_api.g_varchar2_table(571) := '2D6D657373616765206E65772D6C6F6164696E672D6D657373616765222C6F2E7374796C652E636F6C6F723D692E6D657373616765436F6C6F722C6F2E7374796C652E666F6E7453697A653D692E6D657373616765466F6E7453697A652C6F2E696E6E65';
wwv_flow_api.g_varchar2_table(572) := '7248544D4C3D652C612E617070656E644368696C64286F297D7D656C7365206728224E6F7469666C6978204572726F72222C22576865726520697320746865206E6577206D6573736167653F22297D2C573D302C483D66756E6374696F6E28652C612C6E';
wwv_flow_api.g_varchar2_table(573) := '2C732C6C2C63297B766172206D3D22737472696E6722213D747970656F6620617C7C313E28617C7C2222292E6C656E6774687C7C313D3D3D28617C7C2222292E6C656E6774682626282223223D3D3D28617C7C2222295B305D7C7C222E223D3D3D28617C';
wwv_flow_api.g_varchar2_table(574) := '7C2222295B305D293B6966286D2972657475726E206728224E6F7469666C6978204572726F72222C225468652073656C6563746F7220706172616D65746572206D757374206265206120537472696E6720616E64206D6174636865732061207370656369';
wwv_flow_api.g_varchar2_table(575) := '66696564204353532073656C6563746F722873292E22292C21313B76617220703D742E646F63756D656E742E717565727953656C6563746F72416C6C2861293B696628313E702E6C656E6774682972657475726E206728224E6F7469666C697820457272';
wwv_flow_api.g_varchar2_table(576) := '6F72222C22596F752063616C6C656420746865205C224E6F7469666C69782E426C6F636B2E2E2E5C222066756E6374696F6E2077697468205C22222B612B225C222073656C6563746F722C20627574207468657265206973206E6F207375636820656C65';
wwv_flow_api.g_varchar2_table(577) := '6D656E7428732920696E2074686520646F63756D656E742E22292C21313B6F7C7C6A2E426C6F636B2E496E6974287B7D293B76617220753D792821302C6F2C7B7D293B696628226F626A656374223D3D747970656F66207326262141727261792E697341';
wwv_flow_api.g_varchar2_table(578) := '727261792873297C7C226F626A656374223D3D747970656F66206C26262141727261792E69734172726179286C29297B76617220623D7B7D3B226F626A656374223D3D747970656F6620733F623D733A226F626A656374223D3D747970656F66206C2626';
wwv_flow_api.g_varchar2_table(579) := '28623D6C292C6F3D792821302C6F2C62297D766172206B3D22223B22737472696E67223D3D747970656F6620732626303C732E6C656E6774682626286B3D73292C6F2E637373416E696D6174696F6E7C7C286F2E637373416E696D6174696F6E44757261';
wwv_flow_api.g_varchar2_table(580) := '74696F6E3D30293B76617220773D226E6F7469666C69782D626C6F636B223B22737472696E67223D3D747970656F66206F2E636C6173734E616D65262628773D6F2E636C6173734E616D652E7472696D2829293B76617220763D226E756D626572223D3D';
wwv_flow_api.g_varchar2_table(581) := '747970656F66206F2E717565727953656C6563746F724C696D69743F6F2E717565727953656C6563746F724C696D69743A3230302C4E3D702E6C656E6774683E3D763F763A702E6C656E6774683B6966286529666F722876617220433D303B433C4E3B43';
wwv_flow_api.g_varchar2_table(582) := '2B2B297B76617220583D705B435D2C523D582E717565727953656C6563746F72416C6C28225B69645E3D222B642E49442B225D22293B696628313E522E6C656E677468297B76617220423D22223B6E26262822686F7572676C617373223D3D3D6E3F423D';
wwv_flow_api.g_varchar2_table(583) := '53286F2E73766753697A652C6F2E737667436F6C6F72293A22636972636C65223D3D3D6E3F423D49286F2E73766753697A652C6F2E737667436F6C6F72293A226172726F7773223D3D3D6E3F423D4C286F2E73766753697A652C6F2E737667436F6C6F72';
wwv_flow_api.g_varchar2_table(584) := '293A22646F7473223D3D3D6E3F423D4D286F2E73766753697A652C6F2E737667436F6C6F72293A2270756C7365223D3D3D6E3F423D41286F2E73766753697A652C6F2E737667436F6C6F72293A423D7A286F2E73766753697A652C6F2E737667436F6C6F';
wwv_flow_api.g_varchar2_table(585) := '7229293B76617220463D223C7370616E20636C6173733D5C22222B772B222D69636F6E5C22207374796C653D5C2277696474683A222B6F2E73766753697A652B223B6865696768743A222B6F2E73766753697A652B223B5C223E222B422B223C2F737061';
wwv_flow_api.g_varchar2_table(586) := '6E3E222C453D22223B303C6B2E6C656E6774682626286B3D6B2E6C656E6774683E6F2E6D6573736167654D61784C656E6774683F68286B292E737562737472696E6728302C6F2E6D6573736167654D61784C656E677468292B222E2E2E223A68286B292C';
wwv_flow_api.g_varchar2_table(587) := '453D223C7370616E207374796C653D5C22666F6E742D73697A653A222B6F2E6D657373616765466F6E7453697A652B223B636F6C6F723A222B6F2E6D657373616765436F6C6F722B223B5C2220636C6173733D5C22222B772B222D6D6573736167655C22';
wwv_flow_api.g_varchar2_table(588) := '3E222B6B2B223C2F7370616E3E22292C572B2B3B76617220443D742E646F63756D656E742E637265617465456C656D656E74282264697622293B442E69643D642E49442B222D222B572C442E636C6173734E616D653D772B222D77726170222B286F2E63';
wwv_flow_api.g_varchar2_table(589) := '7373416E696D6174696F6E3F2220776974682D616E696D6174696F6E223A2222292C442E7374796C652E706F736974696F6E3D6F2E706F736974696F6E2C442E7374796C652E7A496E6465783D6F2E7A696E6465782C442E7374796C652E6261636B6772';
wwv_flow_api.g_varchar2_table(590) := '6F756E643D6F2E6261636B67726F756E64436F6C6F722C442E7374796C652E616E696D6174696F6E4475726174696F6E3D6F2E637373416E696D6174696F6E4475726174696F6E2B226D73222C442E7374796C652E666F6E7446616D696C793D225C2222';
wwv_flow_api.g_varchar2_table(591) := '2B6F2E666F6E7446616D696C792B225C222C20222B722C442E7374796C652E646973706C61793D22666C6578222C442E7374796C652E666C6578577261703D2277726170222C442E7374796C652E666C6578446972656374696F6E3D22636F6C756D6E22';
wwv_flow_api.g_varchar2_table(592) := '2C442E7374796C652E616C69676E4974656D733D2263656E746572222C442E7374796C652E6A757374696679436F6E74656E743D2263656E746572222C6F2E72746C262628442E7365744174747269627574652822646972222C2272746C22292C442E63';
wwv_flow_api.g_varchar2_table(593) := '6C6173734C6973742E616464282272746C2D6F6E2229292C442E696E6E657248544D4C3D462B453B76617220543D742E676574436F6D70757465645374796C652858292E67657450726F706572747956616C75652822706F736974696F6E22292C4F3D22';
wwv_flow_api.g_varchar2_table(594) := '737472696E67223D3D747970656F6620543F542E746F4C6F63616C654C6F776572436173652822656E22293A2272656C6174697665222C483D4D6174682E726F756E6428312E32352A7061727365496E74286F2E73766753697A6529292B34302C503D58';
wwv_flow_api.g_varchar2_table(595) := '2E6F66667365744865696768747C7C302C513D22223B483E50262628513D226D696E2D6865696768743A222B482B2270783B22293B76617220593D22223B593D582E6765744174747269627574652822696422293F2223222B582E676574417474726962';
wwv_flow_api.g_varchar2_table(596) := '7574652822696422293A582E636C6173734C6973745B305D3F222E222B582E636C6173734C6973745B305D3A28582E7461674E616D657C7C2222292E746F4C6F63616C654C6F776572436173652822656E22293B76617220473D22222C563D2D313E3D5B';
wwv_flow_api.g_varchar2_table(597) := '226162736F6C757465222C2272656C6174697665222C226669786564222C22737469636B79225D2E696E6465784F66284F293B696628567C7C303C512E6C656E677468297B696628217828226865616422292972657475726E21313B56262628473D2270';
wwv_flow_api.g_varchar2_table(598) := '6F736974696F6E3A72656C617469766521696D706F7274616E743B22293B76617220713D223C7374796C652069643D5C225374796C652D222B642E49442B222D222B572B225C223E222B592B222E222B772B222D706F736974696F6E7B222B472B512B22';
wwv_flow_api.g_varchar2_table(599) := '7D3C2F7374796C653E222C553D742E646F63756D656E742E63726561746552616E676528293B552E73656C6563744E6F646528742E646F63756D656E742E68656164293B766172204B3D552E637265617465436F6E7465787475616C467261676D656E74';
wwv_flow_api.g_varchar2_table(600) := '2871293B742E646F63756D656E742E686561642E617070656E644368696C64284B292C582E636C6173734C6973742E61646428772B222D706F736974696F6E22297D582E617070656E644368696C642844297D7D656C736520766172204A3D66756E6374';
wwv_flow_api.g_varchar2_table(601) := '696F6E2865297B76617220613D73657454696D656F75742866756E6374696F6E28297B6E756C6C213D3D652E706172656E744E6F64652626652E706172656E744E6F64652E72656D6F76654368696C642865293B766172206E3D652E6765744174747269';
wwv_flow_api.g_varchar2_table(602) := '627574652822696422292C693D742E646F63756D656E742E676574456C656D656E744279496428225374796C652D222B6E293B6926266E756C6C213D3D692E706172656E744E6F64652626692E706172656E744E6F64652E72656D6F76654368696C6428';
wwv_flow_api.g_varchar2_table(603) := '69292C636C65617254696D656F75742861297D2C6F2E637373416E696D6174696F6E4475726174696F6E297D2C5A3D66756E6374696F6E2874297B696628742626303C742E6C656E67746829666F722876617220652C6E3D303B6E3C742E6C656E677468';
wwv_flow_api.g_varchar2_table(604) := '3B6E2B2B29653D745B6E5D2C65262628652E636C6173734C6973742E616464282272656D6F766522292C4A286529293B656C7365206628224E6F7469666C697820496E666F222C225C224E6F7469666C69782E426C6F636B2E52656D6F766528293B5C22';
wwv_flow_api.g_varchar2_table(605) := '2066756E6374696F6E2063616C6C65642077697468205C22222B612B225C222073656C6563746F722C2062757420746869732073656C6563746F7220646F6573206E6F7420686176652061205C224E6F7469666C69782E426C6F636B2E2E2E5C2220656C';
wwv_flow_api.g_varchar2_table(606) := '656D656E7420746F2072656D6F76652E22297D2C243D66756E6374696F6E2874297B76617220653D73657454696D656F75742866756E6374696F6E28297B76617220613D772B222D706F736974696F6E223B742E636C6173734C6973742E72656D6F7665';
wwv_flow_api.g_varchar2_table(607) := '2861292C636C65617254696D656F75742865297D2C6F2E637373416E696D6174696F6E4475726174696F6E2B333030297D2C5F3D73657454696D656F75742866756E6374696F6E28297B666F722876617220742C653D303B653C4E3B652B2B29743D705B';
wwv_flow_api.g_varchar2_table(608) := '655D2C242874292C523D742E717565727953656C6563746F72416C6C28225B69645E3D222B642E49442B225D22292C5A2852293B636C65617254696D656F7574285F297D2C63293B6F3D792821302C6F2C75297D2C6A3D7B4E6F746966793A7B496E6974';
wwv_flow_api.g_varchar2_table(609) := '3A66756E6374696F6E2874297B653D792821302C6C2C74292C6B28652E757365476F6F676C65466F6E742C652E666F6E7446616D696C79292C6228297D2C4D657267653A66756E6374696F6E2874297B72657475726E20653F766F696428653D79282130';
wwv_flow_api.g_varchar2_table(610) := '2C652C7429293A286728224E6F7469666C6978204572726F72222C22596F75206861766520746F20696E697469616C697A6520746865204E6F74696679206D6F64756C65206265666F72652063616C6C204D657267652066756E6374696F6E2E22292C21';
wwv_flow_api.g_varchar2_table(611) := '31297D2C537563636573733A66756E6374696F6E28742C652C61297B4628742C652C612C225375636365737322297D2C4661696C7572653A66756E6374696F6E28742C652C61297B4628742C652C612C224661696C75726522297D2C5761726E696E673A';
wwv_flow_api.g_varchar2_table(612) := '66756E6374696F6E28742C652C61297B4628742C652C612C225761726E696E6722297D2C496E666F3A66756E6374696F6E28742C652C61297B4628742C652C612C22496E666F22297D7D2C5265706F72743A7B496E69743A66756E6374696F6E2874297B';
wwv_flow_api.g_varchar2_table(613) := '613D792821302C632C74292C6B28612E757365476F6F676C65466F6E742C612E666F6E7446616D696C79292C6228297D2C4D657267653A66756E6374696F6E2874297B72657475726E20613F766F696428613D792821302C612C7429293A286728224E6F';
wwv_flow_api.g_varchar2_table(614) := '7469666C6978204572726F72222C22596F75206861766520746F20696E697469616C697A6520746865205265706F7274206D6F64756C65206265666F72652063616C6C204D657267652066756E6374696F6E2E22292C2131297D2C537563636573733A66';
wwv_flow_api.g_varchar2_table(615) := '756E6374696F6E28742C652C612C6E2C69297B4528742C652C612C6E2C692C225375636365737322297D2C4661696C7572653A66756E6374696F6E28742C652C612C6E2C69297B4528742C652C612C6E2C692C224661696C75726522297D2C5761726E69';
wwv_flow_api.g_varchar2_table(616) := '6E673A66756E6374696F6E28742C652C612C6E2C69297B4528742C652C612C6E2C692C225761726E696E6722297D2C496E666F3A66756E6374696F6E28742C652C612C6E2C69297B4528742C652C612C6E2C692C22496E666F22297D7D2C436F6E666972';
wwv_flow_api.g_varchar2_table(617) := '6D3A7B496E69743A66756E6374696F6E2874297B6E3D792821302C6D2C74292C6B286E2E757365476F6F676C65466F6E742C6E2E666F6E7446616D696C79292C6228297D2C4D657267653A66756E6374696F6E2874297B72657475726E206E3F766F6964';
wwv_flow_api.g_varchar2_table(618) := '286E3D792821302C6E2C7429293A286728224E6F7469666C6978204572726F72222C22596F75206861766520746F20696E697469616C697A652074686520436F6E6669726D206D6F64756C65206265666F72652063616C6C204D657267652066756E6374';
wwv_flow_api.g_varchar2_table(619) := '696F6E2E22292C2131297D2C53686F773A66756E6374696F6E28742C652C612C6E2C692C6F2C73297B4428742C652C612C6E2C692C6F2C732C21312C2131297D2C41736B3A66756E6374696F6E28742C652C612C6E2C692C6F2C732C72297B4428742C65';
wwv_flow_api.g_varchar2_table(620) := '2C6E2C692C6F2C732C722C21302C61297D7D2C4C6F6164696E673A7B496E69743A66756E6374696F6E2874297B693D792821302C702C74292C6B28692E757365476F6F676C65466F6E742C692E666F6E7446616D696C79292C6228297D2C4D657267653A';
wwv_flow_api.g_varchar2_table(621) := '66756E6374696F6E2874297B72657475726E20693F766F696428693D792821302C692C7429293A286728224E6F7469666C6978204572726F72222C22596F75206861766520746F20696E697469616C697A6520746865204C6F6164696E67206D6F64756C';
wwv_flow_api.g_varchar2_table(622) := '65206265666F72652063616C6C204D657267652066756E6374696F6E2E22292C2131297D2C5374616E646172643A66756E6374696F6E28742C65297B5428742C652C227374616E64617264222C21302C30297D2C486F7572676C6173733A66756E637469';
wwv_flow_api.g_varchar2_table(623) := '6F6E28742C65297B5428742C652C22686F7572676C617373222C21302C30297D2C436972636C653A66756E6374696F6E28742C65297B5428742C652C22636972636C65222C21302C30297D2C4172726F77733A66756E6374696F6E28742C65297B542874';
wwv_flow_api.g_varchar2_table(624) := '2C652C226172726F7773222C21302C30297D2C446F74733A66756E6374696F6E28742C65297B5428742C652C22646F7473222C21302C30297D2C50756C73653A66756E6374696F6E28742C65297B5428742C652C2270756C7365222C21302C30297D2C43';
wwv_flow_api.g_varchar2_table(625) := '7573746F6D3A66756E6374696F6E28742C65297B5428742C652C22637573746F6D222C21302C30297D2C4E6F7469666C69783A66756E6374696F6E28742C65297B5428742C652C226E6F7469666C6978222C21302C30297D2C52656D6F76653A66756E63';
wwv_flow_api.g_varchar2_table(626) := '74696F6E2874297B226E756D62657222213D747970656F662074262628743D30292C542821312C21312C21312C21312C74297D2C4368616E67653A66756E6374696F6E2874297B4F2874297D7D2C426C6F636B3A7B496E69743A66756E6374696F6E2874';
wwv_flow_api.g_varchar2_table(627) := '297B6F3D792821302C642C74292C6B286F2E757365476F6F676C65466F6E742C6F2E666F6E7446616D696C79292C6228297D2C4D657267653A66756E6374696F6E2874297B72657475726E206F3F766F6964286F3D792821302C6F2C7429293A28672822';
wwv_flow_api.g_varchar2_table(628) := '4E6F7469666C6978204572726F72222C22596F75206861766520746F20696E697469616C697A6520746865205C224E6F7469666C69782E426C6F636B5C22206D6F64756C65206265666F72652063616C6C204D657267652066756E6374696F6E2E22292C';
wwv_flow_api.g_varchar2_table(629) := '2131297D2C5374616E646172643A66756E6374696F6E28742C652C61297B482821302C742C227374616E64617264222C652C61297D2C486F7572676C6173733A66756E6374696F6E28742C652C61297B482821302C742C22686F7572676C617373222C65';
wwv_flow_api.g_varchar2_table(630) := '2C61297D2C436972636C653A66756E6374696F6E28742C652C61297B482821302C742C22636972636C65222C652C61297D2C4172726F77733A66756E6374696F6E28742C652C61297B482821302C742C226172726F7773222C652C61297D2C446F74733A';
wwv_flow_api.g_varchar2_table(631) := '66756E6374696F6E28742C652C61297B482821302C742C22646F7473222C652C61297D2C50756C73653A66756E6374696F6E28742C652C61297B482821302C742C2270756C7365222C652C61297D2C52656D6F76653A66756E6374696F6E28742C65297B';
wwv_flow_api.g_varchar2_table(632) := '226E756D62657222213D747970656F662065262628653D30292C482821312C742C21312C21312C21312C65297D7D7D3B72657475726E7B4E6F746966793A6A2E4E6F746966792C5265706F72743A6A2E5265706F72742C436F6E6669726D3A6A2E436F6E';
wwv_flow_api.g_varchar2_table(633) := '6669726D2C4C6F6164696E673A6A2E4C6F6164696E672C426C6F636B3A6A2E426C6F636B7D7D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30115552315240955966)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_file_name=>'notiflix-2.7.0.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722062654374624E6F7469666C6978203D207B7D3B0D0A0D0A62654374624E6F7469666C69782E7574696C203D207B0D0A202020207265706C6163654974656D733A2066756E6374696F6E2028704D736729207B0D0A202020202020766172206974';
wwv_flow_api.g_varchar2_table(2) := '656D3B0D0A202020202020766172206974656D4F6E506167653B0D0A202020202020766172206974656D73203D206E6577205265674578702822235C5C772B23222C20226722293B0D0A202020202020766172207265706C616365644D7367203D20704D';
wwv_flow_api.g_varchar2_table(3) := '73673B0D0A20200D0A2020202020207768696C6520286974656D203D206974656D732E6578656328704D73672929207B0D0A202020202020202020206974656D4F6E50616765203D202478286974656D5B305D2E7265706C616365282F232F672C202222';
wwv_flow_api.g_varchar2_table(4) := '29293B0D0A20202020202020202020696620286974656D4F6E5061676529207B0D0A20202020202020202020202020207265706C616365644D7367203D207265706C616365644D73672E7265706C616365286974656D5B305D2C202476286974656D4F6E';
wwv_flow_api.g_varchar2_table(5) := '5061676529293B0D0A202020202020202020207D0D0A2020202020207D0D0A20202020202072657475726E207265706C616365644D73673B0D0A202020207D0D0A20207D3B0D0A0D0A62654374624E6F7469666C69782E4E6F74696679203D207B0D0A20';
wwv_flow_api.g_varchar2_table(6) := '2020207574696C3A2062654374624E6F7469666C69782E7574696C2C0D0A20200D0A20202020537563636573733A2066756E6374696F6E2028705468697329207B0D0A20202020202020204E6F7469666C69782E4E6F746966792E537563636573732874';
wwv_flow_api.g_varchar2_table(7) := '6869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C2066756E6374696F6E20286529207B0D0A2020202020202020617065782E64612E726573756D652870546869732E726573756D65';
wwv_flow_api.g_varchar2_table(8) := '43616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B0D0A202020207D2C0D0A202020204661696C7572653A2066756E6374696F6E2028705468697329207B0D0A20202020202020204E6F7469666C69782E4E6F746966792E4661696C75';
wwv_flow_api.g_varchar2_table(9) := '726528746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C2066756E6374696F6E20286529207B0D0A2020202020202020617065782E64612E726573756D652870546869732E7265';
wwv_flow_api.g_varchar2_table(10) := '73756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B0D0A202020207D2C0D0A202020205761726E696E673A2066756E6374696F6E2028705468697329207B0D0A20202020202020204E6F7469666C69782E4E6F746966792E57';
wwv_flow_api.g_varchar2_table(11) := '61726E696E6728746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C2066756E6374696F6E20286529207B0D0A2020202020202020617065782E64612E726573756D652870546869';
wwv_flow_api.g_varchar2_table(12) := '732E726573756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B0D0A202020207D2C0D0A20202020496E666F3A2066756E6374696F6E2028705468697329207B0D0A20202020202020204E6F7469666C69782E4E6F746966792E';
wwv_flow_api.g_varchar2_table(13) := '496E666F28746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C2066756E6374696F6E20286529207B0D0A2020202020202020617065782E64612E726573756D652870546869732E';
wwv_flow_api.g_varchar2_table(14) := '726573756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D2C0D0A2020202020207B0D0A202020202020202072746C3A20747275652C0D0A2020202020207D293B0D0A202020207D0D0A20207D3B0D0A0D0A202062654374624E6F74';
wwv_flow_api.g_varchar2_table(15) := '69666C69782E5265706F7274203D207B0D0A202020207574696C3A2062654374624E6F7469666C69782E7574696C2C0D0A20200D0A20202020537563636573733A2066756E6374696F6E2028705468697329207B0D0A2020202020202020204E6F746966';
wwv_flow_api.g_varchar2_table(16) := '6C69782E5265706F72742E537563636573732820746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C20746869732E7574696C2E7265706C6163654974656D732870546869732E61';
wwv_flow_api.g_varchar2_table(17) := '6374696F6E2E6174747269627574653034292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653133292C2066756E6374696F6E20286529207B0D0A2020202020202020617065782E64';
wwv_flow_api.g_varchar2_table(18) := '612E726573756D652870546869732E726573756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B200D0A202020207D2C0D0A202020204661696C7572653A2066756E6374696F6E2028705468697329207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(19) := '20204E6F7469666C69782E5265706F72742E4661696C7572652820746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C20746869732E7574696C2E7265706C6163654974656D7328';
wwv_flow_api.g_varchar2_table(20) := '70546869732E616374696F6E2E6174747269627574653034292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653133292C2066756E6374696F6E20286529207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(21) := '20617065782E64612E726573756D652870546869732E726573756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B200D0A202020207D2C0D0A202020205761726E696E673A2066756E6374696F6E2028705468697329207B0D0A';
wwv_flow_api.g_varchar2_table(22) := '2020202020202020204E6F7469666C69782E5265706F72742E5761726E696E672820746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C20746869732E7574696C2E7265706C6163';
wwv_flow_api.g_varchar2_table(23) := '654974656D732870546869732E616374696F6E2E6174747269627574653034292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653133292C2066756E6374696F6E20286529207B0D0A';
wwv_flow_api.g_varchar2_table(24) := '2020202020202020617065782E64612E726573756D652870546869732E726573756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B200D0A202020207D2C0D0A20202020496E666F3A2066756E6374696F6E2028705468697329';
wwv_flow_api.g_varchar2_table(25) := '207B0D0A2020202020202020204E6F7469666C69782E5265706F72742E496E666F2820746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C20746869732E7574696C2E7265706C61';
wwv_flow_api.g_varchar2_table(26) := '63654974656D732870546869732E616374696F6E2E6174747269627574653034292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653133292C2066756E6374696F6E20286529207B0D';
wwv_flow_api.g_varchar2_table(27) := '0A2020202020202020617065782E64612E726573756D652870546869732E726573756D6543616C6C6261636B2C2066616C7365293B0D0A2020202020207D293B200D0A202020207D0D0A20207D3B0D0A0D0A202062654374624E6F7469666C69782E436F';
wwv_flow_api.g_varchar2_table(28) := '6E6669726D203D207B0D0A202020207574696C3A2062654374624E6F7469666C69782E7574696C2C0D0A20200D0A2020202053686F773A2066756E6374696F6E2028705468697329207B0D0A2020202020202020204E6F7469666C69782E436F6E666972';
wwv_flow_api.g_varchar2_table(29) := '6D2E53686F772820746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653033292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E617474726962';
wwv_flow_api.g_varchar2_table(30) := '7574653034292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E6174747269627574653133292C20746869732E7574696C2E7265706C6163654974656D732870546869732E616374696F6E2E617474726962';
wwv_flow_api.g_varchar2_table(31) := '7574653134292C2066756E6374696F6E28297B20617065782E64612E726573756D652870546869732E726573756D6543616C6C6261636B2C2066616C7365293B207D2C2066756E6374696F6E28297B203B207D20293B200D0A202020207D0D0A2020207D';
wwv_flow_api.g_varchar2_table(32) := '3B0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30115552669926955970)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_file_name=>'apex.notiflix.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722062654374624E6F7469666C69783D7B7D3B62654374624E6F7469666C69782E7574696C3D7B7265706C6163654974656D733A66756E6374696F6E2874297B666F722876617220652C692C613D6E6577205265674578702822235C5C772B23222C';
wwv_flow_api.g_varchar2_table(2) := '226722292C753D743B653D612E657865632874293B2928693D247828655B305D2E7265706C616365282F232F672C2222292929262628753D752E7265706C61636528655B305D2C247628692929293B72657475726E20757D7D2C62654374624E6F746966';
wwv_flow_api.g_varchar2_table(3) := '6C69782E4E6F746966793D7B7574696C3A62654374624E6F7469666C69782E7574696C2C537563636573733A66756E6374696F6E2874297B4E6F7469666C69782E4E6F746966792E5375636365737328746869732E7574696C2E7265706C616365497465';
wwv_flow_api.g_varchar2_table(4) := '6D7328742E616374696F6E2E6174747269627574653033292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D29297D2C4661696C7572653A66756E6374696F6E2874297B4E6F';
wwv_flow_api.g_varchar2_table(5) := '7469666C69782E4E6F746966792E4661696C75726528746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653033292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573';
wwv_flow_api.g_varchar2_table(6) := '756D6543616C6C6261636B2C2131297D29297D2C5761726E696E673A66756E6374696F6E2874297B4E6F7469666C69782E4E6F746966792E5761726E696E6728746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(7) := '69627574653033292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D29297D2C496E666F3A66756E6374696F6E2874297B4E6F7469666C69782E4E6F746966792E496E666F28';
wwv_flow_api.g_varchar2_table(8) := '746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653033292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D292C7B72746C';
wwv_flow_api.g_varchar2_table(9) := '3A21307D297D7D2C62654374624E6F7469666C69782E5265706F72743D7B7574696C3A62654374624E6F7469666C69782E7574696C2C537563636573733A66756E6374696F6E2874297B4E6F7469666C69782E5265706F72742E53756363657373287468';
wwv_flow_api.g_varchar2_table(10) := '69732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653033292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653034292C746869732E7574696C2E7265';
wwv_flow_api.g_varchar2_table(11) := '706C6163654974656D7328742E616374696F6E2E6174747269627574653133292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D29297D2C4661696C7572653A66756E637469';
wwv_flow_api.g_varchar2_table(12) := '6F6E2874297B4E6F7469666C69782E5265706F72742E4661696C75726528746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653033292C746869732E7574696C2E7265706C6163654974656D7328742E';
wwv_flow_api.g_varchar2_table(13) := '616374696F6E2E6174747269627574653034292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653133292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D';
wwv_flow_api.g_varchar2_table(14) := '6543616C6C6261636B2C2131297D29297D2C5761726E696E673A66756E6374696F6E2874297B4E6F7469666C69782E5265706F72742E5761726E696E6728746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E617474726962';
wwv_flow_api.g_varchar2_table(15) := '7574653033292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653034292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653133292C286675';
wwv_flow_api.g_varchar2_table(16) := '6E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D29297D2C496E666F3A66756E6374696F6E2874297B4E6F7469666C69782E5265706F72742E496E666F28746869732E7574696C2E7265';
wwv_flow_api.g_varchar2_table(17) := '706C6163654974656D7328742E616374696F6E2E6174747269627574653033292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653034292C746869732E7574696C2E7265706C6163654974656D73';
wwv_flow_api.g_varchar2_table(18) := '28742E616374696F6E2E6174747269627574653133292C2866756E6374696F6E2865297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D29297D7D2C62654374624E6F7469666C69782E436F6E6669726D3D7B';
wwv_flow_api.g_varchar2_table(19) := '7574696C3A62654374624E6F7469666C69782E7574696C2C53686F773A66756E6374696F6E2874297B4E6F7469666C69782E436F6E6669726D2E53686F7728746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269';
wwv_flow_api.g_varchar2_table(20) := '627574653033292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653034292C746869732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653133292C7468';
wwv_flow_api.g_varchar2_table(21) := '69732E7574696C2E7265706C6163654974656D7328742E616374696F6E2E6174747269627574653134292C2866756E6374696F6E28297B617065782E64612E726573756D6528742E726573756D6543616C6C6261636B2C2131297D292C2866756E637469';
wwv_flow_api.g_varchar2_table(22) := '6F6E28297B7D29297D7D3B0A2F2F2320736F757263654D617070696E6755524C3D617065782E6E6F7469666C69782E6A732E6D6170';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30133743170942424577)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_file_name=>'apex.notiflix.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7B2276657273696F6E223A332C22736F7572636573223A5B22617065782E6E6F7469666C69782E6A73225D2C226E616D6573223A5B2262654374624E6F7469666C6978222C227574696C222C227265706C6163654974656D73222C22704D7367222C2269';
wwv_flow_api.g_varchar2_table(2) := '74656D222C226974656D4F6E50616765222C226974656D73222C22526567457870222C227265706C616365644D7367222C2265786563222C222478222C227265706C616365222C222476222C224E6F74696679222C2253756363657373222C2270546869';
wwv_flow_api.g_varchar2_table(3) := '73222C224E6F7469666C6978222C2274686973222C22616374696F6E222C226174747269627574653033222C2265222C2261706578222C226461222C22726573756D65222C22726573756D6543616C6C6261636B222C224661696C757265222C22576172';
wwv_flow_api.g_varchar2_table(4) := '6E696E67222C22496E666F222C2272746C222C225265706F7274222C226174747269627574653034222C226174747269627574653133222C22436F6E6669726D222C2253686F77222C226174747269627574653134225D2C226D617070696E6773223A22';
wwv_flow_api.g_varchar2_table(5) := '414141412C49414149412C63414167422C4741457042412C63414163432C4B41414F2C4341436A42432C614141632C53414155432C47414D74422C49414C412C49414149432C45414341432C45414341432C454141512C49414149432C4F41414F2C5341';
wwv_flow_api.g_varchar2_table(6) := '41552C4B41433742432C454141634C2C45414558432C4541414F452C4541414D472C4B41414B4E2C4B41437242452C454141614B2C474141474E2C4541414B2C474141474F2C514141512C4B41414D2C5141456C43482C45414163412C45414159472C51';
wwv_flow_api.g_varchar2_table(7) := '414151502C4541414B2C47414149512C47414147502C4B414774442C4F41414F472C49414962522C63414163612C4F4141532C4341436E425A2C4B41414D442C63414163432C4B41457042612C514141532C53414155432C47414366432C53414153482C';
wwv_flow_api.g_varchar2_table(8) := '4F41414F432C51414151472C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C634141632C53414155432C4741437046432C4B41414B432C47414147432C4F41414F522C4541414D532C6742414167422C4F41477A43432C51';
wwv_flow_api.g_varchar2_table(9) := '4141532C53414155562C47414366432C53414153482C4F41414F592C51414151522C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C634141632C53414155432C4741437046432C4B41414B432C47414147432C4F41414F52';
wwv_flow_api.g_varchar2_table(10) := '2C4541414D532C6742414167422C4F41477A43452C514141532C53414155582C47414366432C53414153482C4F41414F612C51414151542C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C634141632C53414155432C4741';
wwv_flow_api.g_varchar2_table(11) := '437046432C4B41414B432C47414147432C4F41414F522C4541414D532C6742414167422C4F41477A43472C4B41414D2C534141555A2C4741435A432C53414153482C4F41414F632C4B41414B562C4B41414B68422C4B41414B432C61414161612C454141';
wwv_flow_api.g_varchar2_table(12) := '4D472C4F41414F432C634141632C53414155432C4741436A46432C4B41414B432C47414147432C4F41414F522C4541414D532C6742414167422C4B414576432C43414345492C4B41414B2C4D414B5835422C6341416336422C4F4141532C434143724235';
wwv_flow_api.g_varchar2_table(13) := '422C4B41414D442C63414163432C4B41457042612C514141532C53414155432C47414364432C53414153612C4F41414F662C51414153472C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C61414163462C4B41414B68422C';
wwv_flow_api.g_varchar2_table(14) := '4B41414B432C61414161612C4541414D472C4F41414F592C61414163622C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F612C634141632C53414155582C474143314C432C4B41414B432C47414147432C4F41414F522C454141';
wwv_flow_api.g_varchar2_table(15) := '4D532C6742414167422C4F41477A43432C514141532C53414155562C47414364432C53414153612C4F41414F4A2C51414153522C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C61414163462C4B41414B68422C4B41414B';
wwv_flow_api.g_varchar2_table(16) := '432C61414161612C4541414D472C4F41414F592C61414163622C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F612C634141632C53414155582C474143314C432C4B41414B432C47414147432C4F41414F522C4541414D532C67';
wwv_flow_api.g_varchar2_table(17) := '42414167422C4F41477A43452C514141532C53414155582C47414364432C53414153612C4F41414F482C51414153542C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C61414163462C4B41414B68422C4B41414B432C6141';
wwv_flow_api.g_varchar2_table(18) := '4161612C4541414D472C4F41414F592C61414163622C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F612C634141632C53414155582C474143314C432C4B41414B432C47414147432C4F41414F522C4541414D532C6742414167';
wwv_flow_api.g_varchar2_table(19) := '422C4F41477A43472C4B41414D2C534141555A2C47414358432C53414153612C4F41414F462C4B41414D562C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F432C61414163462C4B41414B68422C4B41414B432C61414161612C';
wwv_flow_api.g_varchar2_table(20) := '4541414D472C4F41414F592C61414163622C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F612C634141632C53414155582C474143764C432C4B41414B432C47414147432C4F41414F522C4541414D532C6742414167422C5141';
wwv_flow_api.g_varchar2_table(21) := '4B334378422C6341416367432C514141552C43414374422F422C4B41414D442C63414163432C4B4145704267432C4B41414D2C534141556C422C47414358432C5341415367422C51414151432C4B41414D68422C4B41414B68422C4B41414B432C614141';
wwv_flow_api.g_varchar2_table(22) := '61612C4541414D472C4F41414F432C61414163462C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F592C61414163622C4B41414B68422C4B41414B432C61414161612C4541414D472C4F41414F612C61414163642C4B41414B68';
wwv_flow_api.g_varchar2_table(23) := '422C4B41414B432C61414161612C4541414D472C4F41414F67422C634141632C57414159622C4B41414B432C47414147432C4F41414F522C4541414D532C6742414167422C4D414157222C2266696C65223A22617065782E6E6F7469666C69782E6A7322';
wwv_flow_api.g_varchar2_table(24) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30133743507669424579)
,p_plugin_id=>wwv_flow_api.id(30115358430942943304)
,p_file_name=>'apex.notiflix.js.map'
,p_mime_type=>'application/json'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(9061172130029260)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(8921460862028888)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(9024668376029124)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(9060923027029258)
,p_nav_bar_list_template_id=>wwv_flow_api.id(9027448661029127)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210131131341'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'app1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210118142547'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9071942554029471)
,p_plug_name=>'app1'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(8967250123029041)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'SendMsgTelegram'
,p_alias=>'SENDMSGTELEGRAM'
,p_step_title=>'SendMsgTelegram'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210218210411'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7482777099010574)
,p_plug_name=>'Enviar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7482948013010576)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7482777099010574)
,p_button_name=>'ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Enviar'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7482836748010575)
,p_name=>'P2_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7482777099010574)
,p_prompt=>'Text'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7746250399470061)
,p_name=>'submit_sendtxt_telegram'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7482948013010576)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7746375567470062)
,p_event_id=>wwv_flow_api.id(7746250399470061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Este pagina envia un text a un chat de telegram, donde el buzon fue creado y configurado en base a este documento.',
'Incluye: generacion de certificado ssl del sitio del ws de la api de telegram. y el manejo de cadenas para crear un  json',
'a mano para el body de la llamada al ws.   11.02.21-APEX-Telegram Send MSG Chat',
'https://docs.google.com/document/d/1tLYXaeW2aOKGR8VqitZl7M8SAWZERnKyECVP61wem6g/edit?usp=sharing',
'*/',
'DECLARE',
'  l_result clob;',
'  v_msg varchar2 (500);',
'BEGIN',
'   apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'   apex_debug.message(p_message => ''CBM1 =>submit_sendtxt_telegram: ''  || V(''P2_TEXT'') );',
'',
'  apex_web_service.g_request_headers.delete();',
'  apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'  apex_web_service.g_request_headers(1).value := ''application/json'';',
'  ',
'  v_msg := ''{"chat_id":-1001266442189,"text":"Hola, bienvenido al chat cbm, '' || :P2_TEXT || '' " }'';',
'   apex_debug.message(p_message => ''CBM1 =>v_msg: ''  || v_msg );',
'  l_result := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'    p_url => ''https://api.telegram.org/bot1656509146:AAHjXbhFdSOe2Vf_-xq8mvf_5gpFaFlaZRA/sendMessage'' , ',
'    p_http_method => ''POST'', ',
'    p_body => v_msg  );',
'  /* p_wallet_path => ''file:C:\working21\OraAPEX\windows\wallets0221\wall1'',',
'    p_wallet_pwd => ''CbmOra.2021'' , */',
'',
'  :P2_TEXT := l_result; ',
'  DBMS_OUTPUT.PUT_LINE(''enviado ''|| l_result);',
'END;',
''))
,p_attribute_02=>'P2_TEXT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7483172185010578)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENVIO_TO_TELEGRAM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_result clob;',
'  v_msg varchar2 (500);',
'BEGIN',
'  apex_web_service.g_request_headers.delete();',
'  apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'  apex_web_service.g_request_headers(1).value := ''application/json'';',
'  ',
'  v_msg := ''{"chat_id":-1001266442189,"text":"hola bienvenido al chat cbm ti, enviado desde apex 20.X WIN: " '' || :P2_TEXT || '' }'';',
'  ',
'  l_result := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'    p_url => ''https://api.telegram.org/bot1656509146:AAHjXbhFdSOe2Vf_-xq8mvf_5gpFaFlaZRA/sendMessage''',
'   ,p_http_method => ''POST''',
'   ,p_wallet_path => ''file:C:\app\dell\1800XE\orawallet2''',
'   ,p_wallet_pwd => ''CbmOra2021''',
'   ,p_body => v_msg  );',
'  ',
'  DBMS_OUTPUT.PUT_LINE(l_result);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'SODA Operations'
,p_alias=>'SODA-OPERATIONS'
,p_step_title=>'SODA Operations'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210224080734'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6902766853173027)
,p_name=>'qtestsoda'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_api.id(8503616093317790)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6902810009173028)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6902965466173029)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NUMBER'
,p_column_display_sequence=>20
,p_column_heading=>'Employee Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'ConsumeWSGithub'
,p_alias=>'CONSUMEWSGITHUB'
,p_step_title=>'ConsumeWSGithub'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301211949'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7483294894010579)
,p_plug_name=>'ConsumeWSGithub'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7483442792010581)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7483294894010579)
,p_button_name=>'ConsumeWSGITHUB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Consumewsgithub'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7483367210010580)
,p_name=>'P4_RESULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7483294894010579)
,p_prompt=>'Result'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7483602313010582)
,p_name=>'CallConsumeWSGITHUB'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7483442792010581)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7483726271010583)
,p_event_id=>wwv_flow_api.id(7483602313010582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select apex_web_service.make_rest_request(',
'    p_url         => ''https://api.github.com/'',',
'    p_http_method => ''GET'') into :P4_RESULT ',
'    from dual;',
'/* ',
',',
'    p_wallet_path => ''file:C:\working21\OraAPEX\windows\wallets0221\wall1'', p_wallet_pwd => ''CbmOra.2021''',
'*/',
'end; '))
,p_attribute_03=>'P4_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'ConsumeWSearthquakeus'
,p_alias=>'CONSUMEWSEARTHQUAKEUS'
,p_step_title=>'ConsumeWSearthquakeus'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301212348'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7483751419010584)
,p_plug_name=>'ConsumeWSearthquakeUS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7693394826946458)
,p_name=>'cr_memebers'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ROWS_EARTHQ, MEMBERS_ROWS_EARTHQ */',
'/*  ',
'select  c001, n001, c002, c003  From apex_collections  ',
'        where collection_name = ''ROWS_EARTHQ_CURSOR_COLECTION_APEX''; ',
'',
'*/',
'select  c001, c002, c003  From apex_collections  ',
'        where collection_name = ''AMEMBERS_ROWS_EARTHQ''; ',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7745975280470058)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>10
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7746119341470059)
,p_query_column_id=>2
,p_column_alias=>'C002'
,p_column_display_sequence=>20
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7746142392470060)
,p_query_column_id=>3
,p_column_alias=>'C003'
,p_column_display_sequence=>30
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7484795100010594)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_json_object_t_parse'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'-button_json_object_t_parse'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7483964421010586)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_apex_json_parse'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'button_apex_json_parse'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7484901390010595)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_JSON_TABL_TO_APEX_COLLECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'button_ JSON_TABLE_CURSOR_COLLECTION_APEX'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7485173385010598)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_JSON_TABL_TO_SELECT_INTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'button_ JSON_TABL_SELECT_INTO_VARSPL'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7692987711946454)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_JSON_TABLE_WITHSAS_3_COLS_TYPEOBJEC_TBL_RECORD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'button_ JSON_TABLE_WITHSAS_3_COLS_TYPEOBJEC_TBL_RECORD'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7745458815470053)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_JSON_TABLE_WITH_AS_BULK_COLLECT_TYPE_VCHAR2_LIST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'button_ JSON_TABLE_WITH_AS_BULK_COLLECT_TYPE_VCHAR2_LIST'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7485451089010601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7483751419010584)
,p_button_name=>'button_JSON_TABLE_WITHAS_APEX_ADD_MEMBERS_BULK_COLLECT_VCHAR2_LIST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'*button_ JSON_TABLE_WITHAS_APEX_ADD_MEMBERS_BULK_COLLECT_VCHAR2_LIST'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3246248035476230)
,p_name=>'P5_MSG_ERROR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7483751419010584)
,p_prompt=>'P5_MSG_ERROR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7483912151010585)
,p_name=>'P5_RESULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7483751419010584)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7484171288010588)
,p_name=>'Call_apex_json_parse'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7483964421010586)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7484292762010589)
,p_event_id=>wwv_flow_api.id(7484171288010588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'-- https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=20000',
'43049	12/02/21 14:28:15.677000000 	0.1	     21.959	   CBM => ConsumeWSearthquakeUS.p1 antes del select make_rest_request',
'43049	12/02/21 14:28:37.636000000 	22.059	303.315	   Request httsp json Time: 21.958',
'43049	12/02/21 14:33:40.951000000 	325.374	 0   	   Parsing Time: 3.315',
'43049	12/02/21 14:33:40.951000000 	325.374	 0.084	   CBM => ConsumeWSearthquakeUS.p4 paso features apex_json.get_count 10840',
'-- https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson',
'Este parse apex_json.parse es el mas lento de los 3: apex_json (muy lento) ,  json_object_t (lento), json_table (rapido).',
'*/',
'',
'DECLARE',
' lc_data CLOB;',
' t_values_var APEX_JSON.t_values; ',
' x_count number;',
' y_count number;',
' field5members   WWV_FLOW_T_VARCHAR2;',
' BrandId VARCHAR2(800);',
' l_time           timestamp;',
'',
'BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => Call_apex_json_parse.p1 antes del select make_rest_request'');',
'    ',
'    l_time := systimestamp;',
'select  apex_web_service.make_rest_request(',
'    p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=20000'', ',
'    p_http_method => ''GET'',',
'    p_wallet_path => ''file:C:\working21\OraAPEX\windows\wallets0221\wall1'',',
' p_wallet_pwd => ''CbmOra.2021'' )  into lc_data    ',
'    from dual;',
'    apex_debug.message(p_message => ''Request httsp json Time: '' || extract( second from ( systimestamp - l_time ) )); ',
'',
'    l_time := systimestamp;',
'    apex_json.parse(t_values_var, lc_data);',
'    apex_debug.message(p_message => ''Parsing Time: '' || extract( second from ( systimestamp - l_time ) )); ',
'',
'    l_time := systimestamp;',
'    x_count := apex_json.get_count(p_path => ''features'', p_values => t_values_var);  ',
'    apex_debug.message(p_message => ''CBM => Call_apex_json_parse.p4 paso features apex_json.get_count '' ||  x_count );',
'    ',
'    FOR x IN 1 .. x_count LOOP',
'        field5members := APEX_JSON.GET_MEMBERS(p_path=>''features[%d].properties'',p_values=> t_values_var, p0 => x);',
'        y_count :=  field5members.COUNT;',
'        apex_debug.message(p_message => ''CBM => ConsumeWSearthquakeUS.p4 paso properties apex_json.get_count '' ||  y_count );',
'      FOR y in 1 ..y_count  LOOP   ',
'         BrandId := APEX_JSON.GET_VARCHAR2(p_path=>''features[%d].properties.''|| field5members(y) ,p_values=> t_values_var , p0=> x);',
'         apex_debug.message(p_message => ''CBM1 =>ConsumeWSearthquakeUS BrandId:'' || BrandId );',
'    END LOOP;',
'  END LOOP;',
'  ',
'  apex_debug.message(p_message => ''** Get & Print elements Count Time: '' || extract( second from ( systimestamp - l_time ) ) );',
'  :P5_RESULT := ''apex_json.parse:  features[%d].properties.... : '' || BrandId;',
'   ',
'END; ',
''))
,p_attribute_03=>'P5_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7485010148010596)
,p_name=>'Call_apex_JSON_TABLE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7484901390010595)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7485069673010597)
,p_event_id=>wwv_flow_api.id(7485010148010596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Este parse json_table es el mas rapido de los 3: apex_json (muy lento) ,  json_object_t (lento), json_table (rapido).',
'A demas este ejemplo usa: Un cursor para hace el parse de json_table, el cursor va a regesar mas de registro de la consulta al ',
'json como tabla.',
'Se crea la colleccion apex:  ''ROWS_EARTHQ_CURSOR_COLECTION_APEX'' y se itera el cursor para en el ciclo ir creando uno a uno los miembros de la',
'coleccion y mostrarla como un reporte: apex_collection.add_member. ',
'*/',
' DECLARE',
' lc_data CLOB;',
' theid varchar(20);',
' l_time           timestamp;',
' l_ROWS_EARTHQcount number;',
' ',
' Cursor c_earthjsontb',
'   is ',
'  select e.id, e.mag , e.title, e.coordinates ',
'    from json_table(',
'        lc_data,',
'        ''$.features[*]'' ',
'        columns(',
'            id    varchar2(20)  path ''$.id'',',
'            mag   number        path ''$.properties.mag'',',
'            title varchar2(200) path ''$.properties.title'',                                ',
'            coordinates varchar2(200) path ''$.geometry.coordinates[0]'') ) e   where e.title like ''%WNW of The Geysers, CA'';',
'   BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => JSON_TABL.p1 antes del select make_rest_request'');    ',
'    select  apex_web_service.make_rest_request(',
'        p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=500'', ',
'        p_http_method => ''GET'')  into lc_data    ',
'    from dual;',
'',
'     ',
'    if not apex_collection.collection_exists(''ROWS_EARTHQ_CURSOR_COLECTION_APEX'') then ',
'     apex_collection.create_collection(''ROWS_EARTHQ_CURSOR_COLECTION_APEX'');',
'    else',
'     apex_collection.truncate_collection(''ROWS_EARTHQ_CURSOR_COLECTION_APEX'');',
'    END IF;',
'',
'    for c in c_earthjsontb loop',
'            apex_collection.add_member(',
'            p_collection_name => ''ROWS_EARTHQ_CURSOR_COLECTION_APEX'',',
'                p_c001 => c.id,',
'                p_n001 => c.mag,',
'                p_c002 => c.title,',
'                p_c003 => c.coordinates );',
'        end loop;',
'        l_ROWS_EARTHQcount :=  APEX_COLLECTION.COLLECTION_MEMBER_COUNT(''ROWS_EARTHQ_CURSOR_COLECTION_APEX'');     ',
'        apex_debug.message(p_message => ''CBM => JSON_TABL apex_collection.add_member count: '' || l_ROWS_EARTHQcount);',
'        :P5_RESULT := ''json_table using cursor iterate it for add one-by-one member to apex collection: '' || TO_CHAR(l_ROWS_EARTHQcount);',
'    ',
'END;',
''))
,p_attribute_03=>'P5_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7736076982442501)
,p_event_id=>wwv_flow_api.id(7485010148010596)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7693394826946458)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7485261846010599)
,p_name=>'Call_apex_JSON_TAB_SELECT_INTO'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7485173385010598)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7485430558010600)
,p_event_id=>wwv_flow_api.id(7485261846010599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Este parse json_table es el mas rapido de los 3: apex_json (muy lento) ,  json_object_t (lento), json_table (rapido).',
'A demas este ejemplo usa: select into en el json_table para un solo registro limitando en el where una sola ocurrencia.',
'El select into mete los campos uno a uno en variables locales.',
'*/',
'',
' DECLARE',
' lc_data CLOB;',
' theid varchar(20);',
' thetitle varchar(200);',
' thelocation varchar(200);',
' themag  number; ',
' thecoordinates varchar(200);',
' l_time           timestamp;',
'',
'BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => JSON_TABL.p1 antes del select make_rest_request'');',
'    ',
'    l_time := systimestamp;',
'',
'select  apex_web_service.make_rest_request(',
'    p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=100'', ',
'    p_http_method => ''GET'')  into lc_data    ',
'    from dual;',
'',
'    apex_debug.message(p_message => ''Request httsp json Time: '' || extract( second from ( systimestamp - l_time ) )); ',
'',
'    l_time := systimestamp;   ',
'  select e.id,           e.mag , e.title, e.coordinates into theid, themag, thetitle, thecoordinates ',
'    from json_table(',
'        lc_data,',
'        ''$.features[*]'' ',
'        columns(',
'            id    varchar2(20)  path ''$.id'',',
'            mag   number        path ''$.properties.mag'',',
'            title varchar2(200) path ''$.properties.title'',                                ',
'            coordinates varchar2(200) path ''$.geometry.coordinates[0]'') ) e   where e.title like ''%WNW of The Geysers, CA'' ',
'            and  rownum = 1 ;',
'        ',
'    apex_debug.message(p_message => ''Parsing Time: '' || extract( second from ( systimestamp - l_time ) )); ',
'    apex_debug.message(p_message => ''CBM => JSON_TABL.p4 paso vals title: '' || thetitle || thecoordinates  );',
'    :P5_RESULT := ''select into en el json_table para un solo registro limitando en el where una sola ocurrencia: '' || thetitle || thecoordinates;',
'    ',
'END;',
''))
,p_attribute_03=>'P5_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7692799342946452)
,p_name=>'Call_apex_JSON_TABLE_TO_WITH_AS_APEX_ADD_MEMBERS_BULK COLLECT_VCHAR2_LIST'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7485451089010601)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7692848670946453)
,p_event_id=>wwv_flow_api.id(7692799342946452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' ORDSDEMO.CALLER_CRUDWSDEPT.ConsumeWS_HTTPS_JSON_TABLE_WITHAS_ADD_MEMBERSCOLL_BULK_COLLECT  ;',
'-- null;',
'end;',
'',
''))
,p_attribute_03=>'P5_MSG_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246322208476231)
,p_event_id=>wwv_flow_api.id(7692799342946452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'/*',
'Este parse json_table es el mas rapido de los 3: apex_json (muy lento) ,  json_object_t (lento), json_table (rapido).',
'A demas este ejemplo usa: with  as clause en el sql query principal del parse al json con json_table.',
'En el sql interno ultimo se usa: variable de array de tipo: APEX_APPLICATION_GLOBAL.VC_ARR2  para mapear cada columna',
'del select into con BULK COLLECT en el json_table.',
unistr('y asi  poder usar apex_collection.add_members para a\00F1adir miembros (listas de elementos) a una coleccion.'),
'Posteriorment se muestra en un CR. ',
'*/',
'',
'/*',
'DECLARE',
' lc_data CLOB;',
' elemcount number;',
' l_ids APEX_APPLICATION_GLOBAL.VC_ARR2;',
' l_titles APEX_APPLICATION_GLOBAL.VC_ARR2;',
' l_mags APEX_APPLICATION_GLOBAL.VC_ARR2;',
'BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => JSON_TABL.p1 antes del select make_rest_request para with as'');',
'    ',
'    ',
'    select  apex_web_service.make_rest_request(',
'    p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=1500'', ',
'    p_http_method => ''GET'',',
'    p_wallet_path => ''file:C:\working21\OraAPEX\windows\wallets0221\wall1'',',
'    p_wallet_pwd => ''CbmOra.2021'' )  into lc_data    ',
'    from dual; ',
'    ',
'    with eqdata as ( select e.id,     e.title,     e.mag',
'       from json_table( lc_data,     ''$.features[*]'' ',
'           columns( ',
'            id    varchar2(20)  path ''$.id'',',
'            mag   number        path ''$.properties.mag'',',
'            title varchar2(200) path ''$.properties.title'' ) ) e ), ',
'        minmax as (',
'            select min(e.mag) minmag, max(e.mag) maxmag ',
'            from eqdata e ',
'            )  select e.id , e.title, e.mag BULK COLLECT INTO l_ids , l_titles, l_mags from eqdata e, minmax m ',
'                  where e.mag in ( m.minmag, m.maxmag );',
' ',
'     elemcount := ',
'     l_ids.COUNT();',
'     apex_debug.message(p_message => ''CBM => JSON_TABL.p4 paso with as l_tableaapg elemcount: '' || elemcount);',
'         ',
'     FOR i IN 1 .. elemcount  LOOP ',
'       apex_debug.message(p_message => ''** l_tableaapg(i).title of min and max  : '' || l_ids (i));',
'      end loop;',
'      ',
'    if not apex_collection.collection_exists(''AMEMBERS_ROWS_EARTHQ'') then ',
'     apex_collection.create_collection(''AMEMBERS_ROWS_EARTHQ'');',
'    else',
'     apex_collection.truncate_collection(''AMEMBERS_ROWS_EARTHQ'');',
'    END IF;',
'    apex_collection.add_members(',
'            p_collection_name => ''AMEMBERS_ROWS_EARTHQ'',',
'                p_c001 => l_ids,',
'                p_c002 => l_titles,',
'                p_c003 => l_mags , ',
'                 p_generate_md5 => ''YES'');',
'',
'END;',
'*/',
'null;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7745844878470057)
,p_event_id=>wwv_flow_api.id(7692799342946452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7693394826946458)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7745561375470054)
,p_name=>'Call_apex_JSON_TABLE_WITH_AS_BULK_COLLECT_TYPE_VCHAR2_LIST'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7745458815470053)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7745683055470055)
,p_event_id=>wwv_flow_api.id(7745561375470054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'',
'Este parse json_table es el mas rapido de los 3: apex_json (muy lento) ,  json_object_t (lento), json_table (rapido).',
'A demas este ejemplo usa: select into en el json_table para regresar varios registros de una sola columna (un array).',
'El select into mete los rows de un campo con BULK COLLECT INTO  a una variable array de VARCHAR2.  ',
'TYPE list_maxs_earth  IS TABLE OF VARCHAR2(200); ',
'',
'*/',
'',
' DECLARE',
' lc_data CLOB;',
' theid varchar(20);',
' thetitle varchar(200);',
' thelocation varchar(200);',
' themag   varchar(200); ',
' thecoordinates varchar(200);',
' l_time           timestamp;',
' TYPE list_maxs_earth  IS TABLE OF VARCHAR2(200); ',
' alist_maxs_earth  list_maxs_earth; ',
' elemcount number;',
'BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => JSON_TABL.p1 antes del select make_rest_request para with as'');',
'    ',
'    ',
'    select  apex_web_service.make_rest_request(',
'    p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=500'', ',
'    p_http_method => ''GET'')  into lc_data    ',
'    from dual; ',
'    ',
'    with eqdata as ( select e.id,     e.title,     e.mag',
'       from json_table( lc_data,     ''$.features[*]'' ',
'           columns( ',
'            id    varchar2(20)  path ''$.id'',',
'            mag   number        path ''$.properties.mag'',',
'            title varchar2(200) path ''$.properties.title'' ) ) e ), ',
'        minmax as (',
'            select min(e.mag) minmag, max(e.mag) maxmag ',
'            from eqdata e ',
'            )  select e.title BULK COLLECT INTO alist_maxs_earth from eqdata e, minmax m ',
'                  where e.mag in ( m.minmag, m.maxmag );',
'',
'     elemcount := alist_maxs_earth.COUNT();',
'     apex_debug.message(p_message => ''CBM => JSON_TABL.p4 paso with as elemcount : '' || elemcount);',
'    ',
'     FOR i IN 1 .. elemcount  LOOP ',
'       apex_debug.message(p_message => ''alist_maxs_earth(i).title of min and max  : '' || alist_maxs_earth (i));',
'    end loop;',
'    :P5_RESULT := ''JSON_TABLE_WITH_AS_BULK_COLLECT_TYPE_VCHAR2_LIST: '' || elemcount; ',
'END;'))
,p_attribute_03=>'P5_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7693117836946455)
,p_name=>'Call_apex_JSON_TAB_WITHS_AS_3_COLS_TYPEOBJEC_TBL'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7692987711946454)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7693191553946456)
,p_event_id=>wwv_flow_api.id(7693117836946455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Este parse json_table es el mas rapido de los 3: apex_json (muy lento) ,  json_object_t (lento), json_table (rapido).',
'A demas este ejemplo usa: with as y select into en el json_table para regresar varios registros (rows) de varias columnas (cols).',
'El select into mete los rows con BULK COLLECT INTO  a una variable custom de tipo PLSQL RECORD, que es un custom structure data',
'TYPE record_minmaxearthq IS RECORD. ',
'*/',
'',
' DECLARE',
' lc_data CLOB;',
' l_time           timestamp;',
'',
' TYPE record_minmaxearthq IS RECORD',
'   (',
'    theid VARCHAR2(50),',
'    thetitle VARCHAR2(250),',
'    themag VARCHAR2(25) );',
' ',
' TYPE record_minmaxearthq_t IS TABLE OF record_minmaxearthq;',
' alistrecord_maxs_earth  record_minmaxearthq_t;  ',
' elemcount number;',
'',
'BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => JSON_TABL.p1 antes del select make_rest_request para with as'');',
'    ',
'    ',
'    select  apex_web_service.make_rest_request(',
'    p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=500'', ',
'    p_http_method => ''GET'')  into lc_data    ',
'    from dual; ',
'    ',
'    with eqdata as ( select e.id,     e.title,     e.mag ',
'       from json_table( lc_data,     ''$.features[*]'' ',
'           columns( ',
'            id    varchar2(20)  path ''$.id'',',
'            mag   number        path ''$.properties.mag'',',
'            title varchar2(200) path ''$.properties.title'' ) ) e ), ',
'        minmax as (',
'            select min(e.mag) minmag, max(e.mag) maxmag ',
'            from eqdata e ',
'            )  select e.id,     e.title,     e.mag  BULK COLLECT INTO alistrecord_maxs_earth from eqdata e, minmax m ',
'                  where e.mag in ( m.minmag, m.maxmag );',
'',
'     elemcount := alistrecord_maxs_earth.COUNT();',
'     apex_debug.message(p_message => ''CBM => JSON_TABL.p4 alistrecord_maxs_earth.COUNT: '' || elemcount);',
'     FOR i IN 1 .. elemcount  LOOP ',
'       apex_debug.message(p_message => ''alist_maxs_earth(i).title of min and max  : '' || alistrecord_maxs_earth (i).theid); ',
'       :P5_RESULT :=  :P5_RESULT || alistrecord_maxs_earth (i).theid || ''-- '' || alistrecord_maxs_earth (i).themag ;',
'     end loop;',
'    ',
'END;',
''))
,p_attribute_03=>'P5_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7484468955010591)
,p_name=>'Call_json_object_t_parse'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7484795100010594)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7484580439010592)
,p_event_id=>wwv_flow_api.id(7484468955010591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'-- https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=20000',
'43052	12/02/21 14:42:21.337000000  0.043	10.263	CBM => Call_json_object_t_parse.p1 antes del select make_rest_request',
'43052	12/02/21 14:42:31.600000000 10.306	7.219	Request httsp json Time: 10.262',
'43052	12/02/21 14:42:38.819000000 17.525	    0	Parsing Time: 7.219',
'43052	12/02/21 14:42:38.819000000 17.525	    0	CBM => Call_json_object_t_parse.p4 paso features  l_features.get_size: 10843',
'Es mas rapido en el tiempo que APEX_PARSER.',
'*/',
'',
'DECLARE',
' lc_data CLOB;',
' t_values_var APEX_JSON.t_values; ',
' l_json           json_object_t;',
' l_time           timestamp;',
' l_features       json_array_t;',
'BEGIN',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => Call_json_object_t_parse.p1 antes del select make_rest_request'');',
'    ',
'    l_time := systimestamp;',
'select  apex_web_service.make_rest_request(',
'    p_url         => ''https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit=20000'', ',
'    p_http_method => ''GET'' )  into lc_data    ',
'    from dual;',
'    apex_debug.message(p_message => ''Request httsp json Time: '' || extract( second from ( systimestamp - l_time ) )); ',
'',
'    l_time := systimestamp;',
'    l_json := json_object_t.parse( lc_data );',
'    apex_debug.message(p_message => ''Parsing Time: '' || extract( second from ( systimestamp - l_time ) )); ',
'',
'    l_time := systimestamp;',
'    l_features := l_json.get_array( ''features'' );',
'    apex_debug.message(p_message => ''CBM => Call_json_object_t_parse.p4 paso features  l_features.get_size: '' ||  l_features.get_size  );',
'    /*',
'     Todo: Hacer extracciones y buquedas de elementos y arrays con la API methods de  json_object_t, tambien:',
'     pasar a objects/records types y APEX_COLLECTIONS.',
'     Ref: Favoritos / Oracle APEX / ORDS_WS_JSON_SODA / JSON_OBJECT_T',
'    */',
'    apex_debug.message(p_message => ''Get & Print elements Count Time: '' || extract( second from ( systimestamp - l_time ) ) );',
'   :P5_RESULT := ''l_features.get_size: ''  || l_features.get_size ;',
'END; ',
''))
,p_attribute_03=>'P5_RESULT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3246623882476234)
,p_name=>'MSG_ERR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_MSG_ERROR'
,p_condition_element=>'P5_MSG_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246796855476235)
,p_event_id=>wwv_flow_api.id(3246623882476234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_IRANAPEX.NOTIFILIX'
,p_attribute_01=>'NOTIFY'
,p_attribute_02=>'WARNING'
,p_attribute_03=>'"#P5_MSG_ERROR#"'
,p_attribute_05=>'300'
,p_attribute_06=>'right-top'
,p_attribute_07=>'true'
,p_attribute_08=>'fade'
,p_attribute_09=>'true'
,p_attribute_10=>'false'
,p_attribute_11=>'10'
,p_attribute_12=>'10'
,p_attribute_15=>'3000'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'consumeRestDataServicegith'
,p_alias=>'CONSUMERESTDATASERVICEGITH'
,p_step_title=>'consumeRestDataServicegith'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210219162354'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3129422035898338)
,p_name=>'crearthds'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_api.id(3192512843388079)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3129510567898339)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3129616686898340)
,p_query_column_id=>2
,p_column_alias=>'TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3129767548898341)
,p_query_column_id=>3
,p_column_alias=>'TYPE2'
,p_column_display_sequence=>30
,p_column_heading=>'Type2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3129834740898342)
,p_query_column_id=>4
,p_column_alias=>'TZ'
,p_column_display_sequence=>40
,p_column_heading=>'Tz'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3129957234898343)
,p_query_column_id=>5
,p_column_alias=>'CDI'
,p_column_display_sequence=>50
,p_column_heading=>'Cdi'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130032658898344)
,p_query_column_id=>6
,p_column_alias=>'GAP'
,p_column_display_sequence=>60
,p_column_heading=>'Gap'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130130795898345)
,p_query_column_id=>7
,p_column_alias=>'IDS'
,p_column_display_sequence=>70
,p_column_heading=>'Ids'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130228288898346)
,p_query_column_id=>8
,p_column_alias=>'MAG'
,p_column_display_sequence=>80
,p_column_heading=>'Mag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130362814898347)
,p_query_column_id=>9
,p_column_alias=>'MMI'
,p_column_display_sequence=>90
,p_column_heading=>'Mmi'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130481832898348)
,p_query_column_id=>10
,p_column_alias=>'NET'
,p_column_display_sequence=>100
,p_column_heading=>'Net'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130555656898349)
,p_query_column_id=>11
,p_column_alias=>'NST'
,p_column_display_sequence=>110
,p_column_heading=>'Nst'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3130638450898350)
,p_query_column_id=>12
,p_column_alias=>'RMS'
,p_column_display_sequence=>120
,p_column_heading=>'Rms'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3193485339406401)
,p_query_column_id=>13
,p_column_alias=>'SIG'
,p_column_display_sequence=>130
,p_column_heading=>'Sig'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3193595529406402)
,p_query_column_id=>14
,p_column_alias=>'URL'
,p_column_display_sequence=>140
,p_column_heading=>'Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3193621781406403)
,p_query_column_id=>15
,p_column_alias=>'CODE'
,p_column_display_sequence=>150
,p_column_heading=>'Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3193749418406404)
,p_query_column_id=>16
,p_column_alias=>'DMIN'
,p_column_display_sequence=>160
,p_column_heading=>'Dmin'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3193872755406405)
,p_query_column_id=>17
,p_column_alias=>'FELT'
,p_column_display_sequence=>170
,p_column_heading=>'Felt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3193986629406406)
,p_query_column_id=>18
,p_column_alias=>'TIME'
,p_column_display_sequence=>180
,p_column_heading=>'Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194071764406407)
,p_query_column_id=>19
,p_column_alias=>'TYPE3'
,p_column_display_sequence=>190
,p_column_heading=>'Type3'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194108440406408)
,p_query_column_id=>20
,p_column_alias=>'ALERT'
,p_column_display_sequence=>200
,p_column_heading=>'Alert'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194219242406409)
,p_query_column_id=>21
,p_column_alias=>'PLACE'
,p_column_display_sequence=>210
,p_column_heading=>'Place'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194337567406410)
,p_query_column_id=>22
,p_column_alias=>'TITLE'
,p_column_display_sequence=>220
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194420474406411)
,p_query_column_id=>23
,p_column_alias=>'TYPES'
,p_column_display_sequence=>230
,p_column_heading=>'Types'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194548808406412)
,p_query_column_id=>24
,p_column_alias=>'DETAIL'
,p_column_display_sequence=>240
,p_column_heading=>'Detail'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194629349406413)
,p_query_column_id=>25
,p_column_alias=>'STATUS'
,p_column_display_sequence=>250
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194759363406414)
,p_query_column_id=>26
,p_column_alias=>'MAGTYPE'
,p_column_display_sequence=>260
,p_column_heading=>'Magtype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194887251406415)
,p_query_column_id=>27
,p_column_alias=>'SOURCES'
,p_column_display_sequence=>270
,p_column_heading=>'Sources'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3194989945406416)
,p_query_column_id=>28
,p_column_alias=>'TSUNAMI'
,p_column_display_sequence=>280
,p_column_heading=>'Tsunami'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195010606406417)
,p_query_column_id=>29
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>290
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_web_source_comp_param(
 p_id=>wwv_flow_api.id(3195179298406418)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_api.id(3193118261388095)
,p_page_plug_id=>wwv_flow_api.id(3129422035898338)
,p_value_type=>'STATIC'
,p_value=>'geojson'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3195291886406419)
,p_name=>'crgithlg'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_api.id(3099756599883040)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195375571406420)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195483540406421)
,p_query_column_id=>2
,p_column_alias=>'URL'
,p_column_display_sequence=>20
,p_column_heading=>'Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195567099406422)
,p_query_column_id=>3
,p_column_alias=>'FORK'
,p_column_display_sequence=>30
,p_column_heading=>'Fork'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195654808406423)
,p_query_column_id=>4
,p_column_alias=>'NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195732566406424)
,p_query_column_id=>5
,p_column_alias=>'SIZE_'
,p_column_display_sequence=>50
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195881858406425)
,p_query_column_id=>6
,p_column_alias=>'FORKS'
,p_column_display_sequence=>60
,p_column_heading=>'Forks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3195933603406426)
,p_query_column_id=>7
,p_column_alias=>'ID2'
,p_column_display_sequence=>70
,p_column_heading=>'Id2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196010290406427)
,p_query_column_id=>8
,p_column_alias=>'URL2'
,p_column_display_sequence=>80
,p_column_heading=>'Url2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196133205406428)
,p_query_column_id=>9
,p_column_alias=>'TYPE'
,p_column_display_sequence=>90
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196239937406429)
,p_query_column_id=>10
,p_column_alias=>'LOGIN'
,p_column_display_sequence=>100
,p_column_heading=>'Login'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196317598406430)
,p_query_column_id=>11
,p_column_alias=>'NODE_ID'
,p_column_display_sequence=>110
,p_column_heading=>'Node Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196467609406431)
,p_query_column_id=>12
,p_column_alias=>'HTML_URL'
,p_column_display_sequence=>120
,p_column_heading=>'Html Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196518273406432)
,p_query_column_id=>13
,p_column_alias=>'GISTS_URL'
,p_column_display_sequence=>130
,p_column_heading=>'Gists Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196674738406433)
,p_query_column_id=>14
,p_column_alias=>'REPOS_URL'
,p_column_display_sequence=>140
,p_column_heading=>'Repos Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196773345406434)
,p_query_column_id=>15
,p_column_alias=>'AVATAR_URL'
,p_column_display_sequence=>150
,p_column_heading=>'Avatar Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196857474406435)
,p_query_column_id=>16
,p_column_alias=>'EVENTS_URL'
,p_column_display_sequence=>160
,p_column_heading=>'Events Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3196963574406436)
,p_query_column_id=>17
,p_column_alias=>'SITE_ADMIN'
,p_column_display_sequence=>170
,p_column_heading=>'Site Admin'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197014150406437)
,p_query_column_id=>18
,p_column_alias=>'GRAVATAR_ID'
,p_column_display_sequence=>180
,p_column_heading=>'Gravatar Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197142917406438)
,p_query_column_id=>19
,p_column_alias=>'STARRED_URL'
,p_column_display_sequence=>190
,p_column_heading=>'Starred Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197242422406439)
,p_query_column_id=>20
,p_column_alias=>'FOLLOWERS_URL'
,p_column_display_sequence=>200
,p_column_heading=>'Followers Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197316746406440)
,p_query_column_id=>21
,p_column_alias=>'FOLLOWING_URL'
,p_column_display_sequence=>210
,p_column_heading=>'Following Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197475722406441)
,p_query_column_id=>22
,p_column_alias=>'ORGANIZATIONS_URL'
,p_column_display_sequence=>220
,p_column_heading=>'Organizations Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197500523406442)
,p_query_column_id=>23
,p_column_alias=>'SUBSCRIPTIONS_URL'
,p_column_display_sequence=>230
,p_column_heading=>'Subscriptions Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197622645406443)
,p_query_column_id=>24
,p_column_alias=>'RECEIVED_EVENTS_URL'
,p_column_display_sequence=>240
,p_column_heading=>'Received Events Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197704462406444)
,p_query_column_id=>25
,p_column_alias=>'GIT_URL'
,p_column_display_sequence=>250
,p_column_heading=>'Git Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197881241406445)
,p_query_column_id=>26
,p_column_alias=>'LICENSE'
,p_column_display_sequence=>260
,p_column_heading=>'License'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3197989179406446)
,p_query_column_id=>27
,p_column_alias=>'KEY'
,p_column_display_sequence=>270
,p_column_heading=>'Key'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3198039349406447)
,p_query_column_id=>28
,p_column_alias=>'URL3'
,p_column_display_sequence=>280
,p_column_heading=>'Url3'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3198117807406448)
,p_query_column_id=>29
,p_column_alias=>'NAME2'
,p_column_display_sequence=>290
,p_column_heading=>'Name2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3198233142406449)
,p_query_column_id=>30
,p_column_alias=>'NODE_ID2'
,p_column_display_sequence=>300
,p_column_heading=>'Node Id2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3198318967406450)
,p_query_column_id=>31
,p_column_alias=>'SPDX_ID'
,p_column_display_sequence=>310
,p_column_heading=>'Spdx Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238320476476201)
,p_query_column_id=>32
,p_column_alias=>'NODE_ID3'
,p_column_display_sequence=>320
,p_column_heading=>'Node Id3'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238491952476202)
,p_query_column_id=>33
,p_column_alias=>'PRIVATE'
,p_column_display_sequence=>330
,p_column_heading=>'Private'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238528263476203)
,p_query_column_id=>34
,p_column_alias=>'SSH_URL'
,p_column_display_sequence=>340
,p_column_heading=>'Ssh Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238670781476204)
,p_query_column_id=>35
,p_column_alias=>'SVN_URL'
,p_column_display_sequence=>350
,p_column_heading=>'Svn Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238743309476205)
,p_query_column_id=>36
,p_column_alias=>'ARCHIVED'
,p_column_display_sequence=>360
,p_column_heading=>'Archived'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238850175476206)
,p_query_column_id=>37
,p_column_alias=>'DISABLED'
,p_column_display_sequence=>370
,p_column_heading=>'Disabled'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3238941610476207)
,p_query_column_id=>38
,p_column_alias=>'HAS_WIKI'
,p_column_display_sequence=>380
,p_column_heading=>'Has Wiki'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239006323476208)
,p_query_column_id=>39
,p_column_alias=>'HOMEPAGE'
,p_column_display_sequence=>390
,p_column_heading=>'Homepage'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239134956476209)
,p_query_column_id=>40
,p_column_alias=>'HTML_URL2'
,p_column_display_sequence=>400
,p_column_heading=>'Html Url2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239288073476210)
,p_query_column_id=>41
,p_column_alias=>'KEYS_URL'
,p_column_display_sequence=>410
,p_column_heading=>'Keys Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239383176476211)
,p_query_column_id=>42
,p_column_alias=>'LANGUAGE'
,p_column_display_sequence=>420
,p_column_heading=>'Language'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239438236476212)
,p_query_column_id=>43
,p_column_alias=>'TAGS_URL'
,p_column_display_sequence=>430
,p_column_heading=>'Tags Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239560301476213)
,p_query_column_id=>44
,p_column_alias=>'WATCHERS'
,p_column_display_sequence=>440
,p_column_heading=>'Watchers'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239696704476214)
,p_query_column_id=>45
,p_column_alias=>'BLOBS_URL'
,p_column_display_sequence=>450
,p_column_heading=>'Blobs Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239749538476215)
,p_query_column_id=>46
,p_column_alias=>'CLONE_URL'
,p_column_display_sequence=>460
,p_column_heading=>'Clone Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239810533476216)
,p_query_column_id=>47
,p_column_alias=>'FORKS_URL'
,p_column_display_sequence=>470
,p_column_heading=>'Forks Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3239979156476217)
,p_query_column_id=>48
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>480
,p_column_heading=>'Full Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240069729476218)
,p_query_column_id=>49
,p_column_alias=>'HAS_PAGES'
,p_column_display_sequence=>490
,p_column_heading=>'Has Pages'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240197255476219)
,p_query_column_id=>50
,p_column_alias=>'HOOKS_URL'
,p_column_display_sequence=>500
,p_column_heading=>'Hooks Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240229469476220)
,p_query_column_id=>51
,p_column_alias=>'PULLS_URL'
,p_column_display_sequence=>510
,p_column_heading=>'Pulls Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240393363476221)
,p_query_column_id=>52
,p_column_alias=>'PUSHED_AT'
,p_column_display_sequence=>520
,p_column_heading=>'Pushed At'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240411021476222)
,p_query_column_id=>53
,p_column_alias=>'TEAMS_URL'
,p_column_display_sequence=>530
,p_column_heading=>'Teams Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240581839476223)
,p_query_column_id=>54
,p_column_alias=>'TREES_URL'
,p_column_display_sequence=>540
,p_column_heading=>'Trees Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240606949476224)
,p_query_column_id=>55
,p_column_alias=>'CREATED_AT'
,p_column_display_sequence=>550
,p_column_heading=>'Created At'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240788672476225)
,p_query_column_id=>56
,p_column_alias=>'EVENTS_URL2'
,p_column_display_sequence=>560
,p_column_heading=>'Events Url2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240894033476226)
,p_query_column_id=>57
,p_column_alias=>'HAS_ISSUES'
,p_column_display_sequence=>570
,p_column_heading=>'Has Issues'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3240922057476227)
,p_query_column_id=>58
,p_column_alias=>'ISSUES_URL'
,p_column_display_sequence=>580
,p_column_heading=>'Issues Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241038287476228)
,p_query_column_id=>59
,p_column_alias=>'LABELS_URL'
,p_column_display_sequence=>590
,p_column_heading=>'Labels Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241116106476229)
,p_query_column_id=>60
,p_column_alias=>'MERGES_URL'
,p_column_display_sequence=>600
,p_column_heading=>'Merges Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241247011476230)
,p_query_column_id=>61
,p_column_alias=>'MIRROR_URL'
,p_column_display_sequence=>610
,p_column_heading=>'Mirror Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241323422476231)
,p_query_column_id=>62
,p_column_alias=>'UPDATED_AT'
,p_column_display_sequence=>620
,p_column_heading=>'Updated At'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241495905476232)
,p_query_column_id=>63
,p_column_alias=>'ARCHIVE_URL'
,p_column_display_sequence=>630
,p_column_heading=>'Archive Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241505180476233)
,p_query_column_id=>64
,p_column_alias=>'COMMITS_URL'
,p_column_display_sequence=>640
,p_column_heading=>'Commits Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241609365476234)
,p_query_column_id=>65
,p_column_alias=>'COMPARE_URL'
,p_column_display_sequence=>650
,p_column_heading=>'Compare Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241743425476235)
,p_query_column_id=>66
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>660
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241813056476236)
,p_query_column_id=>67
,p_column_alias=>'FORKS_COUNT'
,p_column_display_sequence=>670
,p_column_heading=>'Forks Count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3241978004476237)
,p_query_column_id=>68
,p_column_alias=>'OPEN_ISSUES'
,p_column_display_sequence=>680
,p_column_heading=>'Open Issues'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242030388476238)
,p_query_column_id=>69
,p_column_alias=>'BRANCHES_URL'
,p_column_display_sequence=>690
,p_column_heading=>'Branches Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242109904476239)
,p_query_column_id=>70
,p_column_alias=>'COMMENTS_URL'
,p_column_display_sequence=>700
,p_column_heading=>'Comments Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242281747476240)
,p_query_column_id=>71
,p_column_alias=>'CONTENTS_URL'
,p_column_display_sequence=>710
,p_column_heading=>'Contents Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242384976476241)
,p_query_column_id=>72
,p_column_alias=>'GIT_REFS_URL'
,p_column_display_sequence=>720
,p_column_heading=>'Git Refs Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242477201476242)
,p_query_column_id=>73
,p_column_alias=>'GIT_TAGS_URL'
,p_column_display_sequence=>730
,p_column_heading=>'Git Tags Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242506380476243)
,p_query_column_id=>74
,p_column_alias=>'HAS_PROJECTS'
,p_column_display_sequence=>740
,p_column_heading=>'Has Projects'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242697281476244)
,p_query_column_id=>75
,p_column_alias=>'RELEASES_URL'
,p_column_display_sequence=>750
,p_column_heading=>'Releases Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242777202476245)
,p_query_column_id=>76
,p_column_alias=>'STATUSES_URL'
,p_column_display_sequence=>760
,p_column_heading=>'Statuses Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242802873476246)
,p_query_column_id=>77
,p_column_alias=>'ASSIGNEES_URL'
,p_column_display_sequence=>770
,p_column_heading=>'Assignees Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3242979512476247)
,p_query_column_id=>78
,p_column_alias=>'DOWNLOADS_URL'
,p_column_display_sequence=>780
,p_column_heading=>'Downloads Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243083366476248)
,p_query_column_id=>79
,p_column_alias=>'HAS_DOWNLOADS'
,p_column_display_sequence=>790
,p_column_heading=>'Has Downloads'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243163322476249)
,p_query_column_id=>80
,p_column_alias=>'LANGUAGES_URL'
,p_column_display_sequence=>800
,p_column_heading=>'Languages Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243275867476250)
,p_query_column_id=>81
,p_column_alias=>'DEFAULT_BRANCH'
,p_column_display_sequence=>810
,p_column_heading=>'Default Branch'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243323002476201)
,p_query_column_id=>82
,p_column_alias=>'MILESTONES_URL'
,p_column_display_sequence=>820
,p_column_heading=>'Milestones Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243492459476202)
,p_query_column_id=>83
,p_column_alias=>'STARGAZERS_URL'
,p_column_display_sequence=>830
,p_column_heading=>'Stargazers Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243593968476203)
,p_query_column_id=>84
,p_column_alias=>'WATCHERS_COUNT'
,p_column_display_sequence=>840
,p_column_heading=>'Watchers Count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243673186476204)
,p_query_column_id=>85
,p_column_alias=>'DEPLOYMENTS_URL'
,p_column_display_sequence=>850
,p_column_heading=>'Deployments Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243767772476205)
,p_query_column_id=>86
,p_column_alias=>'GIT_COMMITS_URL'
,p_column_display_sequence=>860
,p_column_heading=>'Git Commits Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243866189476206)
,p_query_column_id=>87
,p_column_alias=>'SUBSCRIBERS_URL'
,p_column_display_sequence=>870
,p_column_heading=>'Subscribers Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3243965729476207)
,p_query_column_id=>88
,p_column_alias=>'CONTRIBUTORS_URL'
,p_column_display_sequence=>880
,p_column_heading=>'Contributors Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244026709476208)
,p_query_column_id=>89
,p_column_alias=>'ISSUE_EVENTS_URL'
,p_column_display_sequence=>890
,p_column_heading=>'Issue Events Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244131407476209)
,p_query_column_id=>90
,p_column_alias=>'STARGAZERS_COUNT'
,p_column_display_sequence=>900
,p_column_heading=>'Stargazers Count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244249443476210)
,p_query_column_id=>91
,p_column_alias=>'SUBSCRIPTION_URL'
,p_column_display_sequence=>910
,p_column_heading=>'Subscription Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244311683476211)
,p_query_column_id=>92
,p_column_alias=>'COLLABORATORS_URL'
,p_column_display_sequence=>920
,p_column_heading=>'Collaborators Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244421246476212)
,p_query_column_id=>93
,p_column_alias=>'ISSUE_COMMENT_URL'
,p_column_display_sequence=>930
,p_column_heading=>'Issue Comment Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244538380476213)
,p_query_column_id=>94
,p_column_alias=>'NOTIFICATIONS_URL'
,p_column_display_sequence=>940
,p_column_heading=>'Notifications Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244604614476214)
,p_query_column_id=>95
,p_column_alias=>'OPEN_ISSUES_COUNT'
,p_column_display_sequence=>950
,p_column_heading=>'Open Issues Count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3244715161476215)
,p_name=>'credu_alumnauthbasic'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_api.id(3504396842672210)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244812275476216)
,p_query_column_id=>1
,p_column_alias=>'ALU_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Alu Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3244910002476217)
,p_query_column_id=>2
,p_column_alias=>'DNI'
,p_column_display_sequence=>20
,p_column_heading=>'Dni'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3245045491476218)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>30
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3245173774476219)
,p_query_column_id=>4
,p_column_alias=>'APELLIDO'
,p_column_display_sequence=>40
,p_column_heading=>'Apellido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3245275246476220)
,p_query_column_id=>5
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>50
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3245315680476221)
,p_query_column_id=>6
,p_column_alias=>'EDAD'
,p_column_display_sequence=>60
,p_column_heading=>'Edad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3245446922476222)
,p_query_column_id=>7
,p_column_alias=>'GENERO'
,p_column_display_sequence=>70
,p_column_heading=>'Genero'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3245576726476223)
,p_query_column_id=>8
,p_column_alias=>'PAIS_ID'
,p_column_display_sequence=>80
,p_column_heading=>'Pais Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'Subqueyes 3'
,p_alias=>'SUBQUEYES-3'
,p_step_title=>'Subqueyes 3'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301181408'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6505995925883309)
,p_name=>'subquery con case'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*Este ejemplo demuestra que las subconsultas escalares se pueden utilizar en expresiones CASE. ',
'La consulta interna devuelve el valor 20, que es el identificador de departamento del departamento cuyo',
unistr(' identificador de ubicaci\00F3n es 1800. La expresi\00F3n CASE de la consulta externa utiliza el resultado de la'),
unistr('  consulta interna para mostrar el identificador de empleado, los apellidos y un valor de Canad\00E1 o EE.UU., '),
'  dependiendo de si el identificador de departamento del registro recuperado por la consulta externa es 20 o no.*/',
'',
'SELECT employee_id codigo, last_name apellido,',
'       (CASE',
'        WHEN department_id =',
'                 (SELECT department_id',
'                  FROM hr.departments',
'                  WHERE location_id = 1800)',
'         THEN ''Canada''',
'         ELSE ''USA'' END) ubicacion',
'FROM hr.employees;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506024534883310)
,p_query_column_id=>1
,p_column_alias=>'CODIGO'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506127320883311)
,p_query_column_id=>2
,p_column_alias=>'APELLIDO'
,p_column_display_sequence=>20
,p_column_heading=>'Apellido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506243162883312)
,p_query_column_id=>3
,p_column_alias=>'UBICACION'
,p_column_display_sequence=>30
,p_column_heading=>'Ubicacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6506370123883313)
,p_name=>unistr('subquery  comparaci\00F3n entre pares - where in (select)')
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT employee_id, manager_id, department_id',
'FROM  hr.employees',
'WHERE (manager_id, department_id) IN',
'                      (SELECT manager_id, department_id',
'                       FROM  hr.employees',
'                       WHERE employee_id IN (199,174))',
'AND  employee_id NOT IN (199,174) ',
'',
unistr('/*El ejemplo muestra una subconsulta de varias columnas, ya que la subconsulta devuelve m\00E1s de una columna. '),
'Compara los valores de la columna MANAGER_ID y de la columna DEPARTMENT_ID de cada fila en la tabla EMPLOYEES',
' con los valores de la columna MANAGER_ID y la columna DEPARTMENT_ID para los empleados con',
unistr(' EMPLOYEE_ID 199 \00F3 174.'),
'Primero, se ejecuta la subconsulta para recuperar los valores de MANAGER_ID y DEPARTMENT_ID para los empleados ',
unistr('con EMPLOYEE_ID 199 \00F3 174. Estos valores se comparan con la columna MANAGER_ID y la columna DEPARTMENT_ID de cada'),
unistr(' fila de la tabla EMPLOYEES. Si los valores se corresponden, se muestra la fila. En la salida, no se mostrar\00E1n '),
unistr(' los registros de los empleados con EMPLOYEE_ID 199 \00F3 174.*/')))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506490097883314)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506506368883315)
,p_query_column_id=>2
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Manager Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506623433883316)
,p_query_column_id=>3
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Department Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6506744775883317)
,p_name=>unistr('Subconsultas en la cl\00E1usula ORDER BY')
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT employee_id, last_name',
'FROM HR.employees e',
'ORDER BY (SELECT department_name',
'                     FROM HR.departments d',
'                     WHERE e.department_id = d.department_id)',
'',
unistr('/*El segundo ejemplo demuestra que las subconsultas escalares se pueden utilizar en la cl\00E1usula ORDER BY. '),
unistr('En el ejemplo, se ordena la salida bas\00E1ndose en DEPARTMENT_'),
'NAME al hacer corresponder el valor de DEPARTMENT_ID de la tabla EMPLOYEES con el valor de DEPARTMENT_ID de la',
unistr(' tabla DEPARTMENTS. Esta comparaci\00F3n se realiza en una subconsulta escalar en la cl\00E1usula ORDER BY.*/')))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507257941883322)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507330988883323)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6506800600883318)
,p_name=>unistr('subquery  comparaci\00F3n entre NO pares - where in (select)')
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  employee_id, manager_id, department_id',
'FROM    HR.employees',
'WHERE manager_id IN',
'                  (SELECT  manager_id',
'                   FROM    HR.employees',
'                   WHERE employee_id IN (174,199))',
'AND department_id IN',
'                  (SELECT  department_id',
'                   FROM    HR.employees',
'                   WHERE employee_id IN (174,199))',
'AND  employee_id NOT IN (199,174)',
'',
unistr('/*El ejemplo muestra una comparaci\00F3n entre no pares de las columnas. '),
'Muestra los valores de EMPLOYEE_ID, MANAGER_ID y DEPARTMENT_ID de cualquier empleado cuyo identificador de ',
'supervisor se corresponda con los identificadores de supervisor de los empleados cuyos identificadores sean:',
unistr(' 174 \00F3 199 y los valores de DEPARTMENT_ID se correspondan con los identificadores de departamento cuyo '),
unistr(' identificador de empleado sea 174 \00F3 199.'),
'',
'Primero, se ejecuta la subconsulta para recuperar los valores de MANAGER_ID para los empleados con el valor de',
unistr(' EMPLOYEE_ID 199 \00F3 174. De forma parecida, se ejecuta la segunda subconsulta para recuperar los valores de'),
unistr(' DEPARTMENT_ID para los empleados con el valor de EMPLOYEE_ID 199 \00F3 174. Los valores recuperados de las columnas'),
'  MANAGER_ID y DEPARTMENT_ID se comparan con las columnas MANAGER_ID y DEPARTMENT_ID de cada fila de la tabla',
'   EMPLOYEES. Si la columna MANAGER_ID de la fila de la tabla EMPLOYEES se corresponde con cualquiera de los',
'    valores de MANAGER_ID recuperados por la subconsulta interna y si la columna DEPARTMENT_ID de la fila de la',
'     tabla EMPLOYEES se corresponde con cualquiera de los valores de DEPARTMENT_ID recuperados por la segunda',
'      subconsulta, se muestra el registro.  */'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6506923247883319)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507040319883320)
,p_query_column_id=>2
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Manager Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507198899883321)
,p_query_column_id=>3
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Department Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6507475237883324)
,p_name=>'Subconsultas Correlacionadas 1 - Select where x > (select avg)'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT last_name, salary,  department_id',
'FROM   hr.employees outer',
'WHERE  salary >',
'          (SELECT AVG(salary)',
'           FROM   hr.employees',
'           WHERE  department_id = outer.department_id)',
'',
unistr('/*El ejemplo determina qu\00E9 empleados ganan m\00E1s que el salario medio de su departamento. '),
unistr('En este caso, la subconsulta correlacionada calcula espec\00EDficamente el salario medio de cada departamento.'),
unistr('Como la consulta externa y la interna utilizan la tabla EMPLOYEES en la cl\00E1usula FROM, se asigna un alias a'),
unistr(' EMPLOYEES en la sentencia SELECT externa por motivos de claridad. El alias no s\00F3lo hace que toda la sentencia'),
unistr('  SELECT resulte m\00E1s legible, sino que sin \00E9l, la consulta no funcionar\00EDa correctamente, ya que la sentencia '),
unistr('  interna no podr\00EDa distinguir la columna de la tabla interna de la columna de la tabla externa.*/')))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507557016883325)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507665472883326)
,p_query_column_id=>2
,p_column_alias=>'SALARY'
,p_column_display_sequence=>20
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507731424883327)
,p_query_column_id=>3
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Department Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6507846931883328)
,p_name=>'Subconsultas Correlacionadas 1 - Select where x <= (select count)'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.employee_id, last_name,e.job_id',
'FROM    hr.employees e ',
'WHERE  2 <= ',
'            (SELECT COUNT(*)',
'             FROM   hr.job_history ',
'             WHERE  employee_id = e.employee_id)',
'',
'/*El ejemplo muestra los detalles de los empleados que han cambiado de puesto al menos dos veces. ',
unistr('Oracle Server eval\00FAa una subconsulta correlacionada de esta manera:'),
'',
unistr('1. Selecciona una fila de la tabla especificada en la consulta externa. \00C9sta ser\00E1 la fila candidata actual.'),
'2. Almacena el valor de la columna a la que se hace referencia en la subconsulta desde esta fila candidata.',
' (En el ejemplo, la columna a la que se hace referencia en la subconsulta es E.EMPLOYEE_ID).',
'',
unistr('3. Realiza la subconsulta con su condici\00F3n haciendo referencia al valor de la fila candidata de la consulta externa.'),
unistr(' (La funci\00F3n de grupo COUNT(*) se eval\00FAa bas\00E1ndose en el valor de la columna E.EMPLOYEE_ID obtenida en el paso 2).'),
'',
unistr('4. Eval\00FAa la cl\00E1usula WHERE de la consulta externa bas\00E1ndose en los resultados de la subconsulta realizada en el'),
' paso 3. Esto determina si se selecciona la fila candidata para la salida. ',
unistr(' (En el ejemplo, el n\00FAmero de veces que un empleado ha cambiado de puesto, evaluado por la subconsulta, '),
unistr(' se compara con 2 en la cl\00E1usula WHERE de la consulta externa. Si se satisface la condici\00F3n, se muestra el'),
'  registro de ese empleado).',
'',
unistr('5. Repite el procedimiento para la siguiente fila candidata de la tabla, y as\00ED sucesivamente hasta que se hayan '),
'procesado todas las filas de la tabla.',
'',
unistr('La correlaci\00F3n se establece mediante un elemento de la consulta externa en la subconsulta. En este ejemplo, '),
'se compara EMPLOYEE_ID de la tabla de la subconsulta con el valor de EMPLOYEE_ID de la tabla de la ',
'consulta externa.*/'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6508263973883332)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Employee Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6507997986883329)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6508371977883333)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Job Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6508436676883334)
,p_name=>'Subconsulta WHERE  EXISTS (SELECT ''null'''
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT employee_id, last_name, job_id, department_id ',
'FROM   hr.employees outer  ',
'   WHERE  EXISTS ',
'     (SELECT ''null nada''  FROM   hr.employees   WHERE  manager_id = outer.employee_id) ',
'',
unistr('/*Este ejemplo retorna todos los empleados que tienen al menos un empleado que se reporte a \00E9l. '),
'Osea muestra los empleados que son supervisores.*/'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6508510561883335)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6508659699883336)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6508748264883337)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Job Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6508875173883338)
,p_query_column_id=>4
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Department Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6508982059883339)
,p_name=>'Subconsulta WHERE  NOT EXISTS (SELECT ''null'''
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_id, department_name',
'FROM   HR.departments d',
'WHERE NOT EXISTS (SELECT ''X''',
'                       FROM   HR. employees',
'                 WHERE  department_id = d.department_id)',
'/*Este ejemplo muestra los departamentos que no tienen empleados.*/'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6509389545883343)
,p_query_column_id=>1
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Department Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6509489767883344)
,p_query_column_id=>2
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Department Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6509543643883345)
,p_name=>'Subconsulta 4 withs'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH buenos_emps',
'      AS',
'      (',
'        SELECT  ',
'               e.last_name AS nombre,',
'               d.department_name AS departamento,',
'               j.job_title AS puesto,',
'               e.salary AS salario',
'        FROM hr.employees e, hr.departments d, hr.jobs j',
'        WHERE e.department_id = d.department_id',
'        AND e.job_id = j.job_id',
'        AND e.salary >',
'                      (',
'                        SELECT  AVG(salary)',
'                        FROM hr.employees',
'                        WHERE department_id = e.department_id',
'                      )',
'      ),',
'salario_medio',
'      AS',
'      (',
'        SELECT  ',
'              job_id as thejobid, ',
'              job_title AS puesto,',
'              min_salary AS limite_inferior,',
'              max_salary AS limite_superior,',
'              max_salary-min_salary AS media',
'        FROM hr.jobs            ',
'      ) ,',
'tercersubq ',
'     as (',
'          SELECT job_id, employee_id ',
'          from hr.job_history jbh,  salario_medio salm  ',
'          where jbh.job_id = salm.thejobid',
'     ),',
'cuartosubq ',
'    as (',
'        SELECT  b.* , t.*',
'        FROM buenos_emps b, salario_medio s, tercersubq t',
'        WHERE b.puesto = s.puesto',
'        AND salario = limite_superior',
'    )',
'',
'select * from cuartosubq q4 where q4.JOB_ID = ''ST_CLERK'';'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6509682542883346)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6509734047883347)
,p_query_column_id=>2
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>20
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6509802982883348)
,p_query_column_id=>3
,p_column_alias=>'PUESTO'
,p_column_display_sequence=>30
,p_column_heading=>'Puesto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6509927800883349)
,p_query_column_id=>4
,p_column_alias=>'SALARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Salario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6510040156883350)
,p_query_column_id=>5
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Job Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6900156425173001)
,p_query_column_id=>6
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Employee Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6900269051173002)
,p_plug_name=>'Subconsulta 4 withs, bulks into intermedios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6901422579173014)
,p_name=>'CR-Subconsulta41'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001, c002, c003,c004  From apex_collections  ',
'        where collection_name = ''4WITHS_COLECTION_APEX''; ',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6901532379173015)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>10
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6901619112173016)
,p_query_column_id=>2
,p_column_alias=>'C002'
,p_column_display_sequence=>20
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6901775139173017)
,p_query_column_id=>3
,p_column_alias=>'C003'
,p_column_display_sequence=>30
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6901820952173018)
,p_query_column_id=>4
,p_column_alias=>'C004'
,p_column_display_sequence=>40
,p_column_heading=>'C004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6902026665173020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6900269051173002)
,p_button_name=>'query_4with'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Query 4with'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6900904352173009)
,p_name=>'query_4with'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6902026665173020)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6901059413173010)
,p_event_id=>wwv_flow_api.id(6900904352173009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'avsal number; ',
'TYPE record_1 IS RECORD',
'   (',
'    c1 VARCHAR2(50),',
'    c2 VARCHAR2(250),',
'    c3 VARCHAR2(25),',
'    c4 VARCHAR2(25)',
'   );',
' TYPE record1_t IS TABLE OF record_1;',
' alrecord1 record1_t;  ',
'',
'TYPE record_2 IS RECORD',
'   (',
'    c1 VARCHAR2(50),',
'    c2 VARCHAR2(250),',
'    c3 VARCHAR2(50),',
'    c4 VARCHAR2(50)',
'   );',
' TYPE record2_t IS TABLE OF record_2;',
' alrecord2 record2_t;  ',
' ',
'',
'begin ',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => Subconsulta 4 withs, bulks into records tbl. p1'');',
'    ',
'WITH buenos_emps',
'      AS',
'      (',
'        SELECT  ',
'               e.last_name AS nombre,',
'               d.department_name AS departamento,',
'               j.job_title AS puesto,',
'               e.salary AS salario    ',
'        FROM hr.employees e, hr.departments d, hr.jobs j',
'        WHERE e.department_id = d.department_id',
'        AND e.job_id = j.job_id',
'        AND e.salary >',
'                      (',
'                        SELECT  AVG(salary) ',
'                        FROM hr.employees',
'                        WHERE department_id = e.department_id',
'                      )',
'      ),',
'salario_medio',
'      AS',
'      (',
'        SELECT  ',
'              job_id as thejobid, ',
'              job_title AS puesto,',
'              min_salary AS limite_inferior,',
'              max_salary AS limite_superior,',
'              max_salary-min_salary AS media ',
'        FROM hr.jobs            ',
'      ) ,',
'tercersubq ',
'     as (',
'          SELECT job_id, employee_id  ',
'          from hr.job_history jbh,  salario_medio salm  ',
'          where jbh.job_id = salm.thejobid',
'     ),',
'cuartosubq ',
'    as (',
'        SELECT  b.* , t.*',
'        FROM buenos_emps b, salario_medio s, tercersubq t',
'        WHERE b.puesto = s.puesto',
'        AND salario = limite_superior',
'    )',
'',
'select q4.nombre, q4.departamento, q4.puesto, q4.salario BULK COLLECT INTO alrecord1 from cuartosubq q4 where q4.JOB_ID = ''ST_CLERK'';',
'',
'apex_debug.message(p_message => ''CBM => Subconsulta 4 withs, bulks into records tbl. p2'');',
' if not apex_collection.collection_exists(''4WITHS_COLECTION_APEX'') then ',
'     apex_collection.create_collection(''4WITHS_COLECTION_APEX'');',
'    else',
'     apex_collection.truncate_collection(''4WITHS_COLECTION_APEX'');',
'    END IF;',
'       -- meterlo a un collection e imprimirlo como CR  en la page. ',
'FOR i IN 1 .. alrecord1.COUNT() LOOP ',
'        apex_collection.add_member(',
'            p_collection_name => ''4WITHS_COLECTION_APEX'',',
'                p_c001 => alrecord1(i).c1,',
'                p_c002 => alrecord1(i).c2,',
'                p_c003 => alrecord1(i).c3,',
'                p_c004 => alrecord1(i).c4);',
'     end loop;',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6901901427173019)
,p_event_id=>wwv_flow_api.id(6900904352173009)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6901422579173014)
);
null;
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'FactoialSV'
,p_alias=>'FACTOIALSV'
,p_step_title=>'FactoialSV'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210222092130'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4900853785126308)
,p_plug_name=>'factorialSR'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4901248416126312)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4900853785126308)
,p_button_name=>'CALC_FACT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Calc Fact'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4900996288126309)
,p_name=>'P10_FACT_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4900853785126308)
,p_prompt=>'Fact Num'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4901027642126310)
,p_name=>'P10_FACT_NUM_H'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4900853785126308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4901183621126311)
,p_name=>'P10_TOTAL_FACT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4900853785126308)
,p_prompt=>'TOTAL_FACT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4902011702126320)
,p_name=>'P10_ITEM_INSOURCE_PLSQLBODY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4900853785126308)
,p_prompt=>'Input'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'salida varchar2(20);',
'begin',
'    select ''hola: '' || :P10_ITEM_INSOURCE_PLSQLBODY into salida from dual; ',
' :P10_ITEM_OUTSOURCE_PLSQLBODY := salida;',
'    return :P10_ITEM_OUTSOURCE_PLSQLBODY;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4902163827126321)
,p_name=>'P10_ITEM_OUTSOURCE_PLSQLBODY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4900853785126308)
,p_prompt=>'Output'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4901354492126313)
,p_name=>'CALC_FACTO'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4901248416126312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4901474254126314)
,p_event_id=>wwv_flow_api.id(4901354492126313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item( "P10_FACT_NUM_H").setValue (apex.item( "P10_FACT_NUM" ).getValue());',
'',
'/*',
' window.alert(apex.item( "P10_FACT_NUM_H" ).getValue());',
' */'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4901595484126315)
,p_event_id=>wwv_flow_api.id(4901354492126313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_TOTAL_FACT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    l_x   number := :P10_FACT_NUM_H; -- Input Item ',
'    l_y   number default 1;',
'    l_str varchar2(100) default l_x;',
'    ',
'begin',
'    ',
'    while l_x > 0 loop',
'        ',
'        l_y := l_y * l_x;',
'        l_x := l_x-1;',
'        ',
'        if l_x> 0 then',
'            l_str := l_str || '' x ''|| l_x;',
'        end if;',
'        ',
'    end loop;',
'    ',
'    l_str := l_str || '' = ''|| l_y;',
'    ',
'    return l_str;',
'    ',
'end;',
'',
''))
,p_attribute_07=>'P10_FACT_NUM_H'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'SubQueryes-1'
,p_alias=>'SUBQUERYES-1'
,p_step_title=>'SubQueryes-1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301154502'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4902230573126322)
,p_name=>'Inline Views- select * t1 , join   t2 - name colors '
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'  select colour, count(*) c',
'  from   ordsdemo.bricks',
'  group  by colour',
') brick_counts',
'join   ordsdemo.colours',
'on     brick_counts.colour = colours.colour_name'))
,p_header=>'Find out which colours you have fewer bricks'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4902890024126328)
,p_query_column_id=>1
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>20
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4902927516126329)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>30
,p_column_heading=>'C'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903008133126330)
,p_query_column_id=>3
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903111318126331)
,p_query_column_id=>4
,p_column_alias=>'MINIMUM_BRICKS_NEEDED'
,p_column_display_sequence=>50
,p_column_heading=>'Minimum Bricks Needed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4903296796126332)
,p_name=>'Inline Views- select * t1 ,  count group by.'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'  select colour, count(*) c',
'  from   ordsdemo.bricks',
'  group  by colour',
') brick_counts'))
,p_header=>'Count the number of bricks you have of each colour. '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903360430126333)
,p_query_column_id=>1
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>10
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903441814126334)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>20
,p_column_heading=>'C'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4903598246126335)
,p_name=>'Inline Views- select * t1 , join   t2 name colors &  brick_counts.c < colours.minimum_bricks_needed'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'  select colour, count(*) c',
'  from   ordsdemo.bricks',
'  group  by colour',
') brick_counts',
'join   ordsdemo.colours',
'on     brick_counts.colour = colours.colour_name',
'and    brick_counts.c < colours.minimum_bricks_needed'))
,p_header=>'Find out which colours you have fewer bricks of than the minimum needed defined in colours. '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903636532126336)
,p_query_column_id=>1
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>10
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903729507126337)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>20
,p_column_heading=>'C'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903882426126338)
,p_query_column_id=>3
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4903913935126339)
,p_query_column_id=>4
,p_column_alias=>'MINIMUM_BRICKS_NEEDED'
,p_column_display_sequence=>40
,p_column_heading=>'Minimum Bricks Needed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4904029860126340)
,p_name=>'Inline Views- min and max brick_id for each colour of brick'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'  select colour, min( brick_id) "min_(brick_id)",  max( brick_id) "max_(brick_id)"',
'  from   ordsdemo.bricks',
'  group  by colour);'))
,p_header=>'Find out which colours you have fewer bricks of than the minimum needed defined in colours. '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4904165025126341)
,p_query_column_id=>1
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>10
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4904504783126345)
,p_query_column_id=>2
,p_column_alias=>'min_(brick_id)'
,p_column_display_sequence=>20
,p_column_heading=>'Min (brick Id)'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4904610117126346)
,p_query_column_id=>3
,p_column_alias=>'max_(brick_id)'
,p_column_display_sequence=>30
,p_column_heading=>'Max (brick Id)'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4904716871126347)
,p_name=>'COLOURS TABLE'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from ordsdemo.colours;'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4904869719126348)
,p_query_column_id=>1
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4904989937126349)
,p_query_column_id=>2
,p_column_alias=>'MINIMUM_BRICKS_NEEDED'
,p_column_display_sequence=>20
,p_column_heading=>'Minimum Bricks Needed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4905089376126350)
,p_name=>'COLOURS bricks'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from ordsdemo.bricks;'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212089942235603)
,p_query_column_id=>1
,p_column_alias=>'BRICK_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Brick Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212125490235604)
,p_query_column_id=>2
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>20
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6212246392235605)
,p_name=>'nested subquery in '
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ordsdemo.colours c',
'where  c.colour_name in (',
'  select b.colour from ordsdemo.bricks b',
');'))
,p_header=>' find all the rows in colours where you have a matching brick'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212309050235606)
,p_query_column_id=>1
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212457900235607)
,p_query_column_id=>2
,p_column_alias=>'MINIMUM_BRICKS_NEEDED'
,p_column_display_sequence=>20
,p_column_heading=>'Minimum Bricks Needed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6212538979235608)
,p_name=>'Nested sub. rows in bricks with a colour where colours.minimum_bricks_needed = 2'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ordsdemo.bricks b',
'where  b.colour in (',
'  select colour_name from ordsdemo.colours ',
'        where  minimum_bricks_needed = 2);',
''))
,p_header=>' find all the rows in colours where you have a matching brick'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212879053235611)
,p_query_column_id=>1
,p_column_alias=>'BRICK_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Brick Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212921577235612)
,p_query_column_id=>2
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>20
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6213019510235613)
,p_name=>'Scalar Subqueries - nvl count of the number of bricks matching each colour'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select colour_name, nvl ( (',
'         select count(*) ',
'         from   ordsdemo.bricks b',
'         where  b.colour = c.colour_name',
'         group  by b.colour',
'       ), 0 ) brick_counts',
'from   ordsdemo.colours c;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6213134514235614)
,p_query_column_id=>1
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6213233585235615)
,p_query_column_id=>2
,p_column_alias=>'BRICK_COUNTS'
,p_column_display_sequence=>20
,p_column_heading=>'Brick Counts'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6213304800235616)
,p_name=>'Scalar Subqueries - find those bricks you have less than the minimum needed like so'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select colour, count(*) c',
'from   ordsdemo.bricks b',
'group  by colour',
'having count(*) < (',
'  select c.minimum_bricks_needed ',
'  from   ordsdemo.colours c',
'  where  c.colour_name = b.colour',
');'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6213693087235619)
,p_query_column_id=>1
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>10
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6213704464235620)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>20
,p_column_heading=>'C'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6213866284235621)
,p_name=>'Scalar Subqueries - find the minimum brick_id for each colour.'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.colour_name, (',
'          select min (brick_id) from ordsdemo.bricks ',
'          where bricks.colour =c.colour_name',
'       ) min_brick_id',
'from   ordsdemo.colours c',
'where  c.colour_name is not null;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214193402235624)
,p_query_column_id=>1
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214212706235625)
,p_query_column_id=>2
,p_column_alias=>'MIN_BRICK_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Min Brick Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'subqueryes-2'
,p_alias=>'SUBQUERYES-2'
,p_step_title=>'subqueryes-2'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301155431'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6214361045235626)
,p_name=>'with 1'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with brick_counts as (',
'  select b.colour, count(*) c',
'  from   ordsdemo.bricks b',
'  group  by b.colour',
')',
'  select c.colour_name, ',
'         c.minimum_bricks_needed, (',
'           select avg ( bc.c )',
'           from   ordsdemo.brick_counts bc',
'         ) mean_bricks_per_colour',
'  from   ordsdemo.colours c',
'  where  c.minimum_bricks_needed < (',
'    select bc.c',
'    from   ordsdemo.brick_counts bc',
'    where  bc.colour = c.colour_name',
'  );'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Which colours you have more bricks of than the minimum needed',
'---- ',
'The average number of bricks you have of each colour'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214455910235627)
,p_query_column_id=>1
,p_column_alias=>'COLOUR_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Colour Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214514256235628)
,p_query_column_id=>2
,p_column_alias=>'MINIMUM_BRICKS_NEEDED'
,p_column_display_sequence=>20
,p_column_heading=>'Minimum Bricks Needed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214634334235629)
,p_query_column_id=>3
,p_column_alias=>'MEAN_BRICKS_PER_COLOUR'
,p_column_display_sequence=>30
,p_column_heading=>'Mean Bricks Per Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6214724180235630)
,p_name=>'with 2'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with brick_counts as ( ',
'  -- 1. Count the bricks by colour',
'  select b.colour, count(*) c',
'  from   ordsdemo.bricks b',
'  group  by b.colour',
'), average_bricks_per_colour as ( ',
'  -- 2. Take the average of these counts',
'  select avg ( c ) average_count',
'  from   ordsdemo.brick_counts',
')',
'  select * from ordsdemo.brick_counts bc  ',
'  join   average_bricks_per_colour ac',
'  -- 3. Return those rows where the value in step 1 is less than in step 2',
'  on     bc.c < average_count; '))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---- Count the bricks by colour',
'---  Take the average of these counts',
'---- Return those rows where the value in step 1 is greater than in step 2'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214815648235631)
,p_query_column_id=>1
,p_column_alias=>'COLOUR'
,p_column_display_sequence=>10
,p_column_heading=>'Colour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6214950122235632)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>20
,p_column_heading=>'C'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215052747235633)
,p_query_column_id=>3
,p_column_alias=>'AVERAGE_COUNT'
,p_column_display_sequence=>30
,p_column_heading=>'Average Count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6215138782235634)
,p_name=>'with 3'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with colour_count as (',
' select count(*) from ordsdemo.colours',
')',
'  select * from ordsdemo.colour_count;'))
,p_header=>'Complete the following with clause to count how many rows there are in colours:'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215204921235635)
,p_query_column_id=>1
,p_column_alias=>'COUNT(*)'
,p_column_display_sequence=>10
,p_column_heading=>'Count(*)'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6215307143235636)
,p_name=>'With 4 function'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  FUNCTION get_avg(pDeptno NUMBER) RETURN NUMBER AS',
'  BEGIN',
'    FOR i IN (SELECT avg(sal) avgsal',
'              FROM ordsdemo.emp',
'              WHERE deptno = pDeptno) LOOP',
' ',
'              RETURN i.avgsal;',
'    END LOOP;',
'  END;',
'SELECT deptno, get_avg(deptno)',
'FROM ordsdemo.dept;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215495859235637)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>10
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215530725235638)
,p_query_column_id=>2
,p_column_alias=>'GET_AVG(DEPTNO)'
,p_column_display_sequence=>20
,p_column_heading=>'Get Avg(deptno)'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6215654406235639)
,p_name=>'With 5 complex HR'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*Este ejemplo muestra los empleados que tiene un salario major al salario promedio de su departamento y',
unistr(' que a su vez su salario es igual al salario m\00E1ximo para el tipo de puesto que desempe\00F1an en la empresa.*/'),
'WITH buenos_emps',
'              AS',
'              (',
'                SELECT  ',
'                       e.last_name AS nombre,',
'                       d.department_name AS departamento,',
'                       j.job_title AS puesto,',
'                       e.salary AS salario',
'                FROM hr.employees e, hr.departments d, hr.jobs j',
'                WHERE e.department_id = d.department_id',
'                AND e.job_id = j.job_id',
'                AND e.salary >',
'                              (',
'                                SELECT  AVG(salary)',
'                                FROM hr.employees',
'                                WHERE department_id = e.department_id',
'                              )',
'              ),',
'salario_medio',
'          AS',
'          (',
'            SELECT  ',
'                  job_title AS puesto,',
'                  min_salary AS limite_inferior,',
'                  max_salary AS limite_superior,',
'                  max_salary-min_salary AS media',
'            FROM hr.jobs            ',
'          )',
'SELECT  b.*',
'FROM buenos_emps b, salario_medio s',
'WHERE b.puesto = s.puesto',
'AND salario = limite_superior;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215773428235640)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215814922235641)
,p_query_column_id=>2
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>20
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6215947718235642)
,p_query_column_id=>3
,p_column_alias=>'PUESTO'
,p_column_display_sequence=>30
,p_column_heading=>'Puesto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6216053493235643)
,p_query_column_id=>4
,p_column_alias=>'SALARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Salario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6216152173235644)
,p_name=>'With 7 emp'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'  emp_count AS (SELECT COUNT(*) num, deptno',
'                FROM ordsdemo.emp',
'                GROUP BY deptno),',
'avg_sal AS (SELECT AVG(sal) avgsal, deptno',
'            FROM ordsdemo.emp',
'            GROUP BY deptno)',
'SELECT dname department, loc location, num "number of employees", avgsal "average salary"',
'FROM ordsdemo.dept, ordsdemo.emp_count, ordsdemo.avg_sal',
'WHERE dept.deptno = emp_count.deptno',
'AND dept.deptno = avg_sal.deptno;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6216276487235645)
,p_query_column_id=>1
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>10
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6216381769235646)
,p_query_column_id=>2
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>20
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6216406780235647)
,p_query_column_id=>3
,p_column_alias=>'number of employees'
,p_column_display_sequence=>30
,p_column_heading=>'Number Of Employees'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6216544880235648)
,p_query_column_id=>4
,p_column_alias=>'average salary'
,p_column_display_sequence=>40
,p_column_heading=>'Average Salary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6216698957235649)
,p_name=>'With 6 complex HR'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* El pasado ejemplo muestra los empleados que no son supervisores y que ganan mas que el salario promedio',
unistr(' de su departamento. Existen otras formas de realizar la misma consulta, pero el uso de la Cl\00E1usula WITH '),
' supone un mejor rendimiento, especialmente para consultas complejas que se usan con frecuencia.*/',
'',
'WITH not_manager',
'      AS',
'      (',
'        SELECT ',
'              e.department_id AS codigo_departamento,',
'              e.first_name||'' ''||e.last_name AS nombre,',
'              e.salary AS salario',
'        FROM hr.employees e',
'        WHERE NOT EXISTS',
'                      (',
'                        SELECT  ''A''',
'                        FROM hr.employees',
'                        WHERE manager_id = e.employee_id',
'                      )',
'      ),',
'promedio_departamento',
'                AS ',
'                (',
'                  SELECT  ',
'                         department_id AS codigo_departamento,',
'                         AVG(salary) AS promedio',
'                  FROM hr.employees',
'                  GROUP BY department_id',
'                )',
'SELECT  *',
'FROM not_manager nm',
'WHERE salario >',
'              (SELECT  promedio',
'               FROM promedio_departamento',
'               WHERE codigo_departamento = nm.codigo_departamento);'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6505421274883304)
,p_query_column_id=>1
,p_column_alias=>'CODIGO_DEPARTAMENTO'
,p_column_display_sequence=>50
,p_column_heading=>'Codigo Departamento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6216794174235650)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6505344499883303)
,p_query_column_id=>3
,p_column_alias=>'SALARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Salario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6505502389883305)
,p_name=>'CONNECT BY PRIOR - START WITH - SYS_CONNECT_BY_PATH'
,p_template=>wwv_flow_api.id(8980639930029058)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ename "Employee",  LEVEL, SYS_CONNECT_BY_PATH (ename, ''/'') "Path"',
'FROM ordsdemo.emp',
'CONNECT BY PRIOR empno = mgr',
'START WITH mgr IS NULL;',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6505631843883306)
,p_query_column_id=>1
,p_column_alias=>'Employee'
,p_column_display_sequence=>10
,p_column_heading=>'Employee'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6505784813883307)
,p_query_column_id=>2
,p_column_alias=>'LEVEL'
,p_column_display_sequence=>20
,p_column_heading=>'Level'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6505868114883308)
,p_query_column_id=>3
,p_column_alias=>'Path'
,p_column_display_sequence=>30
,p_column_heading=>'Path'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'SMTP-gmail-apex'
,p_alias=>'SMTP-GMAIL-APEX'
,p_step_title=>'SMTP-gmail-apex'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210223142554'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6902332974173023)
,p_plug_name=>'send a email'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6902642419173026)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6902332974173023)
,p_button_name=>'send_email'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Send Email'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6902408244173024)
,p_name=>'sende'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6902642419173026)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6902529837173025)
,p_event_id=>wwv_flow_api.id(6902408244173024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'    apex_debug.message(p_message => ''CBM => send email smtp. p1'');',
'',
'  apex_mail.send(',
'    p_to => ''cbena999@gmail.com''',
'    , p_from => ''cbena999@gmail.com''',
'    , p_subj => ''Popularity of Semantic Web Today''',
'    , p_body => q''[',
'        apex yo The 2017 Gartner Hype Cycle indicates that Semantic Web-related ',
'        technologies are heading past the trough of disillusionment. ',
'        We should investigate.',
'      ]''',
'    , p_body_html => q''[',
'        <p>',
'          apex yo html The 2017 Gartner Hype Cycle indicates that Semantic Web-related ',
'          technologies are heading past the trough of disillusionment. We ',
'          should investigate.',
'        </p>',
'      ]''',
'  );',
'  apex_debug.message(p_message => ''CBM => send email smtp. p2'');',
'  apex_mail.push_queue;',
'  apex_debug.message(p_message => ''CBM => send email smtp. p3'');',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'DepartmentCRUD1'
,p_alias=>'DEPARTMENTCRUD1'
,p_step_title=>'DepartmentCRUD1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210223212407'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9652786785180230)
,p_name=>'RC-DPTOSviaAPEX_WEB_SERVICEcallOauth2'
,p_template=>wwv_flow_api.id(8952302246029024)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    n001 deptno,',
'    c001 dname, ',
'    c002 loc',
'FROM apex_collections',
'WHERE collection_name = ''CR-DEPTS'';',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9002313828029089)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9861733421561437)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>10
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:P16_HDEPTNO:#DEPTNO#'
,p_column_linktext=>'#DEPTNO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9861829003561438)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>20
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9861902332561439)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>30
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9660641822245733)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9652786785180230)
,p_button_name=>'PREVIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Previo'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9660772882245734)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9652786785180230)
,p_button_name=>'SIGUIENTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Siguiente'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9660845771245735)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9652786785180230)
,p_button_name=>'PRIMERO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Primero'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5705170798075784)
,p_name=>'P15_MSG_ERROR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9652786785180230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9659028426245716)
,p_name=>'P15_PREV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9652786785180230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9659090264245717)
,p_name=>'P15_NEXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9652786785180230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9659145701245718)
,p_name=>'P15_FIRST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9652786785180230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9661167077245738)
,p_name=>'P15_URL_PAGINATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9652786785180230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9658799729245714)
,p_name=>'Call_GETDepts_API'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Call_GETDepts_API'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9661498872245741)
,p_event_id=>wwv_flow_api.id(9658799729245714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    ORDSDEMO.caller_crudwsdept.Call_GETDepts_API; ',
'',
'END;'))
,p_attribute_03=>'P15_PREV,P15_NEXT,P15_FIRST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9742267836836613)
,p_event_id=>wwv_flow_api.id(9658799729245714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9652786785180230)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9659499327245721)
,p_name=>'Call_GETDepts_WS'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9659583487245722)
,p_event_id=>wwv_flow_api.id(9659499327245721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.event.trigger(document,''Call_GETDepts_API''); ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9661032368245736)
,p_name=>'Go to previous page'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9660641822245733)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9661054917245737)
,p_event_id=>wwv_flow_api.id(9661032368245736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P15_URL_PAGINATION := :P15_PREV;',
'END;'))
,p_attribute_02=>'P15_PREV'
,p_attribute_03=>'P15_URL_PAGINATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9861006319561430)
,p_event_id=>wwv_flow_api.id(9661032368245736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger(document,''Call_GETDepts_API'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9661635099245743)
,p_name=>'Goto first page'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9660845771245735)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9740381519836594)
,p_event_id=>wwv_flow_api.id(9661635099245743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P15_URL_PAGINATION := :P15_FIRST;',
'END;'))
,p_attribute_02=>'P15_FIRST'
,p_attribute_03=>'P15_URL_PAGINATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9861088579561431)
,p_event_id=>wwv_flow_api.id(9661635099245743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger(document,''Call_GETDepts_API'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9740619022836596)
,p_name=>'Show/Hide Previous Button'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_PREV'
,p_condition_element=>'P15_PREV'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9740669744836597)
,p_event_id=>wwv_flow_api.id(9740619022836596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9660641822245733)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9740831328836598)
,p_event_id=>wwv_flow_api.id(9740619022836596)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9660641822245733)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9740887073836599)
,p_name=>'Show/Hide Next Button'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_NEXT'
,p_condition_element=>'P15_NEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9740938775836600)
,p_event_id=>wwv_flow_api.id(9740887073836599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9660772882245734)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9741096800836601)
,p_event_id=>wwv_flow_api.id(9740887073836599)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9660772882245734)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10716430537186997)
,p_name=>'goto next'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9660772882245734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10716452483186998)
,p_event_id=>wwv_flow_api.id(10716430537186997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P15_URL_PAGINATION := :P15_NEXT;',
'END;'))
,p_attribute_02=>'P15_NEXT'
,p_attribute_03=>'P15_URL_PAGINATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10716567229186999)
,p_event_id=>wwv_flow_api.id(10716430537186997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger(document,''Call_GETDepts_API'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9658241641245709)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_oauth_get_last_token'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ORDSDEMO.my_globals.oauth_get_last_token; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'DepartmentCRUD1edit'
,p_alias=>'DEPARTMENTCRUD1EDIT'
,p_step_title=>'DepartmentCRUD1edit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301204104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9647898659180219)
,p_plug_name=>'DepartmentCRUD'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(8980639930029058)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9650405554180225)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9647898659180219)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9656772387245694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9647898659180219)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7482258332010569)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9647898659180219)
,p_button_name=>'GUARDAR_CON_JOB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'GUARDAR_CON_JOB'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9742421731836614)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9647898659180219)
,p_button_name=>'BORRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_image_alt=>'Borrar'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9651245325180227)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5702997892075762)
,p_name=>'P16_MSG_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9647898659180219)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9744790746836638)
,p_name=>'P16_DEPTID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9647898659180219)
,p_prompt=>'Deptid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9744915974836639)
,p_name=>'P16_DNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9647898659180219)
,p_prompt=>'Dname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9744989742836640)
,p_name=>'P16_DLOC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9647898659180219)
,p_prompt=>'Dloc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9037346672029141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9859211440561412)
,p_name=>'P16_HDEPTNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9647898659180219)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9743451006836625)
,p_name=>'PUTDepts_API'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PUTDepts_API'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9743616808836626)
,p_event_id=>wwv_flow_api.id(9743451006836625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   ORDSDEMO.caller_crudwsdept.Call_PUTPOSTDepts_API (null, null, null, null); ',
'END;',
''))
,p_attribute_02=>'P16_DEPTID,P16_DNAME,P16_DLOC'
,p_attribute_03=>'P16_MSG_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7482338631010570)
,p_name=>'PUTDepts_API_JOB'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PUTDepts_API_JOB'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7482494737010571)
,p_event_id=>wwv_flow_api.id(7482338631010570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ORDSDEMO.my_globals.execute_ajob_procedure_type (:P16_DEPTID, :P16_DNAME, :P16_DLOC, V(''OAUTH_DEPT_TOKEN''));',
' /*',
' --select * from ALL_SCHEDULER_JOB_RUN_DETAILS order by REQ_START_DATE DESC;',
'select * from ALL_SCHEDULER_JOB_RUN_DETAILS ',
' WHERE job_name LIKE  ''%CALL_PUTPOST%'';',
'',
' */',
'END;',
''))
,p_attribute_02=>'P16_DEPTID,P16_DNAME,P16_DLOC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9858968433561410)
,p_name=>'SubmitPUTAPI'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9656772387245694)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9859040991561411)
,p_event_id=>wwv_flow_api.id(9858968433561410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger(document,''PUTDepts_API'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7482575799010572)
,p_name=>'SubmitPUTAPI_JOB'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7482258332010569)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7482703746010573)
,p_event_id=>wwv_flow_api.id(7482575799010572)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger(document,''PUTDepts_API_JOB'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9859325362561413)
,p_name=>'DELETEDepts_API'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'DELETEDepts_API'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9859334762561414)
,p_event_id=>wwv_flow_api.id(9859325362561413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'ORDSDEMO.caller_crudwsdept.Call_DELETEaDepts_API;',
'END;'))
,p_attribute_02=>'P16_DEPTID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9859515695561415)
,p_name=>'SubmitDELETEAPI'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9742421731836614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9859577448561416)
,p_event_id=>wwv_flow_api.id(9859515695561415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger(document,''DELETEDepts_API'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5704090075075773)
,p_name=>'HAY ERROR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_MSG_ERROR'
,p_condition_element=>'P16_MSG_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5704836741075781)
,p_event_id=>wwv_flow_api.id(5704090075075773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_IRANAPEX.NOTIFILIX'
,p_attribute_01=>'NOTIFY'
,p_attribute_02=>'FAILURE'
,p_attribute_03=>'"#P16_MSG_ERROR#"'
,p_attribute_05=>'300'
,p_attribute_06=>'right-top'
,p_attribute_07=>'false'
,p_attribute_08=>'from-left'
,p_attribute_09=>'true'
,p_attribute_10=>'false'
,p_attribute_11=>'10'
,p_attribute_12=>'10'
,p_attribute_15=>'3000'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5704248470075775)
,p_name=>'ALERTC'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ALERTC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5704351046075776)
,p_event_id=>wwv_flow_api.id(5704248470075775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var mg = $("#P16_MSG_ERROR").val(); ',
'alertify.success(msg);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9744697105836637)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitVals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001 ,     c001 ,     c002 INTO :P16_DEPTID ,  :P16_DNAME, :P16_DLOC  ',
'    FROM apex_collections ',
'        WHERE collection_name = ''CR-DEPTS''  AND n001 = :P16_HDEPTNO; ',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'app1 - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(8927704500028960)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210301130815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9065294060029421)
,p_plug_name=>'app1'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(8969357292029044)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9070013866029443)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(9065294060029421)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(8987501559029068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9068049924029438)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9065294060029421)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9038505435029146)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065701371029425)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9065294060029421)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(9037123865029139)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9066038334029427)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9065294060029421)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(9037123865029139)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9067142667029432)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9065294060029421)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(9066358758029427)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(9037123865029139)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9068907944029439)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9068473299029439)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_Result Boolean := False;',
'',
'begin',
'',
'    v_Result := ordsdemo.MY_GLOBALS.CUSTOM_USER_AUTH2(:P9999_USERNAME, :P9999_PASSWORD); ',
'    If v_Result = True Then ',
'	wwv_Flow_Custom_Auth_Std.Post_Login(',
'                                    :P9999_USERNAME   ,:P9999_PASSWORD ,',
'									v(''APP_SESSION'') , :APP_ID || '':1'' ); -- Redirect to Page 1 (Home Page).',
'    Else',
'    -- Login Failure, redirect to page 101 (Login Page).',
'        Owa_Util.Redirect_Url(''f?p=&APP_ID.:101:&SESSION.'');',
'    End If;',
'',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9069705139029441)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9069276115029441)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_api.create_page(
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'About'
,p_alias=>'HELP'
,p_step_title=>'About'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9064364846029400)
,p_required_patch=>wwv_flow_api.id(9063158095029391)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210118142547'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9073068108029518)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(8956231978029028)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_api.create_page(
 p_id=>10011
,p_user_interface_id=>wwv_flow_api.id(9061172130029260)
,p_name=>'Help'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(9063158095029391)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DEV01'
,p_last_upd_yyyymmddhh24miss=>'20210118142547'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9073825731029519)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(8987501559029068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10011_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(''No help is available for this page.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9074216680029521)
,p_name=>'P10011_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9073825731029519)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/logic/webservices/githublg
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(3236772967447070)
,p_name=>'githublg'
,p_url=>'https://api.github.com/users/raekins/repos'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(3236994398447070)
,p_ws_id=>wwv_flow_api.id(3236772967447070)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(3237236641447073)
,p_ws_opers_id=>wwv_flow_api.id(3236994398447070)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/legacy_all_departments
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(9444994299440385)
,p_name=>'Legacy All Departments'
,p_url=>'http://localhost:8080/ords/api/empdep/v1/all_departments'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(9445135078440414)
,p_ws_id=>wwv_flow_api.id(9444994299440385)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(9445466196440424)
,p_ws_opers_id=>wwv_flow_api.id(9445135078440414)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/legacy_all_empsoauth
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(9456699542977164)
,p_name=>'Legacy_All EmpsOauth'
,p_url=>'http://localhost:8080/ords/api/empdep/v1/all_employees'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(9456890236977166)
,p_ws_id=>wwv_flow_api.id(9456699542977164)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(9457224029977169)
,p_ws_opers_id=>wwv_flow_api.id(9456890236977166)
,p_name=>'Authorization'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(9457424995977171)
,p_ws_opers_id=>wwv_flow_api.id(9456890236977166)
,p_name=>'department_number'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(9457680721977174)
,p_ws_opers_id=>wwv_flow_api.id(9456890236977166)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(9626628840410378)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
