--------------------------------------------------------
--  DDL for Trigger EBA_CUST_NOTIF_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_NOTIF_BIU" 
before insert or update on eba_cust_notifications
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated    := current_timestamp;
    end if;
    if :new.notification_type is null then
       :new.notification_type := 'MANUAL';
    end if;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_NOTIF_BIU" ENABLE;
