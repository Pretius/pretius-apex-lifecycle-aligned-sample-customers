prompt --application/shared_components/navigation/lists/user_activity_reports
begin
--   Manifest
--     LIST: User Activity Reports
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
 p_id=>wwv_flow_imp.id(17791582215738782242)
,p_name=>'User Activity Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14964759706141197831)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Application Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Monthly calendar reporting historical usage, number of users and number of page views by day.  Requires contributor rights.'
,p_list_text_02=>'Monthly Calendar'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17791582412928782250)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Summary report of page view activity by user.  Requires contributor rights.'
,p_list_text_02=>'Interactive Report'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17803932498357404519)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page View Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Interactive report of each application page view.  Requires contributor rights.'
,p_list_text_02=>'Interactive Report'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16736106774951629685)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Activity Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Summary of page views by user by day.  Requires contributor rights.'
,p_list_text_02=>'Monthly Calendar'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14954639694800400678)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Application Activity by Page'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Review application page performance and popularity.  A weighted page performance column multiplies page views by median rendering time. '
,p_list_text_02=>'Interactive Report'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
