prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Reference Types'
,p_alias=>'REFERENCE-TYPES'
,p_page_mode=>'MODAL'
,p_step_title=>'Reference Types'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'Reference Types are used for indicating how references are willing to be used. The Reference Type will be available when you Add, Modify or Search for a Contact. Reference Types can be made Active or Inactive but only active Reference Types will be s'
||'hown when adding or modifying a Contact.'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15640291865680397007)
,p_plug_name=>'Reference Types'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'reference_TYPE,',
'decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) Status,',
'CREATED,',
'CREATED_BY,',
'UPDATED,',
'UPDATED_BY',
'from EBA_CUST_reference_TYPES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15640292288949397009)
,p_name=>'Customer Statuses'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2215987056873573291
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15640292402555397013)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15640293134494397017)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15608732505195101728)
,p_db_column_name=>'REFERENCE_TYPE'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Reference type'
,p_column_link=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:RP:P79_ID:#ID#'
,p_column_linktext=>'#REFERENCE_TYPE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15608732610222101729)
,p_db_column_name=>'CREATED'
,p_display_order=>25
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15608732645357101730)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>35
,p_column_identifier=>'H'
,p_column_label=>'Created by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15608732741760101731)
,p_db_column_name=>'UPDATED'
,p_display_order=>45
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15608732895935101732)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>55
,p_column_identifier=>'J'
,p_column_label=>'Updated by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15640294002518397019)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22159888'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'REFERENCE_TYPE:STATUS:CREATED:CREATED_BY:UPDATED:UPDATED_BY:'
,p_sort_column_1=>'STATUS'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'REFERENCE_TYPE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15640294443502397024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15640291865680397007)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:5,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15640291518503397004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15640291865680397007)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Reference Type'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:79::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE''',
'or',
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1616137779261238209)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1616138192271238210)
,p_event_id=>wwv_flow_imp.id(1616137779261238209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15640291865680397007)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1616138716293238210)
,p_event_id=>wwv_flow_imp.id(1616137779261238209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp.component_end;
end;
/
