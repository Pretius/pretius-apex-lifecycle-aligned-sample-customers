prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>10901989977582412
,p_default_application_id=>102
,p_default_id_offset=>10903513818591509
,p_default_owner=>'SAMPLE_CUSTOMERS'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16663074194989780101)
,p_name=>'ABOUT_THIS_APPLICATION'
,p_message_text=>'About this Application'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784718805584181101)
,p_name=>'ABOUT_TO_CREATE'
,p_message_text=>'Please confirm adding the following %0 <strong>%1</strong> user(s) to your access control list.'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14829294685838338708)
,p_name=>'ABOUT_TO_CREATE_WITH_INVALIDS'
,p_message_text=>'Please confirm adding the following %0 <strong>%1</strong> user(s) to your access control list. Note that %2 string(s) were invalid usernames.'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16002229005688124521)
,p_name=>'ACCESS_CONTROL_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features, for authenticated users. Customers supports the following 3 access levels; Reader, Contributor and Administrator.',
'  <b>Reader''s</b> have read-only access and can also view reports.',
'  <b>Contributor''s</b> can create, edit, delete and view reports.',
'  <b>Administrator''s</b>, in addition to Contributor''s capability, can also perform Customers administration, including configuration of access control, managing application look-up data and installing or uninstalling sample data.</p> ',
''))
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14881376867556071370)
,p_name=>'ACCESS_CONTROL_IS_DISABLED'
,p_message_text=>'Access control for this application is currently disabled. All users are currently Administrators. Navigate to <a href="%0">application administration</a> to enable access control.'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15964775889627179381)
,p_name=>'ACL_CONFIGURATION_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Enabling Access Control</strong> allows the application and its features to be controlled by the <strong>Access Control List</strong>, as defined by the application administrator. This application has 3 access levels available that can be '
||'granted to a user; Administrator, Contributor and Reader. Please see the Manage Access Control List page for further details on what each level provides.</p>',
'',
'<p>In addition, if you want to make every authenticated user a ''Reader'' of your application, you can select Reader access for any authenticated user from the Access Control Scope configuration option. Similarly, selecting Contributor access for any a'
||'uthenticated user will provide contributor access to any user who can authenticate into your application.</p>',
'',
'<br>',
'<p><b>Disabling Access Control</b> means that access to the application and all of its features including Administration are open to any user who can authenticate to the application.</p>',
'<br>',
'<p>Note: Irrespective of whether Access Control is enabled or disabled, a user still has to authenticate successfully into the application.</p>'))
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929141775635725493)
,p_name=>'ACL_DISABLED'
,p_message_text=>'<p>All users are currently <strong>Administrators</strong>. Please enable Access Control to restrict user access to this application.</p>'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929141078870723981)
,p_name=>'ACL_ENABLED'
,p_message_text=>'<p>Only users defined in the Access Control List have access to this application.</p>'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929140881674722644)
,p_name=>'ACL_PUBLIC_CONTRIBUTE'
,p_message_text=>'<p>All authenticated users have <strong>Reader</strong> and <strong>Contributor</strong> access.</p><p>Administrators are restricted by the Access Control List.</p>'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929140684909721146)
,p_name=>'ACL_PUBLIC_READONLY'
,p_message_text=>'<p>All authenticated users have <strong>Reader</strong> access.</p><p>Contributors and Administrators are restricted by the Access Control List.</p>'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17834259864953235925)
,p_name=>'ACTIVE'
,p_message_language=>'en-us'
,p_message_text=>'Active'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16663073484946777243)
,p_name=>'ADDITIONAL_INFORMATION'
,p_message_text=>'Additional Information'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16368366894792968981)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784718277560178943)
,p_name=>'ALREADY_IN_ACL'
,p_message_text=>'User is already in Access Control List'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929140489438719024)
,p_name=>'ANY_AUTHENTICATED_USER'
,p_message_text=>'Any Authenticated User'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929591896049948520)
,p_name=>'AUTHENTICATION_REQUIRED_PAGES'
,p_message_text=>'Login Required Pages'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784716491363172503)
,p_name=>'BAU_EMAIL_INSTRUCTIONS'
,p_message_text=>'Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Note that if you copy and paste email addresses from email messages, extraneous text will be filtered out. All email users provided will be added as the selected r'
||'ole. Existing or duplicate email addresses will be ignored.'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784716094382171148)
,p_name=>'BAU_STRING_INSTRUCTIONS'
,p_message_text=>'Enter or copy and paste usernames separated by commas, semicolons, or whitespace. All usernames provided will be added as the selected role. Existing or duplicate usernames will be ignored.'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17834282648826392097)
,p_name=>'CATEGORY_HELP'
,p_message_language=>'en-us'
,p_message_text=>'Categories are used for grouping Customers. The Category will be available when you Add, Modify or Search for a Customer. Category can be made Active or Inactive but only active Categories will be shown when adding or modifying a Customer.'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17834283437313407694)
,p_name=>'CONTACT_TYPES_HELP'
,p_message_language=>'en-us'
,p_message_text=>'Contact Types are used for grouping Contacts. The Contact Type will be available when you Add, Modify or Search for a Contact. Contact Types can be made Active or Inactive but only active Contact Types will be shown when adding or modifying a Contact'
||'.'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17831398350813364053)
,p_name=>'CREATE'
,p_message_language=>'en-us'
,p_message_text=>'Create'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17834283045147400454)
,p_name=>'CUSTOMER_STATUS_HELP'
,p_message_language=>'en-us'
,p_message_text=>'Statuses are used for identifying the current Status of a Customer. The Status will be available when you Add, Modify or Search for a Customer.  Status can be made Active or Inactive but only active Statuses will be shown when adding or modifying a C'
||'ustomer.'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17000499444216357273)
,p_name=>'CUSTOMER_TYPE_HELP'
,p_message_text=>'Types are used for identifying the type of Customer. The Type will be available when you Add, Modify or Search for a Customer. Type can be made Active or Inactive but only active Types will be shown when adding or modifying a Customer.'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17125093092993780127)
,p_name=>'CUSTOMER_USE_CASE_HELP'
,p_message_text=>'Use Cases are used for identifying the type of Customer. The Use Case will be available when you Add, Modify or Search for a Customer. Use Case can be made Active or Inactive but only active Use Cases will be shown when adding or modifying a Customer'
||'.'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784717980148177724)
,p_name=>'DUPLICATE_USER'
,p_message_text=>'Duplicate user in list'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14909976378877302790)
,p_name=>'EMAIL_USERNAME_FORMAT_MSG'
,p_message_text=>'This application is currently using an <strong>email address</strong> username format (e.g. xyz@xyz.com). <a href="f?p=%0:%1:%2:">Change Username Format</a>'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16663073687717778004)
,p_name=>'FEATURES'
,p_message_text=>'Features'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16663073992219779361)
,p_name=>'GETTING_STARTED'
,p_message_text=>'Getting Started'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15883366586180978529)
,p_name=>'HELP'
,p_message_text=>'Help'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14852941396953339675)
,p_name=>'HELP_ABOUT'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aboutApp">',
'<h2>About this Application</h2>',
'<p>Customers helps you improve your customer interactions by offering a centralized repository of information.</p>',
'<p>Each customer can have multiple contacts and be associated with multiple products.  Each contact has a variety of standard attributes, such as category, geography, industry and status, as well as the ability to add tags to a customer for further a'
||'d hoc classification.  You can indicate the reference status for a customer and enter free form text as a customer profile.</p>',
'<p>You can create activity records to log interactions with each customer.  Customers includes a variety of reports which let you view recent activities, status changes and tags.  You can also use interactive reports to give your users the ability to'
||' filter and shape customer, contact, activity and interaction data.</p>',
'<p>Customers gives you the ability to define your own standards for attributes such as categories, statuses, customer and activity types, and products, allowing you to create a customized version of Customers to meet your own needs.</p>',
'</div>'))
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14852942077328348785)
,p_name=>'HELP_FEATURES'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<h2>Features</h2>',
'<ul>',
'<li>Track and Manage Customers</li>',
'<li>Flexible and updateable customer contacts</li>',
'<li>Flexible and updateable procucts</li>',
'<li>Robust Reporting</li>',
'<li>Link, Note, and File Attachments</li>',
'<li>Mobile Interface</li>',
'<li>Flexible Access Control (reader, contributor, administrator model)</li>',
'</ul>',
'</div>'))
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14852941885954344764)
,p_name=>'HELP_GETTING_STARTED'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<h2>Getting Started</h2>',
'   <p>1. Create Customer</p>',
'   <ul>',
'   <li>Click the Customers tab</li>',
'   <li>Click the Add Customer button</li>',
'   <li>Add your customer details</li>',
'   </ul>',
'   <p>2. Define your Contacts:</p>',
'   <ul>',
'   <li>Click the Contacts tab</li>',
'   <li>Click the Create Contact button</li>',
'   <li>Select the customer the contact is associated with</li>',
'   <li>Add your contact details</li>',
'   </ul>',
'   <p>3. Define your Products:</p>',
'   <ul>',
'   <li>Click the Administration link</li>',
'   <li>Click the Manage Products list entry</li>',
'   <li>Click the Create Product button</li>',
'   <li>Add your product details</li>',
'   </ul>',
'   <p>4. Associate Products to Customers:</p>',
'   <ul>',
'   <li>Click the Customers tab</li>',
'   <li>Select the Customer you wish to add products for</li>',
'   <li>Click the ''''+'''' button on the Products region</li>',
'   <li>Select your product</li>',
'   </ul>',
'</div>'))
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14852940978634332995)
,p_name=>'HELP_SIDEBAR'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1 class="appNameHeader">',
'    <img src="%0f_spacer.gif" class="appIcon %1" alt="" />',
'    %2',
'</h1>',
'<ul class="vapList">',
'    <li>',
'        <span class="vLabel">App Version</span>',
'        <span class="vValue">%3</span>',
'    </li>',
'    <li>',
'        <span class="vLabel">Pages</span>',
'        <span class="vValue">%4</span>',
'    </li>',
'    <li>',
'        <span class="vLabel">Vendor</span>',
'        <span class="vValue">%5 </span>',
'    </li>',
'</ul>'))
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14852941174968334739)
,p_name=>'HELP_SUPPORT'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<h2>Additional Information</h2>',
'<p>If you have questions, ask them on the <a href="%0" target="_blank">%1</a>.',
'</p>',
'</div>'))
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17834260347076240156)
,p_name=>'INACTIVE'
,p_message_language=>'en-us'
,p_message_text=>'Inactive'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784718475188179997)
,p_name=>'INVALID_USERS_NOT_CREATED'
,p_message_text=>'Note that %0 string(s) were invalid usernames.'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784717585324175365)
,p_name=>'MISSING_AT_SIGN'
,p_message_text=>'Missing @ sign'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784716688559173814)
,p_name=>'MISSING_DOT'
,p_message_text=>'Missing dot'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16368393803450971532)
,p_name=>'MOBILE'
,p_message_text=>'Mobile'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978415275002398883)
,p_name=>'N_DAY'
,p_message_text=>'%0 day'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978415505614399933)
,p_name=>'N_DAYS'
,p_message_text=>'%0 days'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978415703457400873)
,p_name=>'N_HOUR'
,p_message_text=>'%0 hour'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978415901732401683)
,p_name=>'N_HOURS'
,p_message_text=>'%0 hours'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978416098497403216)
,p_name=>'N_MINUTES'
,p_message_text=>'%0 minutes'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978416296125404327)
,p_name=>'N_WEEK'
,p_message_text=>'%0 week'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14978416494400405097)
,p_name=>'N_WEEKS'
,p_message_text=>'%0 weeks'
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929591502088945681)
,p_name=>'PAGES_WITH_CUSTOM_AUTH'
,p_message_text=>'Authorization Protected'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14929591699284946937)
,p_name=>'PUBLIC_PAGES'
,p_message_text=>'Public Pages'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(15640301971131444729)
,p_name=>'REFERENCE_TYPES_HELP'
,p_message_text=>'Reference Types are used for indicating how references are willing to be used. The Reference Type will be available when you Add, Modify or Search for a Contact. Reference Types can be made Active or Inactive but only active Reference Types will be s'
||'hown when adding or modifying a Contact.'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14909977007548304655)
,p_name=>'STRING_USERNAME_FORMAT_MSG'
,p_message_text=>'This application is currently using a <strong>non-email address</strong> username format (e.g. JOHNDOE). <a href="f?p=%0:%1:%2:">Change Username Format</a>'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(17833524155402410542)
,p_name=>'UNLINK_CONFIRMATION'
,p_message_language=>'en-us'
,p_message_text=>'This will remove the Contact from the Customer''s Contact list but will not delete the Contact.'
);
null;
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
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(16368397907259972636)
,p_name=>'USER'
,p_message_text=>'User'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(14784717782305176713)
,p_name=>'USERNAME_TOO_LONG'
,p_message_text=>'Username too long'
);
wwv_flow_imp.component_end;
end;
/
