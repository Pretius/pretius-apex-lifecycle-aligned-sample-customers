prompt --application/pages/page_00175
begin
--   Manifest
--     PAGE: 00175
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
 p_id=>175
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'<p>This page provides an interactive report of all unexpected errors logged by this application.  Click on column headings to sort and filter data, click on the <strong>Actions</strong> menu to customize column display and many additional advanced fe'
||'atures.</p>'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16708130401599282855)
,p_plug_name=>'Errors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    ERR_TIME,',
'    ERR_TIME time_since,',
'    APP_ID,',
'    APP_PAGE_ID,',
'    APP_USER,',
'    USER_AGENT,',
'    IP_ADDRESS,',
'    IP_ADDRESS2,',
'    MESSAGE,',
'    PAGE_ITEM_NAME,',
'    REGION_ID,',
'    COLUMN_ALIAS,',
'    ROW_NUM,',
'    APEX_ERROR_CODE,',
'    ORA_SQLCODE,',
'    ORA_SQLERRM,',
'    ERROR_BACKTRACE',
'from eba_cust_errors'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16708130583196282858)
,p_name=>'Errors'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DAVID.GALE'
,p_internal_uid=>2644149708267490018
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708130682048282859)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708130804766282863)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708130894969282864)
,p_db_column_name=>'APP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131000314282864)
,p_db_column_name=>'APP_USER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131083364282864)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131204874282865)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IP Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131281714282865)
,p_db_column_name=>'IP_ADDRESS2'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'IP Address 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131377373282865)
,p_db_column_name=>'MESSAGE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Error Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131484210282865)
,p_db_column_name=>'PAGE_ITEM_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Page Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131594703282865)
,p_db_column_name=>'REGION_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Region ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131679455282865)
,p_db_column_name=>'COLUMN_ALIAS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Column Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131800499282865)
,p_db_column_name=>'ROW_NUM'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Row Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131881914282865)
,p_db_column_name=>'APEX_ERROR_CODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Error Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708131997986282865)
,p_db_column_name=>'ORA_SQLCODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'SQLCODE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708132080345282865)
,p_db_column_name=>'ORA_SQLERRM'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'SQLERRM'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708132184981282865)
,p_db_column_name=>'ERROR_BACKTRACE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Error Backtrace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16708132295093282866)
,p_db_column_name=>'APP_PAGE_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14812051389797221277)
,p_db_column_name=>'TIME_SINCE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Since'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16708132391620282866)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26441516'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ERR_TIME:TIME_SINCE:APP_USER:APP_PAGE_ID:PAGE_ITEM_NAME:APEX_ERROR_CODE:MESSAGE:'
,p_sort_column_1=>'ERR_TIME'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'APP_USER'
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
 p_id=>wwv_flow_imp.id(16732018181753183707)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16708130401599282855)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/
