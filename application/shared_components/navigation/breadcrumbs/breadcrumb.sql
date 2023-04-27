prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(17838614244403304417)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1358989418611241086)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'ACL Features'
,p_link=>'f?p=&APP_ID.:123:&SESSION.'
,p_page_id=>123
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2028305898122286405)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Application Timeline'
,p_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:::'
,p_page_id=>124
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2564670524217735083)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Issues'
,p_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_page_id=>131
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2564933644460628799)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Issue Statuses'
,p_link=>'f?p=&APP_ID.:132:&SESSION.'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2565087457930497947)
,p_short_name=>'Issues'
,p_link=>'f?p=&APP_ID.:134:&SESSION.'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13541309988714233437)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'All Customers'
,p_link=>'f?p=&APP_ID.:93:&SESSION.'
,p_page_id=>93
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14279129287086320856)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Reference Statuses'
,p_link=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.:::'
,p_page_id=>94
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14718656601148384287)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Page Privileges'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14735810403716843183)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Application Settings'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14813840484773713135)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Username Format'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14813850606689734909)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14813868679556773922)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14846403202768349542)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Industries'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14846403896969349549)
,p_parent_id=>wwv_flow_imp.id(14846403202768349542)
,p_short_name=>'Industry'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14863055679416863444)
,p_parent_id=>0
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_page_id=>59
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14872172515001562663)
,p_short_name=>'Preferences'
,p_link=>'f?p=&APP_ID.:65:&SESSION.'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14932467594806786871)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Validate Customer'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14935281779327410812)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Build Options'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14938150504066440957)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Usage Metrics'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14954633295706363268)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Application Activity by Page'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14964757898810172609)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Application Activity'
,p_link=>'f?p=&APP_ID.:46:&SESSION.'
,p_page_id=>46
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15066474103911997675)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Welcome Text'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15233721079860692158)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:70:&SESSION.'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15384411083039296347)
,p_parent_id=>0
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_page_id=>77
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15640295362421397027)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Reference Types'
,p_link=>'f?p=&APP_ID.:78:&SESSION.'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15640311474626460314)
,p_parent_id=>wwv_flow_imp.id(15640295362421397027)
,p_short_name=>'Reference Type Details'
,p_link=>'f?p=&APP_ID.:79:&SESSION.'
,p_page_id=>79
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15688829880691441227)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Access Control List'
,p_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15769483407204263818)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Customers by Category'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15769488786737313541)
,p_parent_id=>wwv_flow_imp.id(14863055679416863444)
,p_short_name=>'Geographies'
,p_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_page_id=>85
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15770404230121423815)
,p_parent_id=>wwv_flow_imp.id(14863055679416863444)
,p_short_name=>'Referenceability'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15817740458968058328)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Reference Phases'
,p_link=>'f?p=&APP_ID.:87:&SESSION.'
,p_page_id=>87
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15817741702923058330)
,p_parent_id=>wwv_flow_imp.id(15817740458968058328)
,p_short_name=>'Reference Phase'
,p_link=>'f?p=&APP_ID.:88:&SESSION.'
,p_page_id=>88
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15842635912772917414)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Sales Channels'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:::'
,p_page_id=>89
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15842637715264926252)
,p_short_name=>'Sales Channel'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15854973595048933213)
,p_parent_id=>wwv_flow_imp.id(15688829880691441227)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15867949494382960943)
,p_parent_id=>wwv_flow_imp.id(15770404230121423815)
,p_short_name=>'Referenceability Report'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15868578458982783134)
,p_short_name=>'Products'
,p_link=>'f?p=&FLOW_ID.:92:&SESSION.'
,p_page_id=>92
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15886225276504010164)
,p_parent_id=>wwv_flow_imp.id(17838751067258011107)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15886233000788010187)
,p_parent_id=>wwv_flow_imp.id(17838751067258011107)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:61:&SESSION.'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15886235199778010190)
,p_parent_id=>wwv_flow_imp.id(17838751067258011107)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15886242107398010199)
,p_parent_id=>wwv_flow_imp.id(17838751067258011107)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:63:&SESSION.'
,p_page_id=>63
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15964413000413122367)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Access Control Configuration'
,p_link=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16307719689273137056)
,p_short_name=>'Search Results'
,p_link=>'f?p=&FLOW_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16345100576125862561)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Notifications'
,p_link=>'f?p=&FLOW_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16345578597262943023)
,p_parent_id=>wwv_flow_imp.id(16345100576125862561)
,p_short_name=>'Notification'
,p_link=>'f?p=&FLOW_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16421161788842818188)
,p_parent_id=>wwv_flow_imp.id(14863055679416863444)
,p_short_name=>'&CUSTOMER.'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16422222203142021414)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Updates'
,p_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16422364799229042564)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Links'
,p_link=>'f?p=&FLOW_ID.:51:&SESSION.'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16422401085888045610)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Attachments'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16588587606139303107)
,p_parent_id=>wwv_flow_imp.id(16422401085888045610)
,p_short_name=>'Customer Attachment'
,p_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:::'
,p_page_id=>64
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16589868578982378432)
,p_parent_id=>wwv_flow_imp.id(16422364799229042564)
,p_short_name=>'Link'
,p_link=>'f?p=&FLOW_ID.:66:&SESSION.'
,p_page_id=>66
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16592489077396535351)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Products'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16592489397744535353)
,p_parent_id=>wwv_flow_imp.id(16592489077396535351)
,p_short_name=>'Product'
,p_link=>'f?p=&FLOW_ID.:68:&SESSION.'
,p_page_id=>68
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16592627892209512300)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Contacts'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16592628200813512301)
,p_parent_id=>wwv_flow_imp.id(16592627892209512300)
,p_short_name=>'Customer Contact'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16609878805868275302)
,p_parent_id=>wwv_flow_imp.id(14872172515001562663)
,p_short_name=>'Time Zone'
,p_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16632598377986603661)
,p_parent_id=>wwv_flow_imp.id(16422222203142021414)
,p_short_name=>'Maintain Update'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16708133203552282871)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Application Error Log'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16736101677574614972)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&FLOW_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16926217881878928467)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Countries'
,p_link=>'f?p=&APP_ID.:98:&SESSION.'
,p_page_id=>98
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17000123779101232486)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Customer Statuses'
,p_link=>'f?p=&APP_ID.:102:&SESSION.'
,p_page_id=>102
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17000163054610197603)
,p_parent_id=>wwv_flow_imp.id(17000123779101232486)
,p_short_name=>'Status Details'
,p_link=>'f?p=&APP_ID.:103:&SESSION.'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17124940129794770497)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Customer Use Cases'
,p_link=>'f?p=&APP_ID.:104:&SESSION.'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17125327986444825069)
,p_parent_id=>wwv_flow_imp.id(17124940129794770497)
,p_short_name=>'Use Case Details'
,p_link=>'f?p=&APP_ID.:105:&SESSION.'
,p_page_id=>105
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17714132127440925439)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Implementation Partners'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17714134179947925451)
,p_parent_id=>wwv_flow_imp.id(17714132127440925439)
,p_short_name=>'Implementation Partner Details'
,p_link=>'f?p=&APP_ID.:107:&SESSION.'
,p_page_id=>107
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17714572386179094228)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Competitors'
,p_link=>'f?p=&APP_ID.:108:&SESSION.'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17714573734107094244)
,p_parent_id=>wwv_flow_imp.id(17714572386179094228)
,p_short_name=>'Competitor Details'
,p_link=>'f?p=&APP_ID.:109:&SESSION.'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17761001937181986832)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Product Families'
,p_link=>'f?p=&APP_ID.:112:&SESSION.'
,p_page_id=>112
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17761003112507986844)
,p_parent_id=>wwv_flow_imp.id(17761001937181986832)
,p_short_name=>'Product Family Details'
,p_link=>'f?p=&APP_ID.:113:&SESSION.'
,p_page_id=>113
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17776551540916127501)
,p_short_name=>'Partners'
,p_link=>'f?p=&FLOW_ID.:115:&SESSION.'
,p_page_id=>115
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17776618433000147680)
,p_short_name=>'Competitors'
,p_link=>'f?p=&APP_ID.:116:&SESSION.'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17791337599448080391)
,p_short_name=>'Search Results'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17793456621592449038)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Updates'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17794754614213323783)
,p_parent_id=>0
,p_short_name=>'Help'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17803087103393302529)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Products'
,p_link=>'f?p=&FLOW_ID.:42:&SESSION.'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17803087306648302530)
,p_parent_id=>wwv_flow_imp.id(17803087103393302529)
,p_short_name=>'Product'
,p_link=>'f?p=&FLOW_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17803500215693450621)
,p_parent_id=>0
,p_short_name=>'Products and Services'
,p_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17803526800840036422)
,p_parent_id=>wwv_flow_imp.id(17803500215693450621)
,p_short_name=>'Customer Product Use'
,p_link=>'f?p=&FLOW_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17803930512397391359)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Activity'
,p_link=>'f?p=&FLOW_ID.:45:&SESSION.'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17804115506785660531)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Geographies'
,p_link=>'f?p=&FLOW_ID.:48:&SESSION.'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17805422722671942079)
,p_parent_id=>wwv_flow_imp.id(17804115506785660531)
,p_short_name=>'Geography'
,p_link=>'f?p=&FLOW_ID.:49:&SESSION.'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17810896901992595994)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Tags'
,p_link=>'f?p=&FLOW_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838617357478327115)
,p_parent_id=>0
,p_short_name=>' Administration'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838631065151783396)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Categories'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838631551776788986)
,p_parent_id=>wwv_flow_imp.id(17838631065151783396)
,p_short_name=>'Category Details'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838741259882876531)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Contact Types'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838741639581880118)
,p_parent_id=>wwv_flow_imp.id(17838741259882876531)
,p_short_name=>' Contact Type Details'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838742052048883690)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Customer Types'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838742464646896810)
,p_parent_id=>wwv_flow_imp.id(17838742052048883690)
,p_short_name=>'Customer Type Code'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838751067258011107)
,p_parent_id=>0
,p_short_name=>' Contacts'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838751446610014600)
,p_parent_id=>wwv_flow_imp.id(17838751067258011107)
,p_short_name=>' Contact Details'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838752661979028520)
,p_parent_id=>0
,p_short_name=>' Dashboard'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838753045834033319)
,p_parent_id=>0
,p_short_name=>'Customer'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838759355408102288)
,p_parent_id=>0
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838763839525126033)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Recent Updates'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17838764857187131147)
,p_parent_id=>wwv_flow_imp.id(17838759355408102288)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18133504219684778355)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18133520505418778389)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:126:&SESSION.'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18133524797252778393)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:127:&SESSION.'
,p_page_id=>127
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18133547455594778432)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:128:&SESSION.'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18137343372819594935)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Activity Types'
,p_link=>'f?p=&APP_ID.:53:&SESSION.'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18137344641901594940)
,p_parent_id=>wwv_flow_imp.id(18137343372819594935)
,p_short_name=>'Activity Type'
,p_link=>'f?p=&APP_ID.:54:&SESSION.'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18144239459798877089)
,p_short_name=>'Activities'
,p_link=>'f?p=&APP_ID.:55:&SESSION.'
,p_page_id=>55
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18144240604735877102)
,p_parent_id=>wwv_flow_imp.id(18144239459798877089)
,p_short_name=>'Activity Details'
,p_link=>'f?p=&APP_ID.:56:&SESSION.'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18166681970603540205)
,p_parent_id=>wwv_flow_imp.id(18144239459798877089)
,p_short_name=>'&P145_ACTIVITY.'
,p_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:::'
,p_page_id=>145
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18179606292833975574)
,p_parent_id=>wwv_flow_imp.id(16421161788842818188)
,p_short_name=>'Customer Activities'
,p_link=>'f?p=&APP_ID.:149:&SESSION.'
,p_page_id=>149
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18179607472339975586)
,p_parent_id=>wwv_flow_imp.id(18179606292833975574)
,p_short_name=>'Customer Activity'
,p_link=>'f?p=&APP_ID.:150:&SESSION.'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18730201641674652158)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Review Feedback'
,p_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:::'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18733863019643515474)
,p_parent_id=>wwv_flow_imp.id(17838617357478327115)
,p_short_name=>'Email Log'
,p_link=>'f?p=&APP_ID.:121:&SESSION.'
,p_page_id=>121
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20245439865334758558)
,p_parent_id=>wwv_flow_imp.id(15868578458982783134)
,p_short_name=>'Referenceability'
,p_link=>'f?p=&APP_ID.:100:&SESSION.'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20308017780525095676)
,p_parent_id=>wwv_flow_imp.id(20245439865334758558)
,p_short_name=>'Referenceability Report'
,p_link=>'f?p=&APP_ID.:122:&SESSION.'
,p_page_id=>122
);
wwv_flow_imp.component_end;
end;
/
