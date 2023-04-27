prompt --application/shared_components/user_interface/lovs/homepage_display_as
begin
--   Manifest
--     HOMEPAGE_DISPLAY_AS
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
 p_id=>wwv_flow_imp.id(1148683017725765131)
,p_lov_name=>'HOMEPAGE_DISPLAY_AS'
,p_lov_query=>'.'||wwv_flow_imp.id(1148683017725765131)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1148683203461765132)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Cards View'
,p_lov_return_value=>'CARDS'
,p_lov_template=>'<span class="t-Icon fa fa-cards" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1148683999669765133)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Logo View'
,p_lov_return_value=>'LOGOS'
,p_lov_template=>'<span class="t-Icon fa fa-tiles-2x2" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>'APEX_AUTHORIZATION.IS_AUTHORIZED(p_authorization_name => ''CONTRIBUTION RIGHTS'')'
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1148683656566765133)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Report View'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp.component_end;
end;
/
