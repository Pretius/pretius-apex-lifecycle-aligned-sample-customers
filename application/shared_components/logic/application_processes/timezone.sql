prompt --application/shared_components/logic/application_processes/timezone
begin
--   Manifest
--     APPLICATION PROCESS: timezone
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(16609875003990262046)
,p_process_sequence=>3
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'timezone'
,p_process_sql_clob=>'eba_cust_tz_init;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to set time zone.'
);
wwv_flow_imp.component_end;
end;
/
