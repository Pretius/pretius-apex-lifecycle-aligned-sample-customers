prompt --application/shared_components/user_interface/lovs/access_control_scope
begin
--   Manifest
--     ACCESS CONTROL SCOPE
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
 p_id=>wwv_flow_imp.id(16584323906668020114)
,p_lov_name=>'ACCESS CONTROL SCOPE'
,p_lov_query=>'.'||wwv_flow_imp.id(16584323906668020114)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14779514084846263383)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Reader access for any authenticated user'
,p_lov_return_value=>'PUBLIC_READONLY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14779514398304263383)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Contributor access for any authenticated user'
,p_lov_return_value=>'PUBLIC_CONTRIBUTE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14779514705462263383)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Restricted to users defined in access control list'
,p_lov_return_value=>'ACL_ONLY'
);
wwv_flow_imp.component_end;
end;
/
