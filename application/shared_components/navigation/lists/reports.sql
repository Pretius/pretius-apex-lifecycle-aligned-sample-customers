prompt --application/shared_components/navigation/lists/reports
begin
--   Manifest
--     LIST: Reports
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
 p_id=>wwv_flow_imp.id(17804086452826847119)
,p_name=>'Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15769485467664282281)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Customers by Category'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Chart of customer counts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15769489639023318288)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Customers by Geography'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Chart of customer counts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15770404980601435694)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Customers by Reference Type'
,p_list_item_link_target=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Chart of customer counts '
,p_required_patch=>wwv_flow_imp.id(14286825208374281006)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14872738663909037085)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Customer detail report with options to download and subscribe.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17804294762960347467)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Recent Updates'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Recent activity, changes to this customer repository'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16592383207039159765)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Updates'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View date of last update to customers in a calendar format.  Use this report to see what customers have been recently updated.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17810897092727598386)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'Display tag clouds'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2030655443676467137)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_text_01=>'Recent activity, changes to this customer repository'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
