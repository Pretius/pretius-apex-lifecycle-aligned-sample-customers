prompt --application/shared_components/navigation/lists/welome_actions
begin
--   Manifest
--     LIST: Welome Actions
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
 p_id=>wwv_flow_imp.id(17977990295374060763)
,p_name=>'Welome Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17977990491185060766)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add a New Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:::'
,p_list_item_icon=>'fa-user'
,p_list_text_01=>'Start by adding your first customer.'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17977990937473060768)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Load Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-download'
,p_list_text_01=>'Easily load and manage sample data.'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
