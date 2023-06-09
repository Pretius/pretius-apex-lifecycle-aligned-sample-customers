prompt --application/shared_components/user_interface/lovs/p68_product
begin
--   Manifest
--     P68_PRODUCT
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
 p_id=>wwv_flow_imp.id(16593967885260269129)
,p_lov_name=>'P68_PRODUCT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name d, id r',
'from   eba_cust_products',
'where id = :P68_PRODUCT_ID',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
