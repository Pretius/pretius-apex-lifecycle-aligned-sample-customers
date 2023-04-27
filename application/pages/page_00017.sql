prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Reports'
,p_alias=>'REPORTS'
,p_step_title=>'Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650376536369951)
,p_step_template=>wwv_flow_imp.id(14857692229054769793)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14954739582107816435)
,p_protection_level=>'C'
,p_help_text=>'This page provides access to a set of "Customer Reports" and "Activity Reports". The Customer Reports detail customer-related data and the Activity Reports detail user activity in the application.'
,p_page_component_map=>'06'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17791582703080782258)
,p_plug_name=>'Activity Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(17791582215738782242)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14857748441790769882)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17804084849278842798)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17804087947416855050)
,p_plug_name=>'Customer Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(17804086452826847119)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14857748441790769882)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(17810885608984135014)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'17'
);
wwv_flow_imp.component_end;
end;
/
