prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
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
 p_id=>134
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Issues'
,p_alias=>'ISSUES'
,p_step_title=>'Issues'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2565087134864497946)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2565087569631497947)
,p_plug_name=>'Issues'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    customer_id as customer,',
'    customer_id as customer_id,',
'    name,',
'    issue_type,',
'    status_id,',
'    product_id,',
'    details,',
'    resolution,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by',
'from',
'    eba_cust_issues'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2565087685795497947)
,p_name=>'Issues'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ALLAN'
,p_internal_uid=>2562576816419818606
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565088166475497954)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564647064453468162)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.:ISSUES:&DEBUG.:RP,50:P50_ID:#CUSTOMER_ID#'
,p_column_linktext=>'#CUSTOMER#'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(16589419985608937808)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565088515012497959)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Customer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565088957072497959)
,p_db_column_name=>'NAME'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>'Issue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565089337875497960)
,p_db_column_name=>'ISSUE_TYPE'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>'Issue Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(2564643175682426277)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565089698963497960)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(2564940577973681376)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565090104403497960)
,p_db_column_name=>'DETAILS'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>'Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565090499482497961)
,p_db_column_name=>'CREATED'
,p_display_order=>71
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565090928794497962)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>81
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565091364422497962)
,p_db_column_name=>'UPDATED'
,p_display_order=>91
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2565091718715497963)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564648941324468181)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Product'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(16929502933782355794)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564648988629468182)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2565093393926509922)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25625826'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER:NAME:ISSUE_TYPE:STATUS_ID:PRODUCT_ID:DETAILS:RESOLUTION:UPDATED_BY:UPDATED:'
,p_break_on=>'CUSTOMER:0:0:0:0:0'
,p_break_enabled_on=>'CUSTOMER:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1858118325587384970)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2565087569631497947)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/
