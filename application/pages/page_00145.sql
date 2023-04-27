prompt --application/pages/page_00145
begin
--   Manifest
--     PAGE: 00145
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
 p_id=>145
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'&P145_ACTIVITY.'
,p_alias=>'ACTIVITY'
,p_step_title=>'&P145_ACTIVITY.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(20110470510240044582)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>'$(''dd.t-AVPList-value img'').attr(''style'',''max-height:250px;max-width:500px;'');'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.js-dynamicHideShowRegion { display: none }',
'.apex-rds { visibility: hidden }',
'.t-Report--cleanBorders .t-Report-colHead { border-bottom: 1px solid rgba(0, 0, 0, .05); background-color: #fcfcfc; color: #707070; font-weight: normal; padding-bottom: .8rem; padding-top: .8rem }',
'.t-Report--cleanBorders .js-stickyTableHeader.is-stuck .t-Report-colHead { border-bottom: 0; }',
'.t-Report--cleanBorders .t-Report-cell { border-top: 1px solid #F4F4F4; }'))
,p_step_template=>wwv_flow_imp.id(14857704922607769810)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(18137428917441624781)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17959702834804746526)
,p_name=>'References'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    c.id customer_id,',
'    c.customer_name,',
'    ct.name contact_name,',
'    nvl(a.activity_date, rf.activity_date) activity_date,',
'    nvl(a.owner, rf.owner) owner,',
'    nvl(a.location, rf.location) location,',
'    rf.contact_id',
'from eba_cust_activities a,',
'    eba_cust_activity_ref rf,',
'    eba_cust_customers c,',
'    eba_cust_contacts ct',
'where a.id = :P145_ID',
'    and rf.activity_id = a.id',
'    and c.id = rf.customer_id',
'    and ct.id(+) = rf.contact_id',
'order by lower(c.customer_name), lower(ct.name)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702927779746527)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959703035088746528)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959703144628746529)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Customer'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP:P50_ID:#CUSTOMER_ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959703225040746530)
,p_query_column_id=>4
,p_column_alias=>'CONTACT_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Contact'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167451969876751981)
,p_query_column_id=>5
,p_column_alias=>'ACTIVITY_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Activity date'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_activities',
'where id = :P145_ID',
'    and activity_date is null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167452094671751982)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_activities',
'where id = :P145_ID',
'    and owner is null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167452220656751983)
,p_query_column_id=>7
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>6
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_activities',
'where id = :P145_ID',
'    and location is null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167456393069752025)
,p_query_column_id=>8
,p_column_alias=>'CONTACT_ID'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18166609760384540024)
,p_plug_name=>'Page Actions'
,p_region_name=>'listPageActions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--stacked:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(18172614503655329440)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14857747128496769880)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18166610105680540026)
,p_plug_name=>'Region display selector'
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18166624147432540038)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18166633240690540060)
,p_name=>'Attachments'
,p_region_name=>'rptAttachments'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    ''<a href="''||apex_util.get_blob_file_src(''P64_FILE_BLOB'',id)||''">''||apex_escape.html(f.file_name)||''</a>'' file_name,',
'    f.file_mimetype,',
'    f.file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(f.file_blob)) f_len,',
'    substr(f.file_comments,1,50)||decode(greatest(length(nvl(f.file_comments,'' '')),50),50,null,''...'') file_comments,',
'    case when instr(upper(f.file_name),''.PPT'') > 0or instr(upper(f.file_name),''.PPTX'') > 0 then',
'        ''uFileIcon powerpoint''',
'    when instr(upper(f.file_name),''.XLS'') > 0 or instr(upper(f.file_name),''.XLSX'') > 0 then',
'        ''uFileIcon excel''',
'    when instr(upper(f.file_name),''.DOC'') > 0 or instr(upper(f.file_name),''.DOCX'') > 0 then',
'        ''uFileIcon word''',
'    when instr(upper(f.file_name),''.PDF'') > 0 then',
'        ''uFileIcon pdf''',
'    when instr(upper(f.file_name),''.GIF'') > 0 or',
'         instr(upper(f.file_name),''.PNG'') > 0 or',
'         instr(upper(f.file_name),''.TIFF'') > 0 or',
'         instr(upper(f.file_name),''.JPG'') > 0 then',
'        ''uFileIcon image''',
'    else',
'        ''uFileIcon generic''',
'    end file_type,',
'    f.created,',
'    lower(f.created_by) created_by',
'from eba_cust_activity_files f',
'where f.activity_id = :P145_ID',
'order by f.created desc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No attachments found'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_imp.id(18166633665121540061)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP,114:P114_ACTIVITY_ID,P114_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166634024845540062)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166634441155540062)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Mimetype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166634772486540062)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>9
,p_column_heading=>'Charset'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166635228414540063)
,p_query_column_id=>5
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>4
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166635613847540063)
,p_query_column_id=>6
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166635996036540064)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="#FILE_TYPE#" />'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166636465461540064)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#CREATED# &middot; #CREATED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166636821598540064)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18166641659695540071)
,p_name=>'Activity'
,p_region_name=>'CUSTOMERS'
,p_template=>wwv_flow_imp.id(14857721646117769833)
,p_display_sequence=>20
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.type_id,',
'    a.name,',
'    a.description,',
'    a.activity_date,',
'    a.owner,',
'    a.location,',
'    a.created,',
'    lower(a.created_by) created_by,',
'    a.updated,',
'    lower(a.updated_by) updated_by,',
'    (   select count(*)',
'        from eba_cust_activity_ref rf',
'        where rf.activity_id = a.id ) references',
'from eba_cust_activities a',
'where a.id = :P145_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857743897467769875)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166656334164540158)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166657094115540161)
,p_query_column_id=>2
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(18144412855379977785)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702126501746519)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702265327746520)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>7
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702270057746521)
,p_query_column_id=>5
,p_column_alias=>'ACTIVITY_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Activity date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_activities',
'where id = :P145_ID',
'    and activity_date is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702392799746522)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>9
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_activities',
'where id = :P145_ID',
'    and owner is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702542983746523)
,p_query_column_id=>7
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_activities',
'where id = :P145_ID',
'    and location is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166644837968540087)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>13
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#CREATED# by <i>#CREATED_BY#</i>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702657673746524)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166657948621540164)
,p_query_column_id=>10
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>15
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_column_html_expression=>'#UPDATED# by <i>#UPDATED_BY#</i><!-- <button type="button" class="t-Button t-Button--icon t-Button--small t-Button--iconRight" onclick="f?p=&APP_ID.:117:&APP_SESSION.:::RP:P117_ID:#ID#"><span class="t-Button-label">View History</span><span class="t-I'
||'con t-Icon--right fa fa-external-link" aria-hidden="true"></span></button>-->'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18166658328807540166)
,p_query_column_id=>11
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17959702670533746525)
,p_query_column_id=>12
,p_column_alias=>'REFERENCES'
,p_column_display_sequence=>12
,p_column_heading=>'References'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18166659877352540171)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857737874998769858)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17838614244403304417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14857753375097769903)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18166660267895540172)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(18166659877352540171)
,p_button_name=>'RELOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14857752615928769901)
,p_button_image_alt=>'Reload'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-undo'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18166660760804540172)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(18166659877352540171)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Activity'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP,56:P56_ID:&P145_ID.'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18166637188013540065)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(18166633240690540060)
,p_button_name=>'POPATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64:P64_CUSTOMER_ID:&P145_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18166637649634540065)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(18166633240690540060)
,p_button_name=>'VIEW_ATTACHMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Attachments'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52:P52_ID:&P145_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18166624485507540039)
,p_name=>'P145_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18166624147432540038)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18167452366087751984)
,p_name=>'P145_ACTIVITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18166624147432540038)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'from eba_cust_activities',
'where id = :P145_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(18166682302188540208)
,p_computation_sequence=>10
,p_computation_item=>'P145_ACTIVITY'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'from eba_cust_activities',
'where id = :P145_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(18166682689717540210)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'145'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18166686000158540220)
,p_name=>'Handle Show / Hide Content Regions'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18166686527043540221)
,p_event_id=>wwv_flow_imp.id(18166686000158540220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHIdeShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'      $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHIdeShowRegions);',
'}())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18166693010506540228)
,p_name=>'Refresh Attachments'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18166609760384540024)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18166693510640540228)
,p_event_id=>wwv_flow_imp.id(18166693010506540228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18166633240690540060)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18166688708747540224)
,p_name=>'Refresh Page Regions on dialog close'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18166609760384540024)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18166689699687540225)
,p_event_id=>wwv_flow_imp.id(18166688708747540224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18166633240690540060)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18167452432545751985)
,p_name=>'Refresh Page'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18166660760804540172)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18167452504539751986)
,p_event_id=>wwv_flow_imp.id(18167452432545751985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18166659877352540171)
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18166683398455540212)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Count Clicks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_clicks (cust_id) values (:P145_ID);',
'delete from eba_cust_clicks where view_timestamp < (sysdate - 90);',
'commit;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
