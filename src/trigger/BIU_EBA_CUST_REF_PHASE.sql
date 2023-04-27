--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_REF_PHASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_REF_PHASE" 
   before insert or update on eba_cust_ref_phase
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
   end if;
   if updating then
      :NEW.UPDATED := current_timestamp;
      :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
   end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_REF_PHASE" ENABLE;
