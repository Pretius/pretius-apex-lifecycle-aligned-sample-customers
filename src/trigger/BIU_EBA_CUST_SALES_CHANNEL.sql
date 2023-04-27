--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_SALES_CHANNEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_SALES_CHANNEL" 
   before insert or update on eba_cust_sales_channel
   for each row
begin
   if inserting then
      if :NEW.ID is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      end if;
      :NEW.CREATED := current_timestamp;
      :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
   end if;
   :NEW.UPDATED := current_timestamp;
   :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_SALES_CHANNEL" ENABLE;
