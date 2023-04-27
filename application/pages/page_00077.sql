prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Manage Sample Data'
,p_alias=>'MANAGE-SAMPLE-DATA'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_upd_yyyymmddhh24miss=>'20210301102538'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15887264684499188888)
,p_plug_name=>'Manage Sample Data'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_imp.id(14857719916040769828)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This application ships with sample data.  You can remove and recreate sample data using this page.  If the sample data is old recreating the data makes the dates more current.  Removing or adding sample data will not affect any decisions you creat'
||'ed.</p>'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15384409860656296342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15887264684499188888)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15384409047910296341)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15887264684499188888)
,p_button_name=>'remove_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Remove Sample Data'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as value from eba_cust_links where id < 100',
'union all',
'select null as value from eba_cust_notes where id < 100',
'union all',
'select null as value from eba_cust_product_uses where id < 100',
'union all',
'select null as value from eba_cust_products where id < 100',
'union all',
'select null as value from eba_cust_contacts where id < 100',
'union all',
'select null as value from eba_cust_customers where id < 100;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15384408718387296341)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15887264684499188888)
,p_button_name=>'load_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Load Sample Data'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as value from eba_cust_links where id < 100',
'union all',
'select null as value from eba_cust_notes where id < 100',
'union all',
'select null as value from eba_cust_product_uses where id < 100',
'union all',
'select null as value from eba_cust_products where id < 100',
'union all',
'select null as value from eba_cust_contacts where id < 100',
'union all',
'select null as value from eba_cust_customers where id < 100;'))
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15384409501727296341)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15887264684499188888)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15384412551350296351)
,p_branch_name=>'Go To Administration'
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-JAN-2012 15:08 by MIKE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(332747727318269079)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15384409860656296342)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(332747821671269080)
,p_event_id=>wwv_flow_imp.id(332747727318269079)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15384411307996296349)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_cust_sample_data.remove_sample_data;',
'eba_cust_sample_data.create_sample_data;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15384409501727296341)
,p_process_success_message=>'Sample data reset.'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15384411672393296351)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove sample data'
,p_process_sql_clob=>'eba_cust_sample_data.remove_sample_data;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15384409047910296341)
,p_process_success_message=>'Sample Data Removed'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15384412086262296351)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Sample Data'
,p_process_sql_clob=>'eba_cust_sample_data.create_sample_data;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15384408718387296341)
,p_process_success_message=>'Sample Data Loaded.'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
);
wwv_flow_imp.component_end;
end;
/
