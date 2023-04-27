prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_tab_set=>'TS1'
,p_name=>'Data / Table Mapping'
,p_alias=>'DATA-TABLE-MAPPING'
,p_step_title=>'Data / Table Mapping'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650583115371840)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'  .rc-content-main {height: 400px; overflow: auto !important;}',
'</style> '))
,p_step_template=>wwv_flow_imp.id(14857692229054769793)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15965151882280271883)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15886232783730010186)
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
 p_id=>wwv_flow_imp.id(15886233181150010187)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_imp.id(14857738569295769861)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(15886223102730010155)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14857751378983769894)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15886233292887010187)
,p_plug_name=>'Data / Table Mapping'
,p_parent_plug_id=>wwv_flow_imp.id(15886233181150010187)
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_attribute_01=>wwv_flow_imp.id(15886222586957010136)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15886233883368010188)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15886233181150010187)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857752615928769901)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15886233805561010188)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15886233181150010187)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15886233576354010188)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15886233181150010187)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15886234378827010188)
,p_branch_action=>'f?p=&APP_ID.:62:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(15886233883368010188)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15886234197903010188)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(15886222586957010136)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15886233883368010188)
);
wwv_flow_imp.component_end;
end;
/
