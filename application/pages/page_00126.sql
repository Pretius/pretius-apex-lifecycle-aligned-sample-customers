prompt --application/pages/page_00126
begin
--   Manifest
--     PAGE: 00126
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_page.create_page(
 p_id=>126
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Data / Table Mapping'
,p_alias=>'DATA-TABLE-MAPPING2'
,p_step_title=>'Data / Table Mapping'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'  .rc-content-main {height: 400px; overflow: auto !important;}',
'</style> '))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'<p>Map this applications customer column names with your data to be uploaded.  The <strong>Customer Name</strong> column is required.  For <strong>Category</strong> columns choose "CATEGORY_ID" (a numeric column) but load data that is a valid (charac'
||'ter string) category name (case-sensitivity matters). For <strong>Type</strong> columns choose "TYPE_ID" (a numeric column) but load data that is a valid (character string) type name (case-sensitivity matters).  For <strong>Status</strong> columns ch'
||'oose "STATUS_ID" (a numeric column) but load data that is a valid (character string) status name (case-sensitivity matters).  Expand the valid categories, types, and statuses below to verify your values.  Select <strong>Do Not Load</strong> column ma'
||'pping for columns you do not wish to load.</p>'
,p_page_component_map=>'03'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18133520068648778388)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18133520853957778389)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_imp.id(14857738569295769861)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(18133484926490775577)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14857751378983769894)
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18133521142706778389)
,p_plug_name=>'Data / Table Mapping'
,p_parent_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_imp.id(18133481160311775568)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18133811540850838160)
,p_name=>'Valid Customer Statuses '
,p_parent_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_template=>wwv_flow_imp.id(14857732229615769850)
,p_display_sequence=>40
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status customer_status,',
'    description,',
'    decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) status',
'from eba_cust_status',
'order by upper(status)'))
,p_header=>'<p>Customer status values must be one of the valid status values listed below.  Administrators of this application can extend and modify customer status values from application administration.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>1500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133811783808838162)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133822239213838163)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133822591617838164)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18133824188999839123)
,p_name=>'Valid Customer Types '
,p_parent_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_template=>wwv_flow_imp.id(14857732229615769850)
,p_display_sequence=>30
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type,',
'    description,',
'    decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) status',
'from eba_cust_type',
'order by upper(type)'))
,p_header=>'<p>Customer status values must be one of the valid status values listed below.  Administrators of this application can extend and modify customer status values from application administration.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>1500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133825313549839127)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133824477765839125)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133824903929839127)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18133827559218840040)
,p_name=>'Valid Customer Categories'
,p_parent_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_template=>wwv_flow_imp.id(14857732229615769850)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category,',
'    description,',
'    decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) status',
'from eba_cust_categories',
'order by upper(category)'))
,p_header=>'<p>Customer categories must be one of the valid values from the list below.  Application administrators can extend this list of values from the administrative console.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133827827523840040)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>1
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133828169849840041)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133828615850840042)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18133521491965778389)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18133522351955778390)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(14857752615928769901)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18133522028192778390)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18133520853957778389)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18133523195385778391)
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18133522351955778390)
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''Customers'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''N'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18133523567097778391)
,p_branch_action=>'f?p=&APP_ID.:128:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18133522351955778390)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''Customers'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''Y'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18133522846634778390)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(18133481160311775568)
,p_attribute_02=>'P128_INSERT_COUNT'
,p_attribute_03=>'P128_UPDATE_COUNT'
,p_attribute_04=>'P128_ERROR_COUNT'
,p_attribute_05=>'P128_REVIEW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18133522351955778390)
);
wwv_flow_imp.component_end;
end;
/
