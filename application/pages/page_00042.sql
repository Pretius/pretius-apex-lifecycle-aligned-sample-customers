prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Products'
,p_alias=>'PRODUCTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'<p>Products are used to associate with customers. A customer can be associated with multiple products. The product association is very important when you are searching for specific customers that use a given product. Click the <strong>Add Product ></'
||'strong> button to create a new product.</p>'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17803085797105302520)
,p_plug_name=>'Products'
,p_region_name=>'PRODUCTS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ID, ',
'    PRODUCT_NAME,',
'    product_family_id,',
'    DESCRIPTION,',
'    decode(is_active,''Y'',''Yes'',null,''No'',''N'',''No'') IS_ACTIVE,',
'    nvl(updated,created) last_updated,',
'    nvl(updated_by,created_by) last_updated_by',
'from EBA_CUST_PRODUCTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(17803085998414302521)
,p_name=>'Products'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>3739105123485509681
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803086123899302524)
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
 p_id=>wwv_flow_imp.id(17803086215276302525)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_ID:#ID#'
,p_column_linktext=>'#PRODUCT_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803086295933302525)
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
 p_id=>wwv_flow_imp.id(17803086417326302526)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14853924301206597089)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14853924379338597095)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17747208633371700201)
,p_db_column_name=>'PRODUCT_FAMILY_ID'
,p_display_order=>54
,p_column_identifier=>'AS'
,p_column_label=>'Product Family'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(17761218176166108387)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_families'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17803087499434307330)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9113066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_FAMILY_ID:PRODUCT_NAME:DESCRIPTION:IS_ACTIVE:LAST_UPDATED_BY:LAST_UPDATED'
,p_sort_column_1=>'LAST_UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'IS_ACTIVE'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'PRODUCT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14757360894537530975)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17803085797105302520)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17803086504359302526)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17803085797105302520)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Product'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:43::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(336881500448043947)
,p_name=>'Refresh on Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17803086504359302526)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(336881603916043948)
,p_event_id=>wwv_flow_imp.id(336881500448043947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17803085797105302520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(336881762946043949)
,p_name=>'Refresh on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17803085797105302520)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(336881798821043950)
,p_event_id=>wwv_flow_imp.id(336881762946043949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17803085797105302520)
);
wwv_flow_imp.component_end;
end;
/
