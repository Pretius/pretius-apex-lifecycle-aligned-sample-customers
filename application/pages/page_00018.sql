prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Contacts'
,p_alias=>'CONTACTS'
,p_step_title=>'Contacts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650583115371840)
,p_step_template=>wwv_flow_imp.id(14857692229054769793)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14954672877910757979)
,p_protection_level=>'C'
,p_help_text=>'<p>This page provides an interactive report of all customer contacts.  Each contact is associated with one customer.  Assuming you have contribution privileges you can add contacts from this page or by locating a customer and clicking the add contact'
||' button.  Click on column headings to sort and filter data, click on the <strong>Actions</strong> menu to customize column display and many additional advanced features.</p>'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20210812003731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17803510102735712027)
,p_plug_name=>'Contacts'
,p_region_name=>'CONTACTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857734898739769853)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.name,',
'    a.title,',
'    a.phone,',
'    a.email,',
'    a.tags,',
'    a.company,',
'    (   select contact_type',
'        from eba_cust_contact_types t',
'        where t.id = a.contact_type_id ) contact_type,',
'    a.city,',
'    a.state,',
'    a.country,',
'    a.created,',
'    a.created_by,',
'    a.updated,',
'    a.updated_by,',
'    (   select customer_name',
'        from eba_cust_customers c',
'        where c.id = a.customer_id ) customer_name,',
'    a.customer_id',
'from eba_cust_contacts a'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(17803510198277712027)
,p_name=>'Contacts'
,p_max_row_count=>'10000'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>3739529323348919187
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803510409827712033)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>' '
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#themes/theme_13/ed-item.gif" alt="Edit" />'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803510521850712033)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_ID:#ID#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803510602716712034)
,p_db_column_name=>'TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803511497606712041)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803510920468712035)
,p_db_column_name=>'COMPANY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803511693127712042)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803511019572712035)
,p_db_column_name=>'CONTACT_TYPE'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Contact Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803510693622712034)
,p_db_column_name=>'PHONE'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803511122781712040)
,p_db_column_name=>'CITY'
,p_display_order=>11
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803510814973712034)
,p_db_column_name=>'EMAIL'
,p_display_order=>12
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_link=>'mailto:#EMAIL#'
,p_column_linktext=>'#EMAIL#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803511193430712040)
,p_db_column_name=>'STATE'
,p_display_order=>13
,p_column_identifier=>'I'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803511317080712041)
,p_db_column_name=>'COUNTRY'
,p_display_order=>14
,p_column_identifier=>'J'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17803523010160934879)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:#CUSTOMER_ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17808520710149780853)
,p_db_column_name=>'TAGS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_cust_tags_type_sum',
' where content_type = ''CONTACT''',
'   and tag_count > 0'))
,p_rpt_show_filter_lov=>'C'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17823762522328399746)
,p_db_column_name=>'CREATED'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17823762614290399746)
,p_db_column_name=>'UPDATED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15066903087193349259)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17803512104376715530)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9117312'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NAME:CUSTOMER_NAME:TITLE:CONTACT_TYPE:PHONE:EMAIL:CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17804251656468092593)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17820664151937894346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17804251656468092593)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Contact'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,2::'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15886929477120272254)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17804251656468092593)
,p_button_name=>'UPLOAD_CONTACTS_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Upload Contacts Data'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60,61,62,63::'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16593366101343616301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17803510102735712027)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17804254340877092609)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(17810884715779127512)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'18'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17804253858680092607)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'Go,P18_REPORT_SEARCH'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
