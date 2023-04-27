prompt --application/shared_components/logic/application_processes/set_globals
begin
--   Manifest
--     APPLICATION PROCESS: set globals
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
 p_id=>wwv_flow_imp.id(14858112727707234714)
,p_process_sequence=>4
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set globals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(to_char(count(*),''999G999G999G999G990'')) into :CUSTOMERS from eba_cust_customers;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :PRODUCTS from eba_cust_products;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :CONTACTS from eba_cust_contacts;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :ACTIVITIES from eba_cust_activities;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
