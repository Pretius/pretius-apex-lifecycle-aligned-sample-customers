declare
  l_application_id NUMBER DEFAULT 102;
begin
    -- Enable ACL
    eba_cust_fw.set_preference_value (
        p_preference_name  => 'ACCESS_CONTROL_ENABLED',
        p_preference_value => 'Y' );
    
    -- Set ACL Scope
    eba_cust_fw.set_preference_value (
        p_preference_name  => 'ACCESS_CONTROL_SCOPE',
        p_preference_value => 'PUBLIC_READONLY' ); -- :P1000_ACL_CONFIG

    -- Add Users
        insert into eba_cust_users
        (username, access_level_id, account_locked) VALUES
        ('admin', 3, 'N');

        insert into eba_cust_users
        (username, access_level_id, account_locked) VALUES
        ('test_user', 3, 'N');

    -- Load Sample Data
   eba_cust_sample_data.create_sample_data();

    -- Create Session
    apex_session.create_session (
    p_app_id   => l_application_id,
    p_page_id  => 1,
    p_username => 'JENKINS' );

    -- Set Build Options
        for c1 in ( select BUILD_OPTION_ID
                    from apex_application_build_options
                    where  application_id = l_application_id
                    AND build_option_name in ('Competitors', 'Contacts', 'Feedback', 'Geography', 'Partners') )
        loop
                apex_util.set_build_option_status(  p_application_id => l_application_id,
                                                    p_id => c1.BUILD_OPTION_ID,
                                                    p_build_status => 'INCLUDE' );
        end loop;

    -- Delete Session
    apex_session.delete_session;

    -- Set First Run to No
    eba_cust_fw.set_preference_value (
        p_preference_name  => 'FIRST_RUN',
        p_preference_value => 'NO' );

end;
/