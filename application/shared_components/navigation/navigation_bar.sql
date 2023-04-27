prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(16618445384961646338)
,p_icon_sequence=>10
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp.component_end;
end;
/
