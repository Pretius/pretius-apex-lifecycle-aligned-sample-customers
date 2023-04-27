--------------------------------------------------------
--  DDL for Trigger EBA_CUST_TAGS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_TAGS_BIU" 
   before insert or update on eba_cust_tags
   for each row
begin
    :new.tag := upper(:new.tag);
    if inserting then
       if :NEW.TAG_ID is null then
          select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.tag_id
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
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_TAGS_BIU" ENABLE;
