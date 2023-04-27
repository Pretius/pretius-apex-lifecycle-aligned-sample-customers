--------------------------------------------------------
--  DDL for Trigger BI_EBA_CUST_ERRORS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BI_EBA_CUST_ERRORS" 
    before insert or update on eba_cust_errors
    for each row
begin
    if :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BI_EBA_CUST_ERRORS" ENABLE;
