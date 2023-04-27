prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Access Control List'
,p_alias=>'MANAGE_ACL'
,p_page_mode=>'MODAL'
,p_step_title=>'Access Control List'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650004109368475)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features, for authenticated users. Customers supports the following 3 access levels; Reader, Contributor and Administrator. <b>Reader''s</b> h'
||'ave read-only access and can also view reports. <b>Contributor''s</b> can create, edit, delete and view reports. <b>Administrator''s</b>, in addition to Contributor''s capability, can also perform Customers administration, including configuration of acc'
||'ess control, managing application look-up data and installing or uninstalling sample data.</p>'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15688829975472441227)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       username,',
'       access_level_id,',
'       case when account_locked = ''Y'' then ''Yes'' else ''No'' end account_locked,',
'       created_by,',
'       created',
'  from eba_cust_users',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15688830086599441227)
,p_name=>'Manage Users'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PMANIRAHO'
,p_internal_uid=>1624849211670648387
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15688830279656441240)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15688830390431441242)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP,58:P58_ID:#ID#'
,p_column_linktext=>'#USERNAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15688830478703441242)
,p_db_column_name=>'ACCESS_LEVEL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Access Level'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(15689140690989520564)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15688830596411441243)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15688830680478441243)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16002860885490260632)
,p_db_column_name=>'ACCOUNT_LOCKED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Account Locked'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15688834680590441939)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16248539'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:ACCESS_LEVEL_ID:ACCOUNT_LOCKED:CREATED_BY:CREATED:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ACCESS_LEVEL_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'USERNAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14743781094294818925)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15688829975472441227)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14813872704321816062)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15688829975472441227)
,p_button_name=>'BULK_ADD_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73,74::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15827045789367915422)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(15688829975472441227)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:58::'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(14914183191695345948)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1658503459248072800)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1658503842942072808)
,p_event_id=>wwv_flow_imp.id(1658503459248072800)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15688829975472441227)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1658504308428072809)
,p_event_id=>wwv_flow_imp.id(1658503459248072800)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp.component_end;
end;
/
