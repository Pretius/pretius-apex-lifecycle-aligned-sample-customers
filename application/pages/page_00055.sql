prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Activities'
,p_alias=>'ACTIVITIES'
,p_step_title=>'Activities'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(20110470510240044582)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(18137428917441624781)
,p_protection_level=>'C'
,p_help_text=>'<p>Use Activities to track interactions with customers. Activities can have a set location, date, and/or owner, or those can be determined when a customer participates in the activity.  Click the <strong>Reset</strong> button to reset the interactive'
||' Activities report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or save the interactive Activities report.</p>'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18144232440700877072)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.type_id,',
'    a.name,',
'    a.description,',
'    a.activity_date,',
'    a.owner,',
'    a.location,',
'    a.created,',
'    lower(a.created_by) created_by,',
'    a.updated,',
'    lower(a.updated_by) updated_by,',
'    (   select count(*)',
'        from eba_cust_activity_ref rf',
'        where rf.activity_id = a.id ) references',
'from eba_cust_activities a'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18144232690609877072)
,p_name=>'Activities'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No activities found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DAVID'
,p_internal_uid=>17088697724324400392
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144232819141877076)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144233220414877080)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18144412855379977785)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144233632592877081)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:RP,145:P145_ID:#ID#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144233969986877081)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144234389021877081)
,p_db_column_name=>'ACTIVITY_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Activity Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDay, fmDD fmMonth, YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144234855814877082)
,p_db_column_name=>'OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144235232555877082)
,p_db_column_name=>'LOCATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144235597823877083)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144235994723877083)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144236390774877084)
,p_db_column_name=>'UPDATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18144236827165877084)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17959700763370746505)
,p_db_column_name=>'REFERENCES'
,p_display_order=>21
,p_column_identifier=>'L'
,p_column_label=>'References'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18144325787332945649)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'170887909'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TYPE_ID:NAME:ACTIVITY_DATE:OWNER:LOCATION:REFERENCES:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18144239618511877099)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18144238104351877087)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18144239618511877099)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Activity'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17959700633577746504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18144232440700877072)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18144237237723877085)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18144232440700877072)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18144237716953877086)
,p_event_id=>wwv_flow_imp.id(18144237237723877085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18144232440700877072)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18144238492595877087)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18144238104351877087)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18144239050325877089)
,p_event_id=>wwv_flow_imp.id(18144238492595877087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18144232440700877072)
);
wwv_flow_imp.component_end;
end;
/
