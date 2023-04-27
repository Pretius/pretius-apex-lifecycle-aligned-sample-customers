prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_default_workspace_id=>10901989977582412
);
end;
/
prompt  WORKSPACE 10901989977582412
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   16:26 Sunday April 16, 2023
--   Exported By:     SAMPLE_CUSTOMERS
--   Export Type:     Workspace Export
--   Version:         22.1.0
--   Instance ID:     2300171635599315
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_220100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>10901989977582412);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace SAMPLE_CUSTOMERS...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 10902127434582573
 ,p_provisioning_company_id => 10901989977582412
 ,p_short_name => 'SAMPLE_CUSTOMERS'
 ,p_display_name => 'SAMPLE_CUSTOMERS'
 ,p_first_schema_provisioned => 'SAMPLE_CUSTOMERS'
 ,p_company_schemas => 'SAMPLE_CUSTOMERS'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'SAMPLE_C'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'SAMPLE_CUSTOMERS'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 4300878867628813,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 4300731505628813,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 4300664307628810,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '10901833465582412',
  p_user_name                    => 'ADMIN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'ADMIN@example.com',
  p_web_password                 => 'B7FFE13AE41B02C12B9950EF55D764055A2596D5BC27B045D8C2C79FF20B1A662D75A1132F53D315FC11C6586BC9B3EC6E6D01DB4B2B8263E351AE8FE4D755CE',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'SAMPLE_CUSTOMERS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304161500','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '10902923819586833',
  p_user_name                    => 'TEST_USER',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'TEST_USER@example.com',
  p_web_password                 => '13366FDC99EB4DC24A35748934C6E1B1D5C0A3D016B337DB1C77CCB735E3939F77267322736BEE96C71BB006C5BE8006D8BC1980727E7DB148A70478312FECCF',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => '',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304161500','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 10902366013582600,
    p_user_id => 10901833465582412,
    p_password => 'B7FFE13AE41B02C12B9950EF55D764055A2596D5BC27B045D8C2C79FF20B1A662D75A1132F53D315FC11C6586BC9B3EC6E6D01DB4B2B8263E351AE8FE4D755CE');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 10903054079586847,
    p_user_id => 10902923819586833,
    p_password => '13366FDC99EB4DC24A35748934C6E1B1D5C0A3D016B337DB1C77CCB735E3939F77267322736BEE96C71BB006C5BE8006D8BC1980727E7DB148A70478312FECCF');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10933762224594818,
    p_user_id => 'ADMIN',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '102',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11002728119603006,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_102_P59_W15763279764340549221',
    p_attribute_value => '15763294309938549258____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11002940094607143,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10933652953594792,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10933480162594749,
    p_user_id => 'ADMIN',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11001604187602196
 ,p_command => 
'declare'||wwv_flow.LF||
'  l_application_id NUMBER DEFAULT 102;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    -- Enable ACL'||wwv_flow.LF||
'    eba_cust_fw.set_preference_value ('||wwv_flow.LF||
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'','||wwv_flow.LF||
'        p_preference_value => ''Y'' );'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    -- Set ACL Scope'||wwv_flow.LF||
'    eba_cust_fw.set_preference_value ('||wwv_flow.LF||
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'','||wwv_flow.LF||
'        p_preference_value => ''PUBLIC_READONLY'' ); -- :P1000_ACL_CONFIG'||wwv_flow.LF||
''||wwv_flow.LF||
'    -'||
'- Add Users'||wwv_flow.LF||
'        insert into eba_cust_users'||wwv_flow.LF||
'        (username, access_level_id, account_locked) VALUES'||wwv_flow.LF||
'        (''admin'', 3, ''N'');'||wwv_flow.LF||
''||wwv_flow.LF||
'        insert into eba_cust_users'||wwv_flow.LF||
'        (username, access_level_id, account_locked) VALUES'||wwv_flow.LF||
'        (''test_user'', 3, ''N'');'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Load Sample Data'||wwv_flow.LF||
'   eba_cust_sample_data.create_sample_data();'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Set Build Options'||wwv_flow.LF||
'        for c1 in ( select BUILD_OPTION_ID'||wwv_flow.LF||
' '||
'                   from apex_application_build_options'||wwv_flow.LF||
'                    where  application_id = l_application_id'||wwv_flow.LF||
'                    AND build_option_name in (''Competitors'', ''Contacts'', ''Feedback'', ''Geography'', ''Partners'') )'||wwv_flow.LF||
'        loop'||wwv_flow.LF||
'                apex_util.set_build_option_status(  p_application_id => l_application_id,'||wwv_flow.LF||
'                                                    p_id => c1.BUILD_'||
'OPTION_ID,'||wwv_flow.LF||
'                                                    p_build_status => ''INCLUDE'' );'||wwv_flow.LF||
'        end loop;'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Set First Run to No'||wwv_flow.LF||
'    eba_cust_fw.set_preference_value ('||wwv_flow.LF||
'        p_preference_name  => ''FIRST_RUN'','||wwv_flow.LF||
'        p_preference_value => ''NO'' );'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202304161502','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'SAMPLE_CUSTOMERS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11033120576621562
 ,p_command => 
'select * from apex_workspaces'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202304161506','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'SAMPLE_CUSTOMERS');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Application Express Accounts',
    p_app => 102,
    p_owner => 'SAMPLE_CUSTOMERS',
    p_access_date => to_date('202304161501','YYYYMMDDHH24MI'),
    p_ip_address => '172.19.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Application Express Accounts',
    p_app => 102,
    p_owner => 'SAMPLE_CUSTOMERS',
    p_access_date => to_date('202304161502','YYYYMMDDHH24MI'),
    p_ip_address => '172.19.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Application Express Accounts',
    p_app => 102,
    p_owner => 'SAMPLE_CUSTOMERS',
    p_access_date => to_date('202304161504','YYYYMMDDHH24MI'),
    p_ip_address => '172.19.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202304161500','YYYYMMDDHH24MI'),
    p_ip_address => '172.19.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 5,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202304161500','YYYYMMDDHH24MI'),
    p_ip_address => '172.19.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'SAMPLE_CUSTOMERS';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA SAMPLE_CUSTOMERS - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_220100
-- Exported 16:26 Sunday April 16, 2023 by: 
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 16:26 Sunday April 16, 2023 by: 
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'SAMPLE_CUSTOMERS';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
