prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Data Validation'
,p_alias=>'DATA-VALIDATION2'
,p_step_title=>'Data Validation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718649902724368096)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body section.load-warning {',
'    margin: 0 auto;',
'    border: 1px solid #FAD59E;',
'    border-radius: 3px;',
'    box-shadow: none;',
'    background: #FFFBE4;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15674223689230729537)
,p_protection_level=>'C'
,p_help_text=>'<p>This report shows how the uploaded data is to be processed.  Specifically what data will be inserted, updated and what data will not be loaded.  Data updates are based on exact customer name matches. Any rows with status codes that do not match ex'
||'isting status codes or category codes will fail to load.  The action column identifies how the row will be processed.</p>'
,p_page_component_map=>'03'
,p_last_upd_yyyymmddhh24miss=>'20200116130642'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18133524444703778392)
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
 p_id=>wwv_flow_imp.id(18133525127295778393)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18133525379945778393)
,p_name=>'Data Validation'
,p_parent_plug_id=>wwv_flow_imp.id(18133525127295778393)
,p_display_sequence=>20
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'', ''FAILED'')',
' order by seq_id'))
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || apex_escape.html(l_heading.label);',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133526121392778398)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133526467494778400)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133526913469778400)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133527335869778400)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133527759265778401)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133528066435778401)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133528511135778401)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133528881226778402)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133529317337778404)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133529694406778404)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133530141539778404)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133530495066778405)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133530876905778405)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133531335233778405)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133531747623778406)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133532146885778406)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133532530063778406)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133532913436778407)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133533338026778407)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133533710448778407)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133534162839778407)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133534562630778408)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133534943760778408)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133535312026778408)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133535683499778409)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133536076813778409)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133536524635778409)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133536918888778412)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133537326597778416)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133537726427778417)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133538112523778417)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133538478627778418)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133538908017778418)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133539304366778418)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133539707487778419)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133540136971778419)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133540481450778419)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133540912785778426)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133541303224778426)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133541741537778427)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133542073185778427)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133542535402778427)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133542965625778428)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133543266580778428)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133543688643778428)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18133544141932778428)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18134161657973884536)
,p_plug_name=>'Error'
,p_parent_plug_id=>wwv_flow_imp.id(18133525127295778393)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion load-warning clearfix" id="load-warning" style="position: static">',
'  <div class="uRegionContent clearfix">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      No data was provided that can be successfully loaded or updated.',
'    </div>',
'  </div>',
'</section>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 x ',
'from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'')'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18133544512686778429)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18133525127295778393)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18133545305541778429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18133525127295778393)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(14857752615928769901)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18133544988529778429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18133525127295778393)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18133546223541778430)
,p_branch_action=>'f?p=&APP_ID.:128:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18133545305541778429)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18133545779605778430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(18133481160311775568)
,p_attribute_02=>'P128_INSERT_COUNT'
,p_attribute_03=>'P128_UPDATE_COUNT'
,p_attribute_04=>'P128_ERROR_COUNT'
,p_attribute_05=>'P128_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18133545305541778429)
);
wwv_flow_imp.component_end;
end;
/
