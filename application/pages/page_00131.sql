prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Customer Issues'
,p_alias=>'CUSTOMER-ISSUES'
,p_step_title=>'Customer Issues'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(2564694359236856813)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2564670132693735082)
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
 p_id=>wwv_flow_imp.id(2564670735515735085)
,p_plug_name=>'Customer Issues'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    customer_id,',
'    status_id,',
'    product_id,',
'    name,',
'    issue_type,',
'    details,',
'    resolution,',
'    created,',
'    created_by,',
'    updated,',
'    lower(updated_by) updated_by',
'from',
'    eba_cust_issues ',
'where',
'    customer_id = :P131_CUSTOMER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2564670774637735085)
,p_name=>'Customer Issues'
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
,p_internal_uid=>2562159905262055744
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564671216830735096)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID,P129_ID:#CUSTOMER_ID#,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564671639502735100)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564671996694735101)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564672458741735101)
,p_db_column_name=>'ISSUE_TYPE'
,p_display_order=>4
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
 p_id=>wwv_flow_imp.id(1858118205236384969)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>14
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(2564940577973681376)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564647963593468171)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>24
,p_column_identifier=>'K'
,p_column_label=>'Product'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(16929502933782355794)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564672813833735102)
,p_db_column_name=>'DETAILS'
,p_display_order=>34
,p_column_identifier=>'E'
,p_column_label=>'Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564648048614468172)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>44
,p_column_identifier=>'L'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564673248180735102)
,p_db_column_name=>'CREATED'
,p_display_order=>54
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564673597483735103)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>64
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564674047664735103)
,p_db_column_name=>'UPDATED'
,p_display_order=>74
,p_column_identifier=>'H'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2564674390634735103)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>84
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2564674829376735936)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25621640'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAME:ISSUE_TYPE:STATUS_ID:DETAILS:UPDATED_BY:UPDATED::PRODUCT_ID:RESOLUTION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564646501057468157)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2564670132693735082)
,p_button_name=>'ADD_ISSUE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Issue'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID:&P131_CUSTOMER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564646401883468156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2564670735515735085)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR:P131_CUSTOMER_ID:&P131_CUSTOMER_ID.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564646188036468154)
,p_name=>'P131_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2564670735515735085)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564646615580468158)
,p_name=>'Refresh IRR on Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2564646501057468157)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564646756560468159)
,p_event_id=>wwv_flow_imp.id(2564646615580468158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2564670735515735085)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564646820850468160)
,p_name=>'Refresh IRR on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2564670735515735085)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564646871029468161)
,p_event_id=>wwv_flow_imp.id(2564646820850468160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2564670735515735085)
);
wwv_flow_imp.component_end;
end;
/
