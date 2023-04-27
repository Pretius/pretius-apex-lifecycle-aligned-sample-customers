prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
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
 p_id=>129
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Customer Issue'
,p_alias=>'CUSTOMER-ISSUE'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Issue'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(2564694359236856813)
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_upd_yyyymmddhh24miss=>'20200116130021'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2564634939381374123)
,p_plug_name=>'Customer Issue'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2564635587192374129)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721930057769835)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564635418236374129)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2564635587192374129)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564635275029374129)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2564635587192374129)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Issue'
,p_button_position=>'NEXT'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564636028866374130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2564635587192374129)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564635513288374129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2564635587192374129)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1858117459955384961)
,p_name=>'P129_STATUS_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_retval number;',
'begin',
'    select id into l_retval from eba_cust_issue_statuses where open_yn = ''Y'' and rownum = 1;',
'    return l_retval;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ISSUE STATUSES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_cust_issue_statuses',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14857752276675769898)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564638398171374142)
,p_name=>'P129_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564638841388374182)
,p_name=>'P129_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>72
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(14857752276675769898)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564639099399374189)
,p_name=>'P129_ISSUE_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Type'
,p_source=>'ISSUE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ISSUE TYPES'
,p_lov=>'.'||wwv_flow_imp.id(2564643175682426277)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14857752276675769898)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564639499299374190)
,p_name=>'P129_DETAILS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Details'
,p_source=>'DETAILS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564645288071468145)
,p_name=>'P129_CUSTOMER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564647465560468166)
,p_name=>'P129_PRODUCT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product'
,p_source=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name as d,',
'       id as r',
'  from EBA_CUST_PRODUCTS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564647554484468167)
,p_name=>'P129_RESOLUTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Resolution'
,p_source=>'RESOLUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2564648073464468173)
,p_name=>'P129_CLOSED_STATUS_IDS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2564634939381374123)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2564648391179468176)
,p_computation_sequence=>10
,p_computation_item=>'P129_CLOSED_STATUS_IDS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_retval varchar2(4000);',
'begin',
'    for c1 in',
'    (',
'        select',
'            id',
'        from',
'            eba_cust_issue_statuses',
'        where',
'            open_yn = ''N''',
'    )',
'    loop',
'        l_retval := l_retval || ''"'' || c1.id || ''",'';',
'    end loop;',
'    l_retval := rtrim(l_retval,'', '');',
'    return l_retval;',
'end;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564636154281374130)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2564636028866374130)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564636958921374134)
,p_event_id=>wwv_flow_imp.id(2564636154281374130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564648515975468177)
,p_name=>'Show/Hide Resolution'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_STATUS_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P129_CLOSED_STATUS_IDS'').indexOf($v(''P129_STATUS_ID'')) > 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564648628029468178)
,p_event_id=>wwv_flow_imp.id(2564648515975468177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_RESOLUTION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564648689087468179)
,p_event_id=>wwv_flow_imp.id(2564648515975468177)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_RESOLUTION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564648849623468180)
,p_event_id=>wwv_flow_imp.id(2564648515975468177)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_RESOLUTION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2564640308365374199)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CUST_ISSUES'
,p_attribute_02=>'EBA_CUST_ISSUES'
,p_attribute_03=>'P129_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2564640670175374199)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CUST_ISSUES'
,p_attribute_02=>'EBA_CUST_ISSUES'
,p_attribute_03=>'P129_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2564641072952374200)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2564635513288374129)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2564641525765374200)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
