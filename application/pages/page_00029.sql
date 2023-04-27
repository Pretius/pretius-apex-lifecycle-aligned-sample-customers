prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_tab_set=>'TS1'
,p_name=>'Recent Activities'
,p_alias=>'RECENT-ACTIVITIES'
,p_step_title=>'Recent Activities'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650376536369951)
,p_step_template=>wwv_flow_imp.id(14857692229054769793)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14954739582107816435)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16597945507271727230)
,p_plug_name=>'Customer Updates'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  n.customer_id,',
'        c.customer_name,',
'        ''Note Added'' note_type,',
'        dbms_lob.substr(n.note,100,1)||decode(greatest(length(n.note),100),100,null,''...'') detail,',
'        lower(n.created_by) updated_by,',
'        n.created updated',
'from EBA_CUST_NOTES n, eba_cust_customers c',
'where n.customer_id = c.id',
'union all',
'select  c.id,',
'        c.customer_name,',
'        ''Customer Added'' note_type,',
'        c.summary detail,',
'        lower(c.created_by) updated_by,',
'        c.created updated',
'from eba_cust_customers c',
'union all',
'select  n.customer_id,',
'        c.customer_name,',
'        ''Contact Added'' note_type,',
'        n.name detail,',
'        lower(n.created_by) updated_by,',
'        n.created updated',
'from EBA_CUST_CONTACTS n, eba_cust_customers c',
'where n.customer_id = c.id',
'union all',
'select  n.customer_id,',
'        c.customer_name,',
'        ''Link Added'' note_type,',
'        n.link_desc detail,',
'        lower(n.created_by) updated_by,',
'        n.created updated',
'from EBA_CUST_LINKS n, eba_cust_customers c',
'where n.customer_id = c.id',
'union all',
'select  n.customer_id,',
'        c.customer_name,',
'        ''File Added'' note_type,',
'        n.file_name detail,',
'        lower(n.created_by) updated_by,',
'        n.created updated',
'from EBA_CUST_FILES n, eba_cust_customers c',
'where n.customer_id = c.id',
'union all',
'select y.customer_id,',
'       y.customer_name,',
'       y.note_type,',
'       substr(y.detail,1,100)||decode(greatest(length(y.detail),100),100,null,''...'') detail,',
'       y.updated_by,',
'       y.updated',
'from (',
'select h.component_id customer_id,',
'       c.customer_name,',
'       initcap(substr(h.table_name, 1, length(h.table_name) - 1)) || '' Updated'' note_type,',
'       initcap(replace(replace(h.COLUMN_NAME,''_ID'',null),''_'','' ''))||'' changed from "''||h.OLD_VALUE||''" to "''||h.new_value||''"'' detail,',
'       lower(h.CHANGED_BY) updated_by,',
'       h.CHANGE_DATE updated',
'from EBA_CUST_HISTORY h, eba_cust_customers c',
'where h.component_id = c.id) y',
'union all',
'select y.customer_id,',
'       y.customer_name,',
'       y.note_type,',
'       substr(y.detail,1,100)||decode(greatest(length(y.detail),100),100,null,''...'') detail,',
'       y.updated_by,',
'       y.updated',
'from (',
'select h.component_id customer_id,',
'       h.old_value customer_name,',
'       initcap(substr(h.table_name, 1, length(h.table_name) - 1)) || '' Removed'' note_type,',
'       ''This customer has been removed. The "Customer Name" link will give a "No Data Found" error.'' detail,',
'       lower(h.CHANGED_BY) updated_by,',
'       h.CHANGE_DATE updated',
'from EBA_CUST_HISTORY h',
'where h.column_name = ''CUSTOMER_REMOVED'') y'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16597945598566727244)
,p_name=>'Customer Updates'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CBCHO'
,p_internal_uid=>2533964723637934404
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16597949777105765819)
,p_db_column_name=>'NOTE_TYPE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Update Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16597952003124801737)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16597952183293801738)
,p_db_column_name=>'DETAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Detail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16597952295447801738)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16597952401921801738)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16597953985724815655)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:P50_ID:#CUSTOMER_ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16597947480390728990)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25339667'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_ID:CUSTOMER_NAME:NOTE_TYPE:SUMMARY:DETAIL:UPDATED_BY:UPDATED:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17821544866984856488)
,p_plug_name=>'Customer Updates'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16597979686810544576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16597945507271727230)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17795850944894341531)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(17796887435354749287)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 31-JUL-2007 04:50 by SATHISH'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17823999354364092979)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 30-MAY-2007 04:37 by SATHISH'
);
wwv_flow_imp.component_end;
end;
/
