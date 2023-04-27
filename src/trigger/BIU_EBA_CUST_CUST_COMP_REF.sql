--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_CUST_COMP_REF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_CUST_COMP_REF" 
    before insert or update on eba_cust_cust_competitor_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_cust_comp_ref;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_CUST_COMP_REF" ENABLE;
