prompt --application/shared_components/user_interface/lovs/feedback_types
begin
--   Manifest
--     FEEDBACK TYPES
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
 p_id=>wwv_flow_imp.id(18729259397282457701)
,p_lov_name=>'FEEDBACK TYPES'
,p_lov_query=>'select type, id from eba_cust_feedback_types order by id'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
