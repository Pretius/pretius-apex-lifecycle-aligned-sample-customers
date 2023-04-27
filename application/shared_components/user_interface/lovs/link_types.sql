prompt --application/shared_components/user_interface/lovs/link_types
begin
--   Manifest
--     LINK_TYPES
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
 p_id=>wwv_flow_imp.id(17827444066997313636)
,p_lov_name=>'LINK_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(17827444066997313636)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17827444948429313649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Excel Worksheet'
,p_lov_return_value=>'EXL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17827444746996313649)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'HTML Page'
,p_lov_return_value=>'HTM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17827444557045313649)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'PDF Document'
,p_lov_return_value=>'PDF'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17827445163701313649)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Text Document'
,p_lov_return_value=>'TXT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17827444355366313649)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Word Document'
,p_lov_return_value=>'DOC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17796290528448848583)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTH'
);
wwv_flow_imp.component_end;
end;
/
