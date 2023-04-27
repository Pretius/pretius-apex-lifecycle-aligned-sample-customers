prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_tab_set=>'TS1'
,p_name=>'Customer Links'
,p_alias=>'CUSTOMER-LINKS'
,p_step_title=>'Customer Links'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16422364388147042556)
,p_plug_name=>'Customer Links'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16589624277644177277)
,p_plug_name=>'Customer Links'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'customer_id,',
'nvl(link,link_desc) link_text,',
'link link_target,',
'link_comments,',
'tags,',
'created date_added,',
'lower(created_by) added_by,',
'updated,',
'updated_by,',
'''#'' delete_link',
'from eba_cust_links',
'where customer_id = :P51_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16589624504353177327)
,p_name=>'Customer Links'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No links found'
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
,p_owner=>'CBCHO'
,p_internal_uid=>2525643629424384487
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589624583521177331)
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
 p_id=>wwv_flow_imp.id(16589624679741177334)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589625495897177349)
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
 p_id=>wwv_flow_imp.id(16589625582092177349)
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
 p_id=>wwv_flow_imp.id(16589625681093177349)
,p_db_column_name=>'LINK_COMMENTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589625792186177350)
,p_db_column_name=>'TAGS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589631507331287701)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:P66_ID:#ID#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(link_desc, link) d',
'from eba_cust_links',
'where customer_id = :p51_id',
'order by 1'))
,p_rpt_show_filter_lov=>'C'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589631577978287701)
,p_db_column_name=>'LINK_TARGET'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Link Target'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589631688038287701)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589631781990287702)
,p_db_column_name=>'ADDED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Added By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16589740788031338865)
,p_db_column_name=>'DELETE_LINK'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:51:&SESSION.:DELETE_LINK:&DEBUG.::P51_DELETE_LINK_ID:#ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete Link: #LINK_TEXT#"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16589633389847320519)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25256526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LINK_TEXT:LINK_TARGET:DATE_ADDED:ADDED_BY:TAGS:DELETE_LINK:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16589626007038177350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16422364388147042556)
,p_button_name=>'ADD_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Link'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_CUSTOMER_ID:&P51_ID.'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16589858382191365599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16589624277644177277)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16422364180851042555)
,p_name=>'P51_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16589624277644177277)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16589856776865354610)
,p_name=>'P51_DELETE_LINK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16589624277644177277)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16593360476699505192)
,p_computation_sequence=>10
,p_computation_item=>'P50_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P51_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13525274772618760526)
,p_name=>'Refresh IRR on close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16589626007038177350)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13525274931016760527)
,p_event_id=>wwv_flow_imp.id(13525274772618760526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16589624277644177277)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14276347534074669519)
,p_name=>'Refresh IRR on Edit Close'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16589624277644177277)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14276347594547669520)
,p_event_id=>wwv_flow_imp.id(14276347534074669519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16589624277644177277)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16589857193488359373)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete link'
,p_process_sql_clob=>'delete from eba_cust_links where id = :P51_DELETE_LINK_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DELETE_LINK'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Link deleted'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp.component_end;
end;
/
