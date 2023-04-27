prompt --application/shared_components/navigation/breadcrumbs/breadcrumb1
begin
--   Manifest
--     MENU: Breadcrumb1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(17796549046858957939)
,p_name=>'Breadcrumb1'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15827586883502185028)
,p_parent_id=>wwv_flow_imp.id(15688829880691441227)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17796758941149994121)
,p_parent_id=>wwv_flow_imp.id(17796783650341110332)
,p_short_name=>'Customer Details'
,p_link=>'f?p=&APP_ID.:2:&SESSION.:HOME_CUSTOMER_DETAILS:&DEBUG.:RP,7::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17796783650341110332)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
