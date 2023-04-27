--------------------------------------------------------
--  DDL for Trigger EBA_CUST_PREFERENCES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_PREFERENCES_BIU" 
before insert or update on eba_cust_preferences
    for each row
begin
    if inserting and :new.id is null then
        :new.id := eba_cust.gen_id();
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created_on := current_timestamp;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated_on := current_timestamp;
    end if;
    :new.preference_name := upper(:new.preference_name);
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_PREFERENCES_BIU" ENABLE;
