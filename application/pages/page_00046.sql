prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Application Activity'
,p_alias=>'APPLICATION-ACTIVITY'
,p_step_title=>'Application Activity'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650376536369951)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15965151882280271883)
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct number of users and number of page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch be'
||'tween the calendar view to the list view by clicking the <strong>list</strong> button.'
,p_page_component_map=>'08'
,p_last_upd_yyyymmddhh24miss=>'20210218140138'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14964755689064172591)
,p_plug_name=>'Application Activity'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(distinct_users) ||'' Users / ''||',
'       trim(to_char(page_events,''999G999G999G990'')) ||'' Views''  Page_Events,',
'       log_day the_day',
'  from apex_workspace_log_archive',
' where application_id = :app_id',
' union all',
'select to_char(count( distinct USERID) ) ||'' Users / ''||',
'       trim(to_char(count(*),''999G999G999G990'')) ||'' Views''  Page_Events,',
'       trunc(time_stamp) the_day',
'  from apex_activity_log l',
' where flow_id = :app_id ',
'   and userid is not null ',
'   and time_stamp > trunc(sysdate)',
' group by trunc(time_stamp)',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'THE_DAY'
,p_attribute_03=>'PAGE_EVENTS'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14964757702635172609)
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
wwv_flow_imp.component_end;
end;
/
