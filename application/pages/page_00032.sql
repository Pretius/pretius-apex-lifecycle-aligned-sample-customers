prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Customers by Category'
,p_alias=>'CUSTOMERS-BY-CATEGORY'
,p_step_title=>'Customers by Category'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1104457676260313255)
,p_plug_name=>'Customers by Category'
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>30
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P32_CATEGORY,P32_GEO'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1104457860288313256)
,p_region_id=>wwv_flow_imp.id(1104457676260313255)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1104457878306313257)
,p_chart_id=>wwv_flow_imp.id(1104457860288313256)
,p_seq=>10
,p_name=>'Category'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, category, cnt, category || '' (''|| cnt || '')'' tooltip',
'from (select  ',
'   b.id,',
'   b.category,',
'   count(*) cnt',
'from   ',
'   eba_cust_customers a , ',
'   eba_cust_categories b',
'where ',
'   a.category_id = b.id and',
'   (NVL(:P32_CATEGORY,0) = 0 or a.CATEGORY_ID = :P32_CATEGORY) and',
'   (NVL(:P32_GEO,0) = 0 or :P32_GEO = a.geography_id)',
'group by b.id, b.category',
'order by 2)'))
,p_ajax_items_to_submit=>'P32_CATEGORY,P32_GEO'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'CATEGORY'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP,RIR:IR_CATEGORY,P59_CATEGORY:&CATEGORY.,&ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1104458078389313259)
,p_chart_id=>wwv_flow_imp.id(1104457860288313256)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1104458055136313258)
,p_chart_id=>wwv_flow_imp.id(1104457860288313256)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15769482996424263817)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15868579815657790050)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857721930057769835)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15872464224097732537)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15769482996424263817)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14857752615928769901)
,p_button_image_alt=>'Reset'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15868580091600790051)
,p_name=>'P32_CATEGORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15868579815657790050)
,p_item_default=>'0'
,p_prompt=>'Category'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category d, id r',
'  from EBA_CUST_CATEGORIES',
' where is_active = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15872464934751738700)
,p_name=>'P32_GEO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15868579815657790050)
,p_prompt=>'Geography'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GEOGRAPHY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GEOGRAPHY_NAME display_value, ID return_value ',
'from EBA_CUST_GEOGRAPHIES',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All - '
,p_lov_null_value=>'0'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15868585102105811111)
,p_name=>'set cat'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_CATEGORY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1104458222408313260)
,p_event_id=>wwv_flow_imp.id(15868585102105811111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1104457676260313255)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15872465411889745274)
,p_name=>'geo'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_GEO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1104458337125313261)
,p_event_id=>wwv_flow_imp.id(15872465411889745274)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1104457676260313255)
);
wwv_flow_imp.component_end;
end;
/
