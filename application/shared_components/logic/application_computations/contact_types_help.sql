prompt --application/shared_components/logic/application_computations/contact_types_help
begin
--   Manifest
--     APPLICATION COMPUTATION: CONTACT_TYPES_HELP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(17834286759262423437)
,p_computation_sequence=>10
,p_computation_item=>'CONTACT_TYPES_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CONTACT_TYPES_HELP'');'
);
wwv_flow_imp.component_end;
end;
/
