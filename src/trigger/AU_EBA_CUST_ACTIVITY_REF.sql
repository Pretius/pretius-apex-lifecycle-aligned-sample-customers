--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_ACTIVITY_REF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_ACTIVITY_REF" 
    after update on eba_cust_activity_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- ACTIVITY_ID (foreign key)
    if nvl(:old.activity_id,-999) != nvl(:new.activity_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_activities t where t.id = :old.activity_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_activities t where t.id = :new.activity_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'ACTIVITY_ID', ov, nv);
    end if;
    -- CUSTOMER_ID (foreign key)
    if nvl(:old.customer_id,-999) != nvl(:new.customer_id,-999) then
        ov := null; nv := null;
        for c1 in (select row_key val from eba_cust_customers t where t.id = :old.customer_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select row_key val from eba_cust_customers t where t.id = :new.customer_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'CUSTOMER_ID', ov, nv);
    end if;
    -- CONTACT_ID (foreign key)
    if nvl(:old.contact_id,-999) != nvl(:new.contact_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_contacts t where t.id = :old.contact_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_contacts t where t.id = :new.contact_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'CONTACT_ID', ov, nv);
    end if;
    -- ACTIVITY_DATE (date/timestamp)
    if (:old.activity_date is null and :new.activity_date is not null) or 
        (:old.activity_date is not null and :new.activity_date is null) or 
        (:old.activity_date != :new.activity_date) then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'ACTIVITY_DATE', to_char(:old.activity_date, 'DD-MON-YYYY'), to_char(:new.activity_date, 'DD-MON-YYYY') );
    end if;
    -- OWNER (default)
    if nvl(:old.owner, '0') != nvl(:new.owner,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'OWNER', substr(:old.owner,0,4000), substr(:new.owner,0,4000) ); 
    end if;
    -- LOCATION (default)
    if nvl(:old.location, '0') != nvl(:new.location,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'LOCATION', substr(:old.location,0,4000), substr(:new.location,0,4000) ); 
    end if;
    -- NOTES (default)
    if nvl(:old.notes, '0') != nvl(:new.notes,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'NOTES', substr(:old.notes,0,4000), substr(:new.notes,0,4000) ); 
    end if;
    commit;
end au_eba_cust_activity_ref;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_ACTIVITY_REF" ENABLE;
