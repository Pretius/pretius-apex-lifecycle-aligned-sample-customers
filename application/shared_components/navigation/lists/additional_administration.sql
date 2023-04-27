prompt --application/shared_components/navigation/lists/additional_administration
begin
--   Manifest
--     LIST: Additional Administration
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
 p_id=>wwv_flow_imp.id(16344908093719847548)
,p_name=>'Additional Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16344908305742847549)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP,34:::'
,p_list_item_icon=>'fa-comment'
,p_list_text_01=>'Manage application notification text displayed on home page.  Requires Administrative privilege.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18731557474367858387)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:RP,119:::'
,p_list_item_icon=>'fa-comments-o'
,p_list_text_01=>'Report of all feedback left by application users. Feedback types include general comments, enhancement requests, and bugs.'
,p_security_scheme=>wwv_flow_imp.id(15674223689230729537)
,p_required_patch=>wwv_flow_imp.id(18729811502462578449)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
