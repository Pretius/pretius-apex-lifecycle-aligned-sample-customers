--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_HISTORY" 
   before insert or update on EBA_CUST_HISTORY
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.change_date := current_timestamp;
       :new.changed_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := :new.row_version_number + 1;
   end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_HISTORY" ENABLE;
