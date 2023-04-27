--------------------------------------------------------
--  DDL for Trigger EBA_CUST_PRODUCT_STATUSES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_PRODUCT_STATUSES_BIU" 
   before insert or update on eba_cust_product_statuses
   for each row
begin
    if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
    end if;
    if inserting then
       :NEW.CREATED := current_timestamp;
       :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
       :NEW.UPDATED := current_timestamp;
       :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    end if;
  
    if updating then
       :NEW.UPDATED := current_timestamp;
       :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_PRODUCT_STATUSES_BIU" ENABLE;
