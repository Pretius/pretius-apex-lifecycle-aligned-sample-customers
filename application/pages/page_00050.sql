prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_imp.id(14542516592926628312)
,p_name=>'Customer'
,p_alias=>'CUSTOMER'
,p_step_title=>'Customer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14718650480691371224)
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
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(146348822035819471)
,p_name=>'Details'
,p_region_name=>'DETAILS'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   a.id,',
'   a.status_id,',
'   a.parent_customer_id,',
'   ( select p.customer_name from eba_cust_customers p where p.id = a.parent_customer_id ) parent_customer,',
'   a.type_id,',
'   a.use_case_id,',
'   a.strategic_customer_program_yn,',
'   customer_name,',
'   sys.dbms_lob.substr(customer_profile,100,1) customer_profile,',
'   /*case when a.logo_mimetype like ''image%'' then',
'       ''<img src="''||APEX_UTIL.GET_BLOB_FILE_SRC (',
'           p_item_name => ''P2_LOGO_BLOB'',',
'           p_v1        => :P50_ID,',
'           p_content_disposition => ''inline'')||''" />''',
'   else',
'       ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC (',
'           p_item_name => ''P2_LOGO_BLOB'',',
'           p_v1        => :P50_ID,',
'           p_content_disposition => ''attachment'')||''">Download</a>''',
'   end as logo,',
'*/',
'   --dbms_lob.getlength(logo_blob) logo,',
'   category,',
'   a.created,',
'   geography_name,',
'   country_id,',
'   (select INDUSTRY_NAME ',
'    from EBA_CUST_INDUSTRIES i',
'    where a.industry_id = i.id) industry,',
'   referencable,',
'   number_of_users,',
'   stock_symbol,',
'   sic,',
'   duns,',
'   (select channel from eba_cust_sales_channel where id = a.sales_channel_id) sales_channel_id,',
'   marquee_customer_yn,',
'   trim(decode(web_site,null,null,''<a href="''||apex_escape.html(web_site)||''" target="_blank">''||',
'     apex_escape.html(web_site)||''</a>'')||'' ''||',
'     decode(Facebook,null,null,''<a href="''||apex_escape.html(Facebook)||''" target="_blank">Facebook</a>'')||'' ''||',
'     decode(linkedIn,null,null,''<a href="''||apex_escape.html(LinkedIn)||''" target="_blank">LinkedIn</a>'')||'' ''||',
'     decode(twitter,null,null,''<a href="''||apex_escape.html(twitter)||''" target="_blank">twitter</a>'')',
'   ) web_site,',
'   --(select listagg(p.product_name, '', '') within group (order by p.product_name) product_uses',
'   -- from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p',
'   -- where c.id = u.customer_id',
'   -- and u.product_id = p.id',
'   -- and c.id = a.id',
'   --  group by c.customer_name',
'   --) product_uses,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) reference_types,',
'    (select status from EBA_CUST_REF_PHASE p where p.id = a.reference_phase_id) reference_phase,',
'    a.REF_RECRUITMENT_OWNER,',
'    (   select listagg(pf.name, '', '') within group (order by pf.name)',
'        from eba_cust_product_families pf',
'        where pf.id in (select p.product_family_id',
'                        from eba_cust_product_uses pu,',
'                            eba_cust_products p',
'                        where pu.customer_id = a.id',
'                            and p.id = pu.product_id',
'                            and p.product_family_id is not null)',
'    ) product_familes,',
'    a.updated,',
'    lower(a.updated_by) updated_by',
'from',
'   eba_cust_customers a , eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.id = :P50_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857743897467769875)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146350800129819491)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1105865201265847953)
,p_query_column_id=>2
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(14863305098959315969)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057337204651242)
,p_query_column_id=>3
,p_column_alias=>'PARENT_CUSTOMER_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Parent'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:#PARENT_CUSTOMER_ID#'
,p_column_linktext=>'#PARENT_CUSTOMER#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_customers c',
'where c.id = :P50_ID',
'    and c.parent_customer_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057382023651243)
,p_query_column_id=>4
,p_column_alias=>'PARENT_CUSTOMER'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057528999651244)
,p_query_column_id=>5
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and type_id is not null',
'   and ''Include'' = (select build_option_status',
'  from apex_application_build_options',
' where build_option_name = ''Customer Status''',
'   and application_id = :APP_ID)'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17039734630296662665)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057583124651245)
,p_query_column_id=>6
,p_column_alias=>'USE_CASE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Use Case'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and use_case_id is not null',
'   and ''Include'' = (select build_option_status',
'  from apex_application_build_options',
' where build_option_name = ''Customer Use Case''',
'   and application_id = :APP_ID)'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17125994141500024761)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057681742651246)
,p_query_column_id=>7
,p_column_alias=>'STRATEGIC_CUSTOMER_PROGRAM_YN'
,p_column_display_sequence=>9
,p_column_heading=>'Strategic Customer Program'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and strategic_customer_program_yn is not null',
'   and ''Include'' = (select build_option_status',
'  from apex_application_build_options',
' where build_option_name = ''Strategic Customer Program''',
'   and application_id = :APP_ID)'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17800927397335229149)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057830791651247)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148057938442651248)
,p_query_column_id=>9
,p_column_alias=>'CUSTOMER_PROFILE'
,p_column_display_sequence=>15
,p_column_heading=>'Profile'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_customers',
'where id = :P50_ID',
'    and customer_profile is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058224753651251)
,p_query_column_id=>10
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>13
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and category_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058286140651252)
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>43
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058464422651253)
,p_query_column_id=>12
,p_column_alias=>'GEOGRAPHY_NAME'
,p_column_display_sequence=>16
,p_column_heading=>'Geography'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_geography_id number;',
'begin',
'    begin',
'    select geography_id',
'      into l_geography_id',
'      from eba_cust_customers',
'     where id = :P50_ID;',
'    exception when no_data_found then',
'        l_geography_id := null;',
'        return false;',
'    end;',
'    return (wwv_flow_utilities.is_build_option_enabled(''Geography'') and l_geography_id is not null);',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058526584651254)
,p_query_column_id=>13
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>17
,p_column_heading=>'Country'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_country_id number;',
'begin',
'    select country_id',
'      into l_country_id',
'      from eba_cust_customers',
'     where id = :P50_ID;',
'    return (wwv_flow_utilities.is_build_option_enabled(''Countries'') and l_country_id is not null);',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(16871183584403929462)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058637381651255)
,p_query_column_id=>14
,p_column_alias=>'INDUSTRY'
,p_column_display_sequence=>14
,p_column_heading=>'Industry'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and industry_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059948408651268)
,p_query_column_id=>15
,p_column_alias=>'REFERENCABLE'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and REFERENCABLE is not null',
'   and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059222616651261)
,p_query_column_id=>16
,p_column_alias=>'NUMBER_OF_USERS'
,p_column_display_sequence=>22
,p_column_heading=>'Number of Users'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c int;',
'   is_not_null boolean default false;',
'   is_enabled boolean default true;',
'begin',
'for c1 in (select 1 from eba_cust_customers where id = :P50_ID and number_of_users is not null) loop',
'   is_not_null := true;',
'end loop;',
'is_enabled := wwv_flow_utilities.is_build_option_enabled(''Number_of_users'');',
'if is_not_null and is_enabled then return true; else return false; end if;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059458872651263)
,p_query_column_id=>17
,p_column_alias=>'STOCK_SYMBOL'
,p_column_display_sequence=>18
,p_column_heading=>'Stock Symbol'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and stock_symbol is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059488736651264)
,p_query_column_id=>18
,p_column_alias=>'SIC'
,p_column_display_sequence=>23
,p_column_heading=>'SIC Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and sic is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059624529651265)
,p_query_column_id=>19
,p_column_alias=>'DUNS'
,p_column_display_sequence=>24
,p_column_heading=>'DUNS Identifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and duns is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059679643651266)
,p_query_column_id=>20
,p_column_alias=>'SALES_CHANNEL_ID'
,p_column_display_sequence=>25
,p_column_heading=>'Sales Channel'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and sales_channel_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059833372651267)
,p_query_column_id=>21
,p_column_alias=>'MARQUEE_CUSTOMER_YN'
,p_column_display_sequence=>11
,p_column_heading=>'Marquee Customer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and marquee_customer_yn is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17800927397335229149)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146350631511819489)
,p_query_column_id=>22
,p_column_alias=>'WEB_SITE'
,p_column_display_sequence=>3
,p_column_heading=>'Web Site(s)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select 1 from eba_cust_customers where id = :P50_ID and web_site is not null'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146350691579819490)
,p_query_column_id=>23
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from dual',
' where (',
'        select listagg(rt.reference_type, '', '') within group (order by rt.reference_type)',
'          from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'         where ref.customer_id = :P50_ID',
'           and rt.id = ref.reference_type_id',
'       ) is not null',
'    and (APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'' or APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'')'))
,p_derived_column=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_cust_customers',
'where referencable != ''No'' and referencable is not null and id = :P50_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058702336651256)
,p_query_column_id=>24
,p_column_alias=>'REFERENCE_PHASE'
,p_column_display_sequence=>19
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and reference_phase_id is not null',
'   and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058779256651257)
,p_query_column_id=>25
,p_column_alias=>'REF_RECRUITMENT_OWNER'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_CUST_CUSTOMERS',
'where id = :P50_ID ',
'and REF_RECRUITMENT_OWNER is not null',
'and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148058958371651258)
,p_query_column_id=>26
,p_column_alias=>'PRODUCT_FAMILES'
,p_column_display_sequence=>21
,p_column_heading=>'Product Families'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_uses pu,',
'    eba_cust_products p',
'where pu.customer_id = :P50_ID',
'    and p.id = pu.product_id',
'    and p.product_family_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059038413651259)
,p_query_column_id=>27
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>44
,p_column_heading=>'Last Updated'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148059071893651260)
,p_query_column_id=>28
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>45
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1096157534090229868)
,p_plug_name=>'Customer Account'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  ''Discount Level'' label,',
'  to_char(nvl(DISCOUNT_LEVEL,0),''999G999G999G999G999G999G990'') || ''%'' return_val',
'from',
'   eba_cust_customers',
'where ',
'   id = :P50_ID and nvl(DISCOUNT_LEVEL,0) != 0',
'union all',
'select',
'  ''Total Contract Value (TCV)'' label,',
'  ''$'' || to_char(nvl(TOTAL_CONTRACT_VALUE,0),''999G999G999G999G999G999G990'') return_val',
'from',
'   eba_cust_customers',
'where ',
'   id = :P50_ID and nvl(TOTAL_CONTRACT_VALUE,0) != 0',
'union all',
'select',
'  ''Annual Recurring Revenue (ARR)'' label,',
'  ''$'' || to_char(nvl(annual_recurring_revenue,0),''999G999G999G999G999G999G990'') return_val',
'from',
'   eba_cust_customers',
'where ',
'   id = :P50_ID and nvl(annual_recurring_revenue,0) != 0'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'RETURN_VAL'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1319835759905234251)
,p_plug_name=>'Customer Summary'
,p_region_css_classes=>'margin-md'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'for c1 in (',
'select',
'   summary',
'from',
'   eba_cust_customers',
'where',
'   id = :P50_ID',
') loop',
'',
'sys.htp.p(''<p>''||apex_escape.html(c1.summary)||''</p>'');',
'',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and summary is not null'))
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2313588022529589987)
,p_name=>'Issues'
,p_region_name=>'rptIssues'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    name,',
'    status_id,',
'    product_id,',
'    issue_type,',
'    created,',
'    created_by,',
'    updated,',
'    lower(updated_by) as updated_by',
'from',
'    eba_cust_issues',
'where',
'    customer_id = :P50_ID',
'order by updated'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_cust_issues',
'where',
'    customer_id = :P50_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_imp.id(2564694359236856813)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2313588139042589988)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #NAME#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2313588183616589989)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1858117696239384964)
,p_query_column_id=>3
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(2564940577973681376)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2564647857932468170)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(16929502933782355794)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2313588298652589990)
,p_query_column_id=>5
,p_column_alias=>'ISSUE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Issue Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(2564643175682426277)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2313588434909589991)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2564644978958468142)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2564645083256468143)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#UPDATED# &bull; #UPDATED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2564645250481468144)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14822613181232068012)
,p_plug_name=>'Tags'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    t.tag, ',
'    (select TAG_COUNT from eba_cust_tags_sum x where x.tag = t.tag) tag_count',
'from',
'    EBA_CUST_TAGS t,',
'    eba_cust_tags_type_sum s',
'where',
'    t.content_id = :P50_ID',
'and',
'    s.tag = t.tag',
'and',
'    s.content_type = ''CUSTOMER'''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No tags found.'
,p_attribute_01=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RIR:IRC_TAGS,P59_DISPLAY_AS:#TAG#,REPORT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14835329563969799729)
,p_plug_name=>'Page Actions'
,p_region_name=>'listPageActions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--stacked:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(14898192513203220532)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14857747128496769880)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14857947843970013419)
,p_plug_name=>'Region display selector'
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14873267991622431518)
,p_plug_name=>'Customer Added'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>170
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created, ''Customer Added'' lbl',
'from eba_cust_customers',
'where id = :P50_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'CREATED'
,p_attribute_02=>'LBL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14932016203503228222)
,p_plug_name=>'Usage Metrics - 90 days'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>160
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(*) c,',
'    ''Views'' l,',
'    1 disp',
'from',
'    eba_cust_clicks',
'where',
'    cust_id = :P50_ID ',
'and',
'    view_timestamp > sysdate - 90',
'UNION',
'select',
'    count(distinct app_username)  c,',
'    ''Users'' l,',
'    2 disp',
'from',
'    eba_cust_clicks',
'where',
'    cust_id = :P50_ID ',
'and',
'    view_timestamp > sysdate - 90',
'order by disp    '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'L'
,p_attribute_02=>'C'
,p_attribute_04=>'f?p=&APP_ID.:13:&APP_SESSION.:::13:P13_ID:&P50_ID.'
,p_attribute_05=>'2'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14932461581314757258)
,p_plug_name=>'Validations'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    verified_by,',
'    created',
'from',
'    eba_cust_verifications',
'where',
'    cust_id = :P50_ID',
'order by',
'    created desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.VALIDATOR'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_imp.id(14935275594444388023)
,p_attribute_01=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ID,LAST_VIEW:&P50_ID.,50'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14932462091488769684)
,p_name=>'Customer Validations'
,p_region_name=>'view_validations'
,p_template=>wwv_flow_imp.id(14857730634842769846)
,p_display_sequence=>180
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_04'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'	lower(verified_by) as validated_by,',
'        created last_validated,',
'	created validation_date,',
'	verification_comment',
'from',
'	eba_cust_verifications',
'where',
'	cust_id = :P50_ID',
'order by',
'	created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>4
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No validations have been recorded'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_imp.id(14932462389027769702)
,p_query_column_id=>1
,p_column_alias=>'VALIDATED_BY'
,p_column_display_sequence=>1
,p_column_heading=>'Validated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932522891366367275)
,p_query_column_id=>2
,p_column_alias=>'LAST_VALIDATED'
,p_column_display_sequence=>2
,p_column_heading=>'Last Validated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932462495264769706)
,p_query_column_id=>3
,p_column_alias=>'VALIDATION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Validation Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14932462594017769706)
,p_query_column_id=>4
,p_column_alias=>'VERIFICATION_COMMENT'
,p_column_display_sequence=>4
,p_column_heading=>'Comment'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14935193184797526578)
,p_plug_name=>'Content Completeness'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(14857735341511769856)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    metric,',
'    the_score,',
'    max_value ',
'from',
'    (',
'        select  ''Customer is publicly referenceable'' metric, ',
'                decode(referencable,null,0,10) the_score,',
'                10 max_value',
'        from eba_cust_customers where id = :P50_ID and APEX_UTIL.GET_BUILD_OPTION_STATUS(P_APPLICATION_ID => :APP_ID, P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE''',
'        union all',
'        select  ''Customer is marquee customer'' metric, ',
'                decode(nvl(marquee_customer_yn,''N''),''N'',0,20) the_score,',
'                20 max_value',
'        from eba_cust_customers where id = :P50_ID',
'        union all ',
'        select  ''Customer has summary longer then 200 characters'' metric, ',
'                decode(length(summary),0,0,20) the_score,',
'                20 max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        and nvl(length(summary),0) >= 200',
'        union all ',
'        select  ''Customer has tags'' metric, ',
'                decode(tags,null,0,10) the_score,',
'                10 max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all ',
'        select  ''Customer has description'' metric, ',
'                decode(length(summary),0,0,20) the_score,',
'                20 max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all',
'        select',
'            nvl(max(''Customer has links''),''Customer has links'') metric, ',
'            decode(count(*),0,0,10) the_score,',
'            nvl(max(10),10) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_links l',
'        where',
'            c.id = :P50_ID',
'        and',
'            l.customer_id = c.id',
'        union all',
'        select',
'            nvl(max(''Customer has updates''),''Customer has updates'') metric, ',
'            decode(count(*),0,0,10) the_score,',
'            nvl(max(10),10) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_notes n',
'        where',
'            c.id = :P50_ID',
'        and',
'            n.customer_id = c.id',
'        union all',
'        select',
'            nvl(max(''Customer has Customer updates in last week''),''Customer has Customer updates in last week'') metric, ',
'            decode(count(*),0,0,10) the_score,',
'            nvl(max(10),10) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_notes n',
'        where',
'            c.id = :P50_ID',
'        and',
'            n.customer_id = c.id',
'        and',
'            n.updated > (sysdate - 7)',
'        union all',
'        select',
'            nvl(max(''Customer has attachments''),''Customer has attachments'') metric, ',
'            decode(count(*),0,0,5) the_score,',
'            nvl(max(5),5) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_files f',
'        where',
'            c.id = :P50_ID',
'        and',
'            f.customer_id = c.id',
'        union all',
'        select  nvl(max(''Customer verifications exist''),''Customer verifications exist'') metric, ',
'                decode(max((select count(*) from eba_cust_verifications v',
'        where v.cust_id = :P50_ID )),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all',
'        select  nvl(max(''Customer verifications exist in last week''),''Customer verifications exist in last week'') metric, ',
'                decode(max((select count(*) from eba_cust_verifications v',
'        where v.cust_id = :P50_ID and v.created > (sysdate - 7))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all',
'        select  nvl(max(''Customer verifications exist in last week by Customer creator''),''Customer verifications exist in last week by Customer creator'') metric, ',
'                decode(max((select count(*) from eba_cust_verifications v',
'        where v.cust_id = :P50_ID and v.created > (sysdate - 7) and (',
'        upper(:app_user) = upper(created_by)',
'        ))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_cust_customers where id = :P50_ID',
'    ) x',
'order by',
'    1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.COMPLETENESS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_imp.id(14935275401130384906)
,p_attribute_01=>'66'
,p_attribute_02=>'Strong'
,p_attribute_03=>'33'
,p_attribute_04=>'Moderate'
,p_attribute_05=>'0'
,p_attribute_06=>'Weak'
,p_attribute_07=>'Very Weak'
,p_attribute_08=>'Completeness Score Details'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15647464481986739615)
,p_name=>'Partners'
,p_region_name=>'rptPartners'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    p.name partner_name,',
'    p.website,',
'    p.description,',
'    rf.created added,',
'    lower(rf.created_by) added_by',
'from eba_cust_cust_partner_ref rf,',
'     eba_cust_impl_partners p',
'where rf.customer_id = :P50_ID',
'  and p.id = rf.partner_id',
'order by p.name, rf.created desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No partners found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1338503066871774279)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15647465776076739628)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110:P110_CUSTOMER_ID:&P50_ID.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #PARTNER_NAME#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15647465907398739629)
,p_query_column_id=>2
,p_column_alias=>'PARTNER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Partner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15647465967070739630)
,p_query_column_id=>3
,p_column_alias=>'WEBSITE'
,p_column_display_sequence=>5
,p_column_heading=>'Website'
,p_use_as_row_header=>'N'
,p_column_link=>'#WEBSITE#'
,p_column_linktext=>'#WEBSITE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747206582694700181)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15647464907478739619)
,p_query_column_id=>5
,p_column_alias=>'ADDED'
,p_column_display_sequence=>7
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15647465006043739620)
,p_query_column_id=>6
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16421151182922818172)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14857721646117769833)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16421151993750818174)
,p_name=>'Updates'
,p_region_name=>'rptUpdates'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    '''' class, --use grayComment for gray look',
'    ''Note'' note_type,',
'    replace(apex_escape.html(dbms_lob.substr(n.note,2000,1)),chr(10),''<br />'') comment_text,',
'    decode(c.name,null,'''','' <strong>[''||c.name||'']</strong>'') attribute_1,',
'    '''' attribute_2,',
'    '''' attribute_3,',
'    '''' attribute_4,',
'    lower(n.created_by) user_name,',
'    substr(n.created_by,0,2) user_icon,',
'    ''u-color-''|| (ora_hash(n.created_by,44) + 1) icon_modifier,',
'    apex_util.get_since(NVL(n.note_date, nvl(n.updated, n.created))) ||'' - ''||to_char(NVL(n.note_date, nvl(n.updated, n.created)),''Day DD-MON-YYYY HH24:MI'') comment_date,',
'    ''Edit'' as link,',
'    ''Edit'' as actions,',
'    n.created,',
'    n.id note_id',
'from eba_cust_notes n,',
'    eba_cust_contacts c',
'where n.customer_id = :P50_ID ',
'    and n.contact_id = c.id (+)',
'order by 14 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857741621681769867)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No updates found'
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
 p_id=>wwv_flow_imp.id(16421153182674818175)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421152186377818174)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14835328908490799722)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421152401594818174)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421152475747818174)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421152591284818174)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421152707340818174)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14835329021253799723)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>11
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14835329050402799724)
,p_query_column_id=>9
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14835329201322799725)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>13
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14835329292344799726)
,p_query_column_id=>11
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16620052900113070096)
,p_query_column_id=>12
,p_column_alias=>'LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.:CUSTOMER:&DEBUG.:7:P7_ID:#NOTE_ID#'
,p_column_linktext=>'#LINK#'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>'''#NOTE_ID#'' is not null'
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_imp.id(15965151882280271883)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14835329349033799727)
,p_query_column_id=>13
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>15
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:P97_ID,P97_CUSTOMER_ID:#NOTE_ID#,&P50_ID.'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421153086625818175)
,p_query_column_id=>14
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16632602885328773808)
,p_query_column_id=>15
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16421153698901818175)
,p_name=>'Attachments'
,p_region_name=>'rptAttachments'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P64_FILE_BLOB'',id)||''">''||apex_escape.html(FILE_NAME)||''</a>'' FILE_NAME,',
'    FILE_MIMETYPE,',
'    FILE_CHARSET,',
'    apex_util.filesize_mask(dbms_lob.getlength(FILE_BLOB)) f_len,',
'    substr(FILE_COMMENTS,1,50)||decode(greatest(length(FILE_COMMENTS),50),50,'''',''...'') FILE_COMMENTS,',
'    case when instr(upper(FILE_NAME),''.PPT'') > 0or instr(upper(FILE_NAME),''.PPTX'') > 0 then',
'        ''uFileIcon powerpoint''',
'    when instr(upper(FILE_NAME),''.XLS'') > 0 or instr(upper(FILE_NAME),''.XLSX'') > 0 then',
'        ''uFileIcon excel''',
'    when instr(upper(FILE_NAME),''.DOC'') > 0 or instr(upper(FILE_NAME),''.DOCX'') > 0 then',
'        ''uFileIcon word''',
'    when instr(upper(FILE_NAME),''.PDF'') > 0 then',
'        ''uFileIcon pdf''',
'    when instr(upper(FILE_NAME),''.GIF'') > 0 or',
'         instr(upper(FILE_NAME),''.PNG'') > 0 or',
'         instr(upper(FILE_NAME),''.TIFF'') > 0 or',
'         instr(upper(FILE_NAME),''.JPG'') > 0 then',
'        ''uFileIcon image''',
'    else',
'        ''uFileIcon generic''',
'    end file_type,',
'    created,',
'    lower(created_by) created_by',
'from EBA_CUST_FILES f',
'where CUSTOMER_ID = :P50_ID ',
'order by created desc;'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
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
 p_id=>wwv_flow_imp.id(16421154402095818176)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64:P64_CUSTOMER_ID,P64_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421154679326818176)
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
 p_id=>wwv_flow_imp.id(16421154489338818176)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Mimetype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421154588101818176)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>9
,p_column_heading=>'Charset'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421153890113818175)
,p_query_column_id=>5
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>4
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421153977276818175)
,p_query_column_id=>6
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421154102343818175)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="#FILE_TYPE#" />'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>16
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421154190643818176)
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
 p_id=>wwv_flow_imp.id(16421154299729818176)
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
 p_id=>wwv_flow_imp.id(16421155182911818176)
,p_name=>'Links'
,p_region_name=>'rptLinks'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,decode(LINK_DESC,null, LINK, LINK_DESC) link_text, LINK link_target, lower(created_by) created_by, created, LINK_DESC ',
'from EBA_CUST_LINKS ',
'where CUSTOMER_ID = :P50_ID ',
'order by created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found'
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
 p_id=>wwv_flow_imp.id(13844121688461607693)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:P66_CUSTOMER_ID,P66_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421155403557818177)
,p_query_column_id=>2
,p_column_alias=>'LINK_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_link=>'#LINK_TARGET#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421155501862818177)
,p_query_column_id=>3
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421155603641818177)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421155706189818177)
,p_query_column_id=>5
,p_column_alias=>'CREATED'
,p_column_display_sequence=>5
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
 p_id=>wwv_flow_imp.id(16421696677248911867)
,p_query_column_id=>6
,p_column_alias=>'LINK_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16421156300955818178)
,p_name=>'Customer'
,p_region_name=>'CUSTOMERS'
,p_template=>wwv_flow_imp.id(14857721646117769833)
,p_display_sequence=>20
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-left-none'
,p_component_template_options=>'#DEFAULT#:t-AVPList--fixedLabelSmall:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   a.id,',
'   c.status,',
'   a.summary,',
'   apex_util.get_since(a.created) as created,',
'   lower(a.created_by) as created_by,',
'   apex_util.get_since(a.updated) as updated,',
'   lower(a.updated_by) as updated_by,',
'   row_key',
'from',
'   eba_cust_customers a , eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.id = :P50_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857743897467769875)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
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
 p_id=>wwv_flow_imp.id(13844121628423607692)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421156989957818178)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and status_id is not null'))
,p_derived_column=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16421207896011826186)
,p_query_column_id=>3
,p_column_alias=>'SUMMARY'
,p_column_display_sequence=>3
,p_column_heading=>'Summary'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and summary is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148060365246651272)
,p_query_column_id=>4
,p_column_alias=>'CREATED'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148060418811651273)
,p_query_column_id=>5
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148060547286651274)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1148060649317651275)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1096157750665229870)
,p_query_column_id=>8
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>8
,p_column_heading=>'Row Key'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(1161631675468892461)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16421161375067818182)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16592379079288123346)
,p_name=>'Products'
,p_region_name=>'rptProducts'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id, p.product_name, u.reference_status_id, p.id as product_id,',
'       (',
'            select listagg(rt.reference_type,'', '') within group (order by rt.reference_type)',
'              from eba_cust_reference_types rt',
'             where '':''||u.reference_type_ids||'':'' like ''%:''||rt.id||'':%''',
'       ) as reference_types,',
'       decode( u.customer_contact_id, null, null, (select decode(email, null, name, ''<a href="mailto:''',
'                                                                 || apex_escape.html(email) || ''">''',
'                                                                 || apex_escape.html(name)',
'                                                                 || ''</a>'')',
'                                                   from EBA_CUST_CONTACTS where id = u.customer_contact_id) ) as customer_contact,',
'       case when instr(nvl(u.internal_contact,''xxx''), ''@'') = 0 then u.internal_contact',
'           else ''<a href="mailto:'' || apex_escape.html(u.internal_contact) || ''">'' || apex_escape.html(u.internal_contact)',
'               || ''</a>'' end as internal_contact,',
'       u.valid_from, u.valid_to,',
'       u.created added, lower(u.created_by) added_by,',
'       ( select name from eba_cust_product_families pf where pf.id = p.product_family_id ) product_family,',
'       u.COMMENTS ',
'from eba_cust_product_uses u,',
'     eba_cust_products p',
'where u.CUSTOMER_ID = :P50_ID',
'  and u.product_id = p.id',
'order by p.product_name, u.created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No products found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(14954665590037691528)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13844121856919607694)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_CUSTOMER_ID,P68_PRODUCT_ID,P68_ID:&P50_ID.,#PRODUCT_ID#,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592379398045123358)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276345795736669502)
,p_query_column_id=>3
,p_column_alias=>'REFERENCE_STATUS_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Reference Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(14279675779419505523)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276344524229669489)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276345902105669503)
,p_query_column_id=>5
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>6
,p_column_heading=>'Reference Assets'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276344393408669488)
,p_query_column_id=>6
,p_column_alias=>'CUSTOMER_CONTACT'
,p_column_display_sequence=>8
,p_column_heading=>'Customer Contact'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_product_uses',
' where customer_id = :P50_ID',
'   and customer_contact_id is not null',
'   and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276343997080669484)
,p_query_column_id=>7
,p_column_alias=>'INTERNAL_CONTACT'
,p_column_display_sequence=>7
,p_column_heading=>'Internal Contact'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_product_uses',
' where customer_id = :P50_ID',
'   and internal_contact is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276344233364669486)
,p_query_column_id=>8
,p_column_alias=>'VALID_FROM'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14276344346744669487)
,p_query_column_id=>9
,p_column_alias=>'VALID_TO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592379475105123360)
,p_query_column_id=>10
,p_column_alias=>'ADDED'
,p_column_display_sequence=>11
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592379606236123360)
,p_query_column_id=>11
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747209994339700215)
,p_query_column_id=>12
,p_column_alias=>'PRODUCT_FAMILY'
,p_column_display_sequence=>4
,p_column_heading=>'Product Family'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_families'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17978916690015672797)
,p_query_column_id=>13
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>13
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16592477390451208225)
,p_name=>'Contacts'
,p_region_name=>'rptContacts'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    "ID", ',
'    "NAME",',
'    "TITLE",',
'    "PHONE",',
'    "EMAIL",',
'    created date_added,',
'    lower(created_by) added_by',
'from EBA_CUST_CONTACTS',
'where customer_id = :P50_ID',
'order by name;'))
,p_required_role=>wwv_flow_imp.id(15965151882280271883)
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No contacts found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(14954672877910757979)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592477690960208232)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_CUSTOMER_ID,P37_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #NAME#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592477795539208233)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592477882017208233)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592477975111208233)
,p_query_column_id=>4
,p_column_alias=>'PHONE'
,p_column_display_sequence=>5
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592478079922208233)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592479200803258554)
,p_query_column_id=>6
,p_column_alias=>'DATE_ADDED'
,p_column_display_sequence=>7
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#DATE_ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16592479280787258555)
,p_query_column_id=>7
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16826015197112449996)
,p_name=>'Referenceability'
,p_region_name=>'referenceability'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   a.id,',
'   referencable,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) reference_types,',
'    a.reference_phase_id reference_phase,',
'    a.REF_RECRUITMENT_OWNER',
'from',
'   eba_cust_customers a , eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.id = :P50_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16826016486051450009)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:RP,96:P96_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16826016575519450010)
,p_query_column_id=>2
,p_column_alias=>'REFERENCABLE'
,p_column_display_sequence=>2
,p_column_heading=>'Referenceable'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16826016684231450011)
,p_query_column_id=>3
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>3
,p_column_heading=>'Reference Types'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16826016841480450012)
,p_query_column_id=>4
,p_column_alias=>'REFERENCE_PHASE'
,p_column_display_sequence=>4
,p_column_heading=>'Reference Phase'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(15842689991551232403)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16826016940539450013)
,p_query_column_id=>5
,p_column_alias=>'REF_RECRUITMENT_OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Recruitment Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17747207074449700186)
,p_name=>'Competitors'
,p_region_name=>'rptCompetitors'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    c.name competitor,',
'    c.website,',
'    c.description,',
'    rf.created added,',
'    lower(rf.created_by) added_by',
'from eba_cust_cust_competitor_ref rf,',
'     eba_cust_competitors c',
'where rf.customer_id = :P50_ID',
'  and c.id = rf.competitor_id',
'order by c.name, rf.created desc'))
,p_required_role=>wwv_flow_imp.id(1359020134342521718)
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No partners found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1335351478967749597)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747207529410700190)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111:P111_CUSTOMER_ID:&P50_ID.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #COMPETITOR#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747207939410700194)
,p_query_column_id=>2
,p_column_alias=>'COMPETITOR'
,p_column_display_sequence=>2
,p_column_heading=>'Competitor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747207712951700192)
,p_query_column_id=>3
,p_column_alias=>'WEBSITE'
,p_column_display_sequence=>3
,p_column_heading=>'Website'
,p_use_as_row_header=>'N'
,p_column_link=>'#WEBSITE#'
,p_column_linktext=>'#WEBSITE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747207799927700193)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747207304026700188)
,p_query_column_id=>5
,p_column_alias=>'ADDED'
,p_column_display_sequence=>5
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17747207406563700189)
,p_query_column_id=>6
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18167452702350751988)
,p_name=>'Activities'
,p_region_name=>'rptActivities'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    rf.activity_id,',
'    a.type_id,',
'    a.name activity,',
'    nvl(a.activity_date,rf.activity_date) activity_date,',
'    nvl(a.owner, rf.owner) owner,',
'    nvl(a.location, rf.location) location',
'from eba_cust_activities a,',
'    eba_cust_activity_ref rf',
'where rf.customer_id = :P50_ID',
'    and rf.activity_id = a.id',
'order by 3 desc, 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No contacts found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(18137428917441624781)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167453272331751994)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_CUSTOMER_ID,P150_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167456330248752024)
,p_query_column_id=>2
,p_column_alias=>'ACTIVITY_ID'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167456199049752023)
,p_query_column_id=>3
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(18144412855379977785)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167453759464751998)
,p_query_column_id=>4
,p_column_alias=>'ACTIVITY'
,p_column_display_sequence=>3
,p_column_heading=>'Activity'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:RP,145:P145_ID:#ACTIVITY_ID#'
,p_column_linktext=>'#ACTIVITY#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167453791739751999)
,p_query_column_id=>5
,p_column_alias=>'ACTIVITY_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Activity date'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167453941737752000)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18167454056357752001)
,p_query_column_id=>7
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>6
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18458898260692279625)
,p_name=>'Sub Customers'
,p_region_name=>'rptSubCustomers'
,p_template=>wwv_flow_imp.id(14857735341511769856)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'   a.customer_name,',
'   a.number_of_users,',
'   a.summary,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) reference_types,',
'    a.updated,',
'    lower(a.updated_by) updated_by',
'from eba_cust_customers a, eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.parent_customer_id = :P50_ID',
'order by lower(a.customer_name)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14857742002178769869)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18743809617014192612)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18458898742517279630)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18743807071230192587)
,p_query_column_id=>3
,p_column_alias=>'NUMBER_OF_USERS'
,p_column_display_sequence=>2
,p_column_heading=>'Users'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18743807253073192588)
,p_query_column_id=>4
,p_column_alias=>'SUMMARY'
,p_column_display_sequence=>3
,p_column_heading=>'Summary'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18743809225391192608)
,p_query_column_id=>5
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>4
,p_column_heading=>'Referencability'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_cust_customers',
'where referencable != ''No'' and referencable is not null and id = :P50_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18743810187137192618)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18743810275642192619)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421150783639818171)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(16421161375067818182)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14857753145098769902)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Customer'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID:&P50_ID.'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1148059989410651269)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146348822035819471)
,p_button_name=>'EDIT_CUSTOMER_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Edit Customer Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID:&P50_ID.'
,p_icon_css_classes=>'fa-pencil'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564645959507468151)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2313588022529589987)
,p_button_name=>'POP_ISSUE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Issue'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_button_comment=>'Fixed missing reference that prevented user from adding an issue using the + button in this report. - Carlos.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15647464596529739616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15647464481986739615)
,p_button_name=>'POP_PARTNERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Select Partners'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110,RIR:P110_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16592479888598273935)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16592477390451208225)
,p_button_name=>'POP_CONTACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Contact'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17747207253933700187)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17747207074449700186)
,p_button_name=>'POP_COMPETITORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Select Competitors'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111,RIR:P111_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18167452850374751989)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18167452702350751988)
,p_button_name=>'POP_ACTIVITY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Activity'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564646317796468155)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2313588022529589987)
,p_button_name=>'VIEW_ISSUES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Issues'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:RP:P131_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16592480098295276679)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(16592477390451208225)
,p_button_name=>'VIEW_CONTACTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Contacts'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18167452886763751990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18167452702350751988)
,p_button_name=>'VIEW_ACTIVITIES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Activities'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:RP,RIR,149:P149_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16592480901889287247)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(16592379079288123346)
,p_button_name=>'POP_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Product'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68,RIR:P68_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16592481076393289353)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(16592379079288123346)
,p_button_name=>'VIEW_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Products'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421153497461818175)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(16421151993750818174)
,p_button_name=>'POPNOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Update'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:P97_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421153282303818175)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(16421151993750818174)
,p_button_name=>'GONOTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Notes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421156104554818177)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(16421155182911818176)
,p_button_name=>'POP_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Link'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:P66_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421155880218818177)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(16421155182911818176)
,p_button_name=>'VIEW_LINKS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Links'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51:P51_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421154790277818176)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(16421153698901818175)
,p_button_name=>'POPATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64:P64_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15965151882280271883)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16421154982634818176)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(16421153698901818175)
,p_button_name=>'VIEW_ATTACHMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(14857752341936769899)
,p_button_image_alt=>'View Attachments'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52:P52_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(16421162790780818190)
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_ID:&P50_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 11-JAN-2012 16:02 by MIKE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14620351802004899253)
,p_name=>'P50_ROW_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16421151182922818172)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select row_key',
'from EBA_CUST_CUSTOMERS',
'where id = :P50_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16421151381393818173)
,p_name=>'P50_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16421151182922818172)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(14858177373532635087)
,p_computation_sequence=>10
,p_computation_item=>'CUSTOMER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select apex_escape.html(customer_name) from eba_cust_customers where id = :P50_ID'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16421161978418818188)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'50'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12732591399647097128)
,p_name=>'Handle Show / Hide Content Regions'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12732591498460097129)
,p_event_id=>wwv_flow_imp.id(12732591399647097128)
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
'  function initHideShowRegions() {',
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
'  $(window).on(''theme42ready'',initHideShowRegions);',
'}())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12732591588492097130)
,p_name=>'Refresh Contacts'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptContacts'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "37"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13844028161677614381)
,p_event_id=>wwv_flow_imp.id(12732591588492097130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16592477390451208225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13844028256372614382)
,p_name=>'Refresh Updates'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptUpdates'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "97"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13844028343764614383)
,p_event_id=>wwv_flow_imp.id(13844028256372614382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16421151993750818174)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13844028393287614384)
,p_name=>'Refresh Products'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptProducts'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "68"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13844028536079614385)
,p_event_id=>wwv_flow_imp.id(13844028393287614384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16592379079288123346)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17747206847232700183)
,p_name=>'Refresh Partners'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptPartners'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "110"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17747206922115700184)
,p_event_id=>wwv_flow_imp.id(17747206847232700183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15647464481986739615)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17747208010802700195)
,p_name=>'Refresh Competitors'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptCompetitors'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "111"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17747208164056700196)
,p_event_id=>wwv_flow_imp.id(17747208010802700195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17747207074449700186)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18167455931487752020)
,p_name=>'Refresh Activities'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptActivities'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "150"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18167456045183752021)
,p_event_id=>wwv_flow_imp.id(18167455931487752020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18167452702350751988)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13844028604869614386)
,p_name=>'Refresh Links'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptLinks'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "66"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13844028666917614387)
,p_event_id=>wwv_flow_imp.id(13844028604869614386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16421155182911818176)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13844028845315614388)
,p_name=>'Refresh Attachments'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptLinks'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "64"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13844028900761614389)
,p_event_id=>wwv_flow_imp.id(13844028845315614388)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16421153698901818175)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14276345583761669500)
,p_name=>'Refresh IRR after Edit'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16592379079288123346)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14276345693622669501)
,p_event_id=>wwv_flow_imp.id(14276345583761669500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16592379079288123346)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16826016976642450014)
,p_name=>'Refresh on dialog close after edit'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16826015197112449996)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017151489450015)
,p_event_id=>wwv_flow_imp.id(16826016976642450014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16826015197112449996)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16826017237801450016)
,p_name=>'Refresh Page Regions on dialog close'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14835329563969799729)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017307968450017)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16826015197112449996)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017402613450018)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16421153698901818175)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017492072450019)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16421155182911818176)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017638361450020)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16592477390451208225)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18167456165407752022)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18167452702350751988)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017734997450021)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16592379079288123346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826017798685450022)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16421151993750818174)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564645674519468149)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2313588022529589987)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564645772955468150)
,p_event_id=>wwv_flow_imp.id(16826017237801450016)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14857947843970013419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564645410754468146)
,p_name=>'Refresh Issues'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptIssues'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "129"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select null from eba_cust_issues where customer_id = :P50_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1858117847791384965)
,p_event_id=>wwv_flow_imp.id(2564645410754468146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2313588022529589987)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1858117956063384966)
,p_name=>'Reload Issues'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptIssues'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "129"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>'select null from eba_cust_issues where customer_id = :P50_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1858118058743384967)
,p_event_id=>wwv_flow_imp.id(1858117956063384966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'location.reload();',
'$(''li.apex-rds-item a'')[3].click();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564645987930468152)
,p_name=>'Refresh on Issue Pop Add'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2564645959507468151)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564646093565468153)
,p_event_id=>wwv_flow_imp.id(2564645987930468152)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2313588022529589987)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564647094609468163)
,p_name=>'Go to Issues'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'ISSUES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564647232309468164)
,p_event_id=>wwv_flow_imp.id(2564647094609468163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''li.apex-rds-item a'')[3].click();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14932015987919223725)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Count Clicks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_clicks (cust_id) values (:P50_ID);',
'delete from eba_cust_clicks where view_timestamp < (sysdate - 90);',
'commit;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
