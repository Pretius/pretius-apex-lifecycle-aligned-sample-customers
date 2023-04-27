prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'0'
,p_alias=>'0'
,p_step_title=>'0'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_imp.component_end;
end;
/
