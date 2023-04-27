prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Referenceability'
,p_alias=>'REFERENCEABILITY2'
,p_step_title=>'Referenceability'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14286883625103355158)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(483926141774074060)
,p_plug_name=>'by Asset Commitment'
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P100_CATEGORY,P100_GEO'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(483926227635074061)
,p_region_id=>wwv_flow_imp.id(483926141774074060)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(483926359597074062)
,p_chart_id=>wwv_flow_imp.id(483926227635074061)
,p_seq=>10
,p_name=>'Geography'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'    reference_TYPE group_name,',
'    (   select count(distinct(pu.customer_id))',
'        from eba_cust_product_uses pu',
'        where '':''||pu.reference_type_ids||'':'' like ''%:''||t.id||'':%''',
'    ) cnt',
'from eba_cust_reference_TYPES t',
'order by 2 desc'))
,p_series_name_column_name=>'GROUP_NAME'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'GROUP_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:RP,122,RIR:IR_REFERENCE_TYPE:&GROUP_NAME.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(483926531668074064)
,p_chart_id=>wwv_flow_imp.id(483926227635074061)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
 p_id=>wwv_flow_imp.id(483926423219074063)
,p_chart_id=>wwv_flow_imp.id(483926227635074061)
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
 p_id=>wwv_flow_imp.id(483926588938074065)
,p_plug_name=>'by Phase'
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P100_CATEGORY,P100_GEO'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(483926675897074066)
,p_region_id=>wwv_flow_imp.id(483926588938074065)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(483926814414074067)
,p_chart_id=>wwv_flow_imp.id(483926675897074066)
,p_seq=>10
,p_name=>'Geography'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    status group_name,',
'    (   select count(distinct(pu.customer_id))',
'        from eba_cust_product_uses pu',
'        where pu.reference_status_id = t.id',
'    ) cnt',
'from eba_cust_product_statuses t',
'order by status'))
,p_series_name_column_name=>'GROUP_NAME'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'GROUP_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(483926911444074068)
,p_chart_id=>wwv_flow_imp.id(483926675897074066)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(483927005519074069)
,p_chart_id=>wwv_flow_imp.id(483926675897074066)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20245435778642758538)
,p_plug_name=>'Product Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, nvl(to_number(value,''999G999G990''),0) value, url from (',
'with data as (',
'    select count(*) total,',
'        count( distinct product_family_id ) families',
'    from eba_cust_products p',
'--    where (NVL(:P100_CATEGORY,0) = 0 or CATEGORY_ID = :P100_CATEGORY) and',
'--          (NVL(:P100_GEO,0) = 0 or :P100_GEO = c.geography_id)',
'), rws as (',
'    select level r from dual connect by level < 4',
')',
'select rws.r display_order,',
'    decode(rws.r, 1, ''Products Tracked'',    2, ''Product Families'',    3, ''Referenceable'')  label,',
'    decode(rws.r, 1, data.total, 2, data.families, 3, ( select count(*)',
'                                                        from eba_cust_product_uses pu',
'                                                        where pu.reference_type_ids is not null ) ) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'',',
'                  3, ''f?p=''||:APP_ID||'':59:''||:APP_SESSION||'':::44,RIR:'') url',
'from data, rws',
'union all',
'select 4 display_order,',
'	''Customers'' label,',
'	count(*) value,',
'	''f?p=''||:APP_ID||'':59:''||:APP_SESSION||'':::59,RIR:'' url',
'from eba_cust_customers',
')',
'order by display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P100_CATEGORY,P100_GEO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'4'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20245436096909758547)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14857721930057769835)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20245437355554758550)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>25
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20245438479571758553)
,p_plug_name=>'by Internal Contact'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select internal_contact,',
'    count(*) customers',
'from eba_cust_product_uses',
'where internal_contact is not null',
'group by internal_contact',
'order by lower(internal_contact)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'INITIALS'
,p_attribute_02=>'INTERNAL_CONTACT'
,p_attribute_03=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:RP,RIR,122:IREQ_REF_RECRUITMENT_OWNER:&INTERNAL_CONTACT.'
,p_attribute_04=>'CUSTOMERS'
,p_attribute_05=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:RP,RIR,122:IREQ_REF_RECRUITMENT_OWNER:&INTERNAL_CONTACT.'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'TEXT'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_18=>'AROUND'
,p_attribute_20=>'No data found.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20245438914518758554)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20245439294008758554)
,p_button_sequence=>1000
,p_button_plug_id=>wwv_flow_imp.id(20245438914518758554)
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
 p_id=>wwv_flow_imp.id(20245436495401758547)
,p_name=>'P100_CATEGORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20245436096909758547)
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
 p_id=>wwv_flow_imp.id(20245436911366758550)
,p_name=>'P100_GEO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20245436096909758547)
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
 p_id=>wwv_flow_imp.id(20245442369438758565)
,p_name=>'cat'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_CATEGORY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20245443933748758566)
,p_event_id=>wwv_flow_imp.id(20245442369438758565)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20245438479571758553)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20245444407748758566)
,p_event_id=>wwv_flow_imp.id(20245442369438758565)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20245435778642758538)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20245440031148758560)
,p_name=>'geo'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_GEO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20245441518725758564)
,p_event_id=>wwv_flow_imp.id(20245440031148758560)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20245438479571758553)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20245442006579758565)
,p_event_id=>wwv_flow_imp.id(20245440031148758560)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20245435778642758538)
);
wwv_flow_imp.component_end;
end;
/
