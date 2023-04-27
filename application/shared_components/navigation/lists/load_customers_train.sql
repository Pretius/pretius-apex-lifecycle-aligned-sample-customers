prompt --application/shared_components/navigation/lists/load_customers_train
begin
--   Manifest
--     LIST: Load Customers Train
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
 p_id=>wwv_flow_imp.id(17793351409126170810)
,p_name=>'Load Customers Train'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
