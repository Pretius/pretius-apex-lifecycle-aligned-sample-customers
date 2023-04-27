--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_COMPETITORS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_COMPETITORS" 
    after update on eba_cust_competitors
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('COMPETITORS', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- DESCRIPTION (default)
    if nvl(:old.description, '0') != nvl(:new.description,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('COMPETITORS', null, :new.id, 'DESCRIPTION', substr(:old.description,0,4000), substr(:new.description,0,4000) ); 
    end if;
    -- WEBSITE (default)
    if nvl(:old.website, '0') != nvl(:new.website,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('COMPETITORS', null, :new.id, 'WEBSITE', substr(:old.website,0,4000), substr(:new.website,0,4000) ); 
    end if;
    commit;
end au_eba_cust_competitors;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_COMPETITORS" ENABLE;
