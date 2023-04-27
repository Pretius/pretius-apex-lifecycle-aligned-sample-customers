prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Status Details'
,p_alias=>'STATUS-DETAILS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Status Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_required_patch=>wwv_flow_imp.id(17138001262823690072)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_upd_yyyymmddhh24miss=>'20200116130642'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1611698440050273281)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721930057769835)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17000154073444197572)
,p_plug_name=>'Customer Status Code'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17000158894774197595)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14857732229615769850)
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P103_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17000158143473197593)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1611698440050273281)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P103_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17000158534279197594)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1611698440050273281)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Status Code'
,p_button_position=>'NEXT'
,p_button_condition=>'P103_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17000157310794197589)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1611698440050273281)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17000157758176197593)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1611698440050273281)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P103_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000154436017197578)
,p_name=>'P103_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17000154073444197572)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000154812760197580)
,p_name=>'P103_STATUS'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17000154073444197572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(265257292236847853)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'A Status can be associated with each customer.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000155667605197584)
,p_name=>'P103_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17000154073444197572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(265257658145847858)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter short description.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000156617439197585)
,p_name=>'P103_IS_ACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17000154073444197572)
,p_use_cache_before_default=>'NO'
,p_item_default=>'case when :P103_ID is null then ''Y'' end;'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'IS_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Active;Y'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14857752070773769895)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000159344847197595)
,p_name=>'P103_CREATED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17000158894774197595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created On:</b>'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the Customer Status was created.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000160212596197597)
,p_name=>'P103_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17000158894774197595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created By:</b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The User who created this Customer Status.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000161116419197598)
,p_name=>'P103_UPDATED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17000158894774197595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated On:</b>'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the Customer Status details was last Updated.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17000162058488197599)
,p_name=>'P103_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17000158894774197595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated By:</b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The User who last updated the Customer Status Details.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17000163320667197609)
,p_validation_name=>'P103_STATUS unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_status',
'where upper(status) = upper(:P103_STATUS)',
'    and (:P103_ID is null or id <> :P103_ID )'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'#LABEL# already exists.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(17000154812760197580)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17000163691797197611)
,p_validation_name=>'Check Dependencies'
,p_validation_sequence=>20
,p_validation=>'Select 1 from eba_cust_customers where status_id = :P103_ID and rownum = 1'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Cannot Delete this Status, Customers exists with this Status.'
,p_when_button_pressed=>wwv_flow_imp.id(17000157758176197593)
,p_associated_item=>wwv_flow_imp.id(17000154812760197580)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1611698639315273283)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17000157310794197589)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1611698732885273284)
,p_event_id=>wwv_flow_imp.id(1611698639315273283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17000164022510197611)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CUST_STATUS'
,p_attribute_02=>'EBA_CUST_STATUS'
,p_attribute_03=>'P103_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17000164424616197617)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CUST_STATUS'
,p_attribute_02=>'EBA_CUST_STATUS'
,p_attribute_03=>'P103_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CUST_STATUS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17000164769391197617)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(17000157758176197593)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1611698567324273282)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17000165213163197617)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :REQUEST = ''HOME'' then',
'   :LAST_VIEW := 100 ;',
'else',
'   :LAST_VIEW := 102 ;',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
