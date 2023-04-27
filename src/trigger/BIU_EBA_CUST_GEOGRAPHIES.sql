--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_GEOGRAPHIES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_GEOGRAPHIES" 
   before insert or update on eba_cust_geographies
   for each row
   begin
      if inserting then
         if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
         end if;
         :NEW.CREATED := current_timestamp;
         :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_GEOGRAPHIES" ENABLE;
