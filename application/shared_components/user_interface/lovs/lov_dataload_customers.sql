prompt --application/shared_components/user_interface/lovs/lov_dataload_customers
begin
--   Manifest
--     LOV_DATALOAD_CUSTOMERS
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
 p_id=>wwv_flow_imp.id(15798156974558013907)
,p_lov_name=>'LOV_DATALOAD_CUSTOMERS'
,p_lov_query=>'.'||wwv_flow_imp.id(15798156974558013907)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798169123121013922)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unique ID'
,p_lov_return_value=>'ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798165886589013920)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Customer Name'
,p_lov_return_value=>'CUSTOMER_NAME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798172677506013926)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Status'
,p_lov_return_value=>'STATUS_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798157844548013914)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Category'
,p_lov_return_value=>'CATEGORY_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798168653187013921)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Geography'
,p_lov_return_value=>'GEOGRAPHY_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798169499267013922)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Industry'
,p_lov_return_value=>'INDUSTRY_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798173929678013927)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Tags'
,p_lov_return_value=>'TAGS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798171111704013924)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Referenceable Y/N'
,p_lov_return_value=>'REFERENCABLE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798170246113013924)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Marque Customer Y/N'
,p_lov_return_value=>'MARQUEE_CUSTOMER_YN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798170655298013924)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'Number of Users'
,p_lov_return_value=>'NUMBER_OF_USERS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798173496105013927)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'Summary'
,p_lov_return_value=>'SUMMARY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798173130535013926)
,p_lov_disp_sequence=>200
,p_lov_disp_value=>'Stock Symbol'
,p_lov_return_value=>'STOCK_SYMBOL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798167906511013921)
,p_lov_disp_sequence=>210
,p_lov_disp_value=>'DUNS #'
,p_lov_return_value=>'DUNS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798172323290013926)
,p_lov_disp_sequence=>220
,p_lov_disp_value=>'SIC'
,p_lov_return_value=>'SIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798175485757013928)
,p_lov_disp_sequence=>230
,p_lov_disp_value=>'Web Site'
,p_lov_return_value=>'WEB_SITE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798169877186013924)
,p_lov_disp_sequence=>240
,p_lov_disp_value=>'LinkedIn'
,p_lov_return_value=>'LINKEDIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798167115031013920)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Customer Profile'
,p_lov_return_value=>'CUSTOMER_PROFILE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798168268705013921)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Facebook'
,p_lov_return_value=>'FACEBOOK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15798174283223013927)
,p_lov_disp_sequence=>260
,p_lov_disp_value=>'Twitter'
,p_lov_return_value=>'TWITTER'
);
wwv_flow_imp.component_end;
end;
/
