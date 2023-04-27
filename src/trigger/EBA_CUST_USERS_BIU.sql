--------------------------------------------------------
--  DDL for Trigger EBA_CUST_USERS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_USERS_BIU" 
    before insert or update on eba_cust_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_cust.gen_id();
        end if;
        :new.created_by         := nvl(v('APP_USER'), USER);
        :new.created            := current_timestamp;
        :new.row_version        := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';    
        end if;
    end if;
    if updating then
            :new.updated_by         := nvl(v('APP_USER'), USER);
            :new.updated            := current_timestamp;
            :new.row_version        := nvl(:old.row_version,1) + 1;                                
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_USERS_BIU" ENABLE;
