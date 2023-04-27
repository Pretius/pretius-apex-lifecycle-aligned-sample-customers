prompt --application/shared_components/security/authorizations/contribution_rights
begin
--   Manifest
--     SECURITY SCHEME: CONTRIBUTION RIGHTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(15965151882280271883)
,p_name=>'CONTRIBUTION RIGHTS'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_cust.get_authorization_level(:APP_USER) >= 2;'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
