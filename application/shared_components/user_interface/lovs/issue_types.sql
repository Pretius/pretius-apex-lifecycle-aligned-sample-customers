prompt --application/shared_components/user_interface/lovs/issue_types
begin
--   Manifest
--     ISSUE TYPES
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
 p_id=>wwv_flow_imp.id(2564643175682426277)
,p_lov_name=>'ISSUE TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(2564643175682426277)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2564643515911426278)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bug'
,p_lov_return_value=>'BUG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2564643920747426280)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Enhancement Request'
,p_lov_return_value=>'ER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2564644317164426280)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/
