--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_ACTIVITY_TYPES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_ACTIVITY_TYPES" 
    before insert or update on eba_cust_activity_types
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_activity_types;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_ACTIVITY_TYPES" ENABLE;
