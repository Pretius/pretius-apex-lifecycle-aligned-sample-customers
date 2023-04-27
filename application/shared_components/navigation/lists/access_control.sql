prompt --application/shared_components/navigation/lists/access_control
begin
--   Manifest
--     LIST: Access Control
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(17805413105588898521)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15924547477110940492)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Use to change the Access Control Scope or to disable Access Control.'
,p_list_text_02=>'switchIcon'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15966216693651521121)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.:57,RIR:&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_cust_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'Administrators can define the domain of users and assign each a role.'
,p_list_text_02=>'userIcon'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14813872381310804798)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Username Format'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Define the username format for new users in this application.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1359016119486356388)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'ACL Features'
,p_list_item_link_target=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_cust_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'Manage the access levels required to access specific functionality. '
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
