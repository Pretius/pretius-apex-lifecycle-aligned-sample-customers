prompt --application/shared_components/navigation/lists/data_load_process_train_contacts
begin
--   Manifest
--     LIST: Data Load Process Train - contacts
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
 p_id=>wwv_flow_imp.id(15886223102730010155)
,p_name=>'Data Load Process Train - contacts'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15886223475593010156)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Load Source'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15886223802746010158)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Data / Table Mapping'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15886224081944010158)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Validation'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15886224381326010158)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Data Load Results'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
