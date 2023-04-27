prompt --application/shared_components/logic/application_items/inactive_msg
begin
--   Manifest
--     APPLICATION ITEM: INACTIVE_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(17834258849369231405)
,p_name=>'INACTIVE_MSG'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
