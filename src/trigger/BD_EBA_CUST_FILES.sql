--------------------------------------------------------
--  DDL for Trigger BD_EBA_CUST_FILES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."BD_EBA_CUST_FILES" 
    before delete on eba_cust_files
    for each row
begin
    eba_cust_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'FILE',
        p_content_id    => :old.id );
end;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."BD_EBA_CUST_FILES" ENABLE;
