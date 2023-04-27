prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Validate Customer'
,p_alias=>'VALIDATE-CUSTOMER'
,p_step_title=>'Validate Customer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15965151882280271883)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
,p_last_upd_yyyymmddhh24miss=>'20210301102538'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14932465199777786835)
,p_plug_name=>'Validate Account'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14932466001391786841)
,p_plug_name=>'form items'
,p_parent_plug_id=>wwv_flow_imp.id(14932465199777786835)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14932466805928786849)
,p_name=>'Previous Verifications'
,p_parent_plug_id=>wwv_flow_imp.id(14932465199777786835)
,p_template=>wwv_flow_imp.id(14857732229615769850)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'	lower(verified_by) as validated_by,',
'        created last_validated,',
'	created validation_date,',
'	verification_comment',
'from',
'	eba_cust_verifications',
'where',
'	cust_id = :P10_ID',
'order by',
'	created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No validations have been recorded'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932467006501786851)
,p_query_column_id=>1
,p_column_alias=>'VALIDATED_BY'
,p_column_display_sequence=>1
,p_column_heading=>'Validated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932522500208363163)
,p_query_column_id=>2
,p_column_alias=>'LAST_VALIDATED'
,p_column_display_sequence=>2
,p_column_heading=>'Last Validated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932467083684786851)
,p_query_column_id=>3
,p_column_alias=>'VALIDATION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Validation Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932467184572786851)
,p_query_column_id=>4
,p_column_alias=>'VERIFICATION_COMMENT'
,p_column_display_sequence=>4
,p_column_heading=>'Comment'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14932465775017786840)
,p_plug_name=>'Introduction text'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_source=>'<p>If you feel this customer''s contacts, products, updates, links, and attachments are correct and accurate please validate the customer by clicking the highlighted button.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14932467382032786869)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14932465404309786837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14932467382032786869)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14932465578022786838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14932467382032786869)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'I verify customer content is accurate'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14932467998836786878)
,p_branch_name=>'back to customer'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,10:P50_ID:&P10_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14932466201542786842)
,p_name=>'P10_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14932466001391786841)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14932466407553786848)
,p_name=>'P10_I_VALIDATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14932466001391786841)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:I validate this project status is accurate;VALIDATED'
,p_field_template=>wwv_flow_imp.id(14857752276675769898)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14932466588533786849)
,p_name=>'P10_VERIFICATION_COMMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14932466001391786841)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14857752201300769897)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14932467684980786875)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'verify customer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_verifications',
'(cust_id, verified_by, verification_comment)',
'values',
'(:P10_ID, :app_user, :P10_VERIFICATION_COMMENT);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to verify account'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14932465578022786838)
,p_process_success_message=>'Account verified'
);
wwv_flow_imp.component_end;
end;
/
