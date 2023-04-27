prompt --application/shared_components/user_interface/lovs/p2_industry_id_lookup
begin
--   Manifest
--     P2_INDUSTRY_ID LOOKUP
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
 p_id=>wwv_flow_imp.id(14822340496428168521)
,p_lov_name=>'P2_INDUSTRY_ID LOOKUP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INDUSTRY_NAME display_value, ID return_value ',
'from EBA_CUST_INDUSTRIES',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
