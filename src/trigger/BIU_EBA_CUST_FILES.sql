--------------------------------------------------------
--  DDL for Trigger BIU_EBA_CUST_FILES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_FILES" 
  before insert or update on eba_cust_files
  for each row
begin
  if (inserting or updating) and nvl(dbms_lob.getlength(:new.file_blob),0) > 15728640 then
    raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller file.');
  end if;
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
  eba_cust_fw.tag_sync(
    p_new_tags      => :new.tags,
    p_old_tags      => :old.tags,
    p_content_type  => 'FILE',
    p_content_id    => :new.id );
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BIU_EBA_CUST_FILES" ENABLE;
