prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14857754622194769907)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(14857692229054769793)
,p_default_dialog_template=>wwv_flow_imp.id(14857708428617769813)
,p_error_template=>wwv_flow_imp.id(14857701395249769805)
,p_printer_friendly_template=>wwv_flow_imp.id(14857692229054769793)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(14857701395249769805)
,p_default_button_template=>wwv_flow_imp.id(14857753145098769902)
,p_default_region_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_chart_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_form_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_reportr_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_tabform_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_wizard_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_menur_template=>wwv_flow_imp.id(14857737874998769858)
,p_default_listr_template=>wwv_flow_imp.id(14857735341511769856)
,p_default_irr_template=>wwv_flow_imp.id(14857734898739769853)
,p_default_report_template=>wwv_flow_imp.id(14857742002178769869)
,p_default_label_template=>wwv_flow_imp.id(14857752201300769897)
,p_default_menu_template=>wwv_flow_imp.id(14857753375097769903)
,p_default_calendar_template=>wwv_flow_imp.id(14857753469765769905)
,p_default_list_template=>wwv_flow_imp.id(14857747128496769880)
,p_default_nav_list_template=>wwv_flow_imp.id(14857750332727769887)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(14857750332727769887)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(14857751184094769892)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(14857721930057769835)
,p_default_dialogr_template=>wwv_flow_imp.id(14857721646117769833)
,p_default_option_label=>wwv_flow_imp.id(14857752201300769897)
,p_default_header_template=>wwv_flow_imp.id(14857721646117769833)
,p_default_footer_template=>wwv_flow_imp.id(14857721646117769833)
,p_default_required_label=>wwv_flow_imp.id(14857752276675769898)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
