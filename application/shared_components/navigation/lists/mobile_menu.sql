prompt --application/shared_components/navigation/lists/mobile_menu
begin
--   Manifest
--     LIST: + Mobile Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(16641523195795444873)
,p_name=>'+ Mobile Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
