--------------------------------------------------------
--  DDL for Trigger EBA_CUST_USERS_BD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_USERS_BD" 
    before delete on eba_cust_users
    for each row
begin
    -- Disallow deletes to a user's own record.
    if v('APP_USER') = upper(:old.username) then
        raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
    end if;    
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_USERS_BD" ENABLE;
