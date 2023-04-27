prompt --application/shared_components/navigation/lists/data_load_process_train_customers_004
begin
--   Manifest
--     LIST: Data Load Process Train - Customers
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
 p_id=>wwv_flow_imp.id(18165028139379386179)
,p_name=>'Data Load Process Train - Customers'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
