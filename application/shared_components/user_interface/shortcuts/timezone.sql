prompt --application/shared_components/user_interface/shortcuts/timezone
begin
--   Manifest
--     SHORTCUT: TIMEZONE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(16609875397542269630)
,p_shortcut_name=>'TIMEZONE'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut_language=>'PLSQL'
,p_shortcut=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>''||''Dates and Times are displayed in the ''||',
'''<a href="f?p=''||:APP_ID||'':76:''||:APP_SESSION||''">''||',
'nvl(apex_escape.html(apex_util.get_session_time_zone),''unknown'')||''</a> timezone.</p>'';'))
);
wwv_flow_imp.component_end;
end;
/
