prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Application Settings'
,p_alias=>'APPLICATION-SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Settings'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'The preferences on this page are used to affect several aspects of the application. Click the item-level help icons to learn what each preference does.'
,p_page_component_map=>'16'
,p_last_upd_yyyymmddhh24miss=>'20200407154531'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14735808980392843180)
,p_plug_name=>'Rename Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14735810183260843182)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721930057769835)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14735809390516843182)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14735810183260843182)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14735809192836843180)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14735810183260843182)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14735810804927843183)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14735809390516843182)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14735809585515843182)
,p_name=>'P28_APPLICATION_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14735808980392843180)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_NAME.'
,p_prompt=>'Application Name'
,p_source=>'&APPLICATION_TITLE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(265257292236847853)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The text entered here is used throughout the application, most notably, in the upper left-hand corner of every page. By default, the application name is "&APP_NAME.". The change will take effect immediately for the administrator making the change, bu'
||'t other users will only see the change when they get a new session (e.g. at next login).'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18002945067518734206)
,p_name=>'P28_FEEDBACK_RECIPIENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14735808980392843180)
,p_prompt=>'Feedback Recipients'
,p_post_element_text=>'&nbsp;<a href="f?p=&APP_ID.:119:&APP_SESSION.">Review/Manage Feedback</a>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_cust_fw.get_preference_value(p_preference_name  => ''FEEDBACK_RECIPIENTS'') = ''Preference does not exist'' then',
'    return null;',
'else',
'    return eba_cust_fw.get_preference_value(p_preference_name  => ''FEEDBACK_RECIPIENTS'');',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(265257658145847858)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(18729811502462578449)
,p_help_text=>'<p>Provide a comma-separated list of the email addresses you would like feedback submissions emailed to. When feedback is submitted, the feedback will be emailed to the addresses in this list.</p>'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(332747952763269081)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14735809192836843180)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(332747976849269082)
,p_event_id=>wwv_flow_imp.id(332747952763269081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14735810506743843183)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APPLICATION_TITLE := :P28_APPLICATION_TITLE;',
'',
'eba_cust_fw.set_preference_value( ''APPLICATION_TITLE'',   apex_escape.html(:P28_APPLICATION_TITLE) );',
'eba_cust_fw.set_preference_value( ''FEEDBACK_RECIPIENTS'', apex_escape.html(:P28_FEEDBACK_RECIPIENTS) );',
'',
'eba_cust_fw.set_preference_value(',
'    p_preference_name => ''HOST_URL'',',
'    p_preference_value => nvl( wwv_flow_utilities.host_url(),',
'                               nvl( wwv_flow_utilities.get_protocol(), ''http'' )',
'                                   ||''://''|| owa_util.get_cgi_env( ''HTTP_HOST'' )',
'                             )',
');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14735809390516843182)
,p_process_success_message=>'Application settings saved.'
);
wwv_flow_imp.component_end;
end;
/
