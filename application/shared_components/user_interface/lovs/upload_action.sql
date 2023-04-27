prompt --application/shared_components/user_interface/lovs/upload_action
begin
--   Manifest
--     UPLOAD_ACTION
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
 p_id=>wwv_flow_imp.id(17793573915824573645)
,p_lov_name=>'UPLOAD_ACTION'
,p_lov_query=>'.'||wwv_flow_imp.id(17793573915824573645)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17793574109182573649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Insert'
,p_lov_return_value=>'INSERT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17793574296741573654)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Update'
,p_lov_return_value=>'UPDATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17793574504474573654)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'No Change'
,p_lov_return_value=>'NOTHING'
,p_lov_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_lov_disp_cond=>'35'
);
wwv_flow_imp.component_end;
end;
/
