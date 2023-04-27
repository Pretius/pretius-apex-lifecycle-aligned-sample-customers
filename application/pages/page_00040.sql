prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_page.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_tab_set=>'TS1'
,p_name=>'Tags'
,p_alias=>'TAGS'
,p_step_title=>'Tags'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650376536369951)
,p_step_template=>wwv_flow_imp.id(14857692229054769793)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14954739582107816435)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17810896717611595985)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17810935206288106560)
,p_plug_name=>'Customers Tag Cloud'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'  from eba_cust_tags_type_sum',
' where content_type = ''CUSTOMER''',
'   and tag_count > 0'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_no_data_found=>'No tags found.'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:59,RIR:IRC_TAGS,P59_DISPLAY_AS:#TAG#,REPORT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17810935412868108442)
,p_plug_name=>'Contacts Tag Cloud'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'  from eba_cust_tags_type_sum',
' where content_type = ''CONTACT''',
'   and tag_count > 0'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_no_data_found=>'No tags found.'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:18:&APP_SESSION.::::IRC_TAGS:#TAG#'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17810935724989111984)
,p_plug_name=>'Products Tag Cloud'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>30
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'  from eba_cust_tags_type_sum',
' where content_type = ''PRODUCT''',
'   and tag_count > 0'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_no_data_found=>'No tags found.'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:44:&APP_SESSION.::::IRC_TAGS:#TAG#'
,p_attribute_03=>'Y'
);
wwv_flow_imp.component_end;
end;
/
