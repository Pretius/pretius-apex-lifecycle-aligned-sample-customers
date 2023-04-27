--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_ISSUE_STATUSES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_ISSUE_STATUSES" 
    before insert or update 
    on eba_cust_issue_statuses
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
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_ISSUE_STATUSES" ENABLE;
