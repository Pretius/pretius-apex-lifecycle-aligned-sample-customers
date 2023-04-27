prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(129530844022967)
);
wwv_flow_imp.component_end;
end;
/
