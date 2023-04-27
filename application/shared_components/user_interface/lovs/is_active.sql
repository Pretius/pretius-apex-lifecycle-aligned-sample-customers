prompt --application/shared_components/user_interface/lovs/is_active
begin
--   Manifest
--     IS ACTIVE
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
 p_id=>wwv_flow_imp.id(14286546680128212782)
,p_lov_name=>'IS ACTIVE'
,p_lov_query=>'.'||wwv_flow_imp.id(14286546680128212782)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14286546879103212786)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'Y'
);
wwv_flow_imp.component_end;
end;
/
