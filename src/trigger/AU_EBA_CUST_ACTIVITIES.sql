--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_ACTIVITIES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_ACTIVITIES" 
    after update on eba_cust_activities
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- TYPE_ID (foreign key)
    if nvl(:old.type_id,-999) != nvl(:new.type_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_activity_types t where t.id = :old.type_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_activity_types t where t.id = :new.type_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITIES', null, :new.id, 'TYPE_ID', ov, nv);
    end if;
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- DESCRIPTION (default)
    if nvl(:old.description, '0') != nvl(:new.description,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'DESCRIPTION', substr(:old.description,0,4000), substr(:new.description,0,4000) ); 
    end if;
    -- ACTIVITY_DATE (date/timestamp)
    if (:old.activity_date is null and :new.activity_date is not null) or 
        (:old.activity_date is not null and :new.activity_date is null) or 
        (:old.activity_date != :new.activity_date) then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'ACTIVITY_DATE', to_char(:old.activity_date, 'DD-MON-YYYY'), to_char(:new.activity_date, 'DD-MON-YYYY') );
    end if;
    -- OWNER (default)
    if nvl(:old.owner, '0') != nvl(:new.owner,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'OWNER', substr(:old.owner,0,4000), substr(:new.owner,0,4000) ); 
    end if;
    -- LOCATION (default)
    if nvl(:old.location, '0') != nvl(:new.location,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'LOCATION', substr(:old.location,0,4000), substr(:new.location,0,4000) ); 
    end if;
    commit;
end au_eba_cust_activities;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_ACTIVITIES" ENABLE;
