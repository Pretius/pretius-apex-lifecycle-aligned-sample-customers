--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_ISSUES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_ISSUES" 
    before insert or update 
    on eba_cust_issues
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),USER);
    end if;
    if inserting or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
    end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_ISSUES" ENABLE;
