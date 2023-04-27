--------------------------------------------------------
--  DDL for Trigger EBA_CUST_FEEDBACK_TYPES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_FEEDBACK_TYPES_BIU" 
    before insert or update 
    on eba_cust_feedback_types
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := NVL(V('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := NVL(V('APP_USER'),user);
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_FEEDBACK_TYPES_BIU" ENABLE;
