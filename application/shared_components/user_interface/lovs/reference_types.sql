prompt --application/shared_components/user_interface/lovs/reference_types
begin
--   Manifest
--     REFERENCE_TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(15640351289809627339)
,p_lov_name=>'REFERENCE_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select reference_type d, id r',
'from eba_cust_reference_types',
'where is_active = ''Y''',
'order by upper(reference_type)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
