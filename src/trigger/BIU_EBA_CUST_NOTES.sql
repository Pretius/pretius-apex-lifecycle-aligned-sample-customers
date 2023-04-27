--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_NOTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_NOTES" 
   before insert or update on EBA_CUST_NOTES
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_NOTES" ENABLE;
