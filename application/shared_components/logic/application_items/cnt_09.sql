prompt --application/shared_components/logic/application_items/cnt_09
begin
--   Manifest
--     APPLICATION ITEM: CNT_09
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
 p_id=>wwv_flow_imp.id(14953761103027764676)
,p_name=>'CNT_09'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
