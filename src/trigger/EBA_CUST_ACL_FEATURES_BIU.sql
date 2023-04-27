--------------------------------------------------------
--  DDL for Trigger EBA_CUST_ACL_FEATURES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_ACL_FEATURES_BIU" 
    before insert or update on eba_cust_acl_features
    for each row
begin
  -- Always store authorization_name as upper case
  :new.authorization_name := upper(:new.authorization_name);
  if inserting then
    if :new.id is null then
      :new.id := eba_cust.gen_id();
    end if;
    :new.created_by         := nvl(v('APP_USER'), USER);
    :new.created            := current_timestamp;
    :new.row_version        := 1;
  elsif updating then
    :new.row_version        := nvl(:old.row_version,1) + 1;                                
  end if;
  :new.updated_by         := nvl(v('APP_USER'), USER);
  :new.updated            := current_timestamp;
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."EBA_CUST_ACL_FEATURES_BIU" ENABLE;
