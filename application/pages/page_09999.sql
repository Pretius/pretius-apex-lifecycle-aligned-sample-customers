prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Image Download'
,p_alias=>'IMAGE'
,p_step_title=>'Image Download'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'This page is only used as a placeholder for calling the get image URL on demand process.'
,p_page_component_map=>'11'
,p_last_upd_yyyymmddhh24miss=>'20190918111405'
);
wwv_flow_imp.component_end;
end;
/
