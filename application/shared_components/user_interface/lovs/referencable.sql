prompt --application/shared_components/user_interface/lovs/referencable
begin
--   Manifest
--     REFERENCABLE
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
 p_id=>wwv_flow_imp.id(14757303586572178523)
,p_lov_name=>'REFERENCABLE'
,p_lov_query=>'.'||wwv_flow_imp.id(14757303586572178523)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14757303793803178527)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Yes'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14757304094538178531)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14757304385416178531)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Potentially'
,p_lov_return_value=>'Potentially'
);
wwv_flow_imp.component_end;
end;
/
