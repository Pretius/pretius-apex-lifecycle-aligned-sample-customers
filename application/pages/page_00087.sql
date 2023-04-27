prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Reference Phases'
,p_alias=>'REFERENCE-PHASES'
,p_page_mode=>'MODAL'
,p_step_title=>'Reference Phases'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_required_patch=>wwv_flow_imp.id(14286825208374281006)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15817736391061058320)
,p_plug_name=>'Reference Phases'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    nvl(display_sequence,10) display_sequence,',
'    status,',
'    description,',
'    decode(is_an_active_reference,''Y'',''Yes'',''N'',''No'',is_an_active_reference) is_an_active_reference,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by',
'from eba_cust_ref_phase'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15817736803343058320)
,p_name=>'Reference Phases'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.::P88_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'MIKE'
,p_internal_uid=>2393431571267234602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817736849699058323)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817737302260058326)
,p_db_column_name=>'STATUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817737726196058326)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817738076438058326)
,p_db_column_name=>'IS_AN_ACTIVE_REFERENCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Is An Active Reference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817738459884058326)
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
 p_id=>wwv_flow_imp.id(15817738896057058327)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817739241713058327)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15817739689453058327)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15872363228238274629)
,p_db_column_name=>'DISPLAY_SEQUENCE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Display Sequence'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15817742119270060348)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'23934369'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS:DESCRIPTION:IS_AN_ACTIVE_REFERENCE:UPDATED:UPDATED_BY:DISPLAY_SEQUENCE:'
,p_sort_column_1=>'STATUS'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15872467094008753965)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15817736391061058320)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15902768263835658247)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15817736391061058320)
,p_button_name=>'RESEQUENCE_DISPLAY_NUMBERS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Resequence Display Sequence'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15817740050404058328)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15817736391061058320)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Reference Phase'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP,88::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1616143803495243995)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1616144204579243996)
,p_event_id=>wwv_flow_imp.id(1616143803495243995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15817736391061058320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1616144748985243996)
,p_event_id=>wwv_flow_imp.id(1616143803495243995)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15902767789933655686)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'resequence display sequence'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  c int := 0;',
'begin',
'  for c1 in (select id ',
'             from EBA_CUST_REF_PHASE ',
'             order by nvl(display_sequence,10), DESCRIPTION) loop',
'      c := c + 10;',
'      update EBA_CUST_REF_PHASE set display_sequence = c ',
'      where id = c1.id and (display_sequence is null or display_sequence != c);',
'  end loop;',
'end;',
'  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Display sequence values have been resequenced.'
);
wwv_flow_imp.component_end;
end;
/
