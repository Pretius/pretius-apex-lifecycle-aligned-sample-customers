prompt --application/shared_components/user_interface/lovs/username_format
begin
--   Manifest
--     USERNAME_FORMAT
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
 p_id=>wwv_flow_imp.id(14813840982449713139)
,p_lov_name=>'USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(14813840982449713139)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14813841288746713140)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Address'
,p_lov_return_value=>'EMAIL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14813841594308713140)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non-Email Address'
,p_lov_return_value=>'STRING'
);
wwv_flow_imp.component_end;
end;
/
