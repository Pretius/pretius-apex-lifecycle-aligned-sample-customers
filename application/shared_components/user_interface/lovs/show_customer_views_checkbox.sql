prompt --application/shared_components/user_interface/lovs/show_customer_views_checkbox
begin
--   Manifest
--     SHOW CUSTOMER VIEWS CHECKBOX
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
 p_id=>wwv_flow_imp.id(17948219055104366288)
,p_lov_name=>'SHOW CUSTOMER VIEWS CHECKBOX'
,p_lov_query=>'.'||wwv_flow_imp.id(17948219055104366288)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17948219464523366292)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Show Customer Views'
,p_lov_return_value=>'Y'
);
wwv_flow_imp.component_end;
end;
/
