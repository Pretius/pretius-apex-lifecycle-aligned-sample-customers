--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_CONTACTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CONTACTS" 
    after update on eba_cust_contacts
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- CUSTOMER_ID (foreign key)
    if nvl(:old.customer_id,-999) != nvl(:new.customer_id,-999) then
        ov := null; nv := null;
        for c1 in (select customer_name val from eba_cust_customers t where t.id = :old.customer_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select customer_name val from eba_cust_customers t where t.id = :new.customer_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CONTACTS', null, :new.id, 'CUSTOMER_ID', ov, nv);
    end if;
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- TITLE (default)
    if nvl(:old.title, '0') != nvl(:new.title,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'TITLE', substr(:old.title,0,4000), substr(:new.title,0,4000) ); 
    end if;
    -- COMPANY (default)
    if nvl(:old.company, '0') != nvl(:new.company,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'COMPANY', substr(:old.company,0,4000), substr(:new.company,0,4000) ); 
    end if;
    -- ADDRESS_LINE1 (default)
    if nvl(:old.address_line1, '0') != nvl(:new.address_line1,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'ADDRESS_LINE1', substr(:old.address_line1,0,4000), substr(:new.address_line1,0,4000) ); 
    end if;
    -- ADDRESS_LINE2 (default)
    if nvl(:old.address_line2, '0') != nvl(:new.address_line2,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'ADDRESS_LINE2', substr(:old.address_line2,0,4000), substr(:new.address_line2,0,4000) ); 
    end if;
    -- CITY (default)
    if nvl(:old.city, '0') != nvl(:new.city,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'CITY', substr(:old.city,0,4000), substr(:new.city,0,4000) ); 
    end if;
    -- STATE (default)
    if nvl(:old.state, '0') != nvl(:new.state,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'STATE', substr(:old.state,0,4000), substr(:new.state,0,4000) ); 
    end if;
    -- COUNTRY (default)
    if nvl(:old.country, '0') != nvl(:new.country,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'COUNTRY', substr(:old.country,0,4000), substr(:new.country,0,4000) ); 
    end if;
    -- ZIP (default)
    if nvl(:old.zip, '0') != nvl(:new.zip,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'ZIP', substr(:old.zip,0,4000), substr(:new.zip,0,4000) ); 
    end if;
    -- EMAIL (default)
    if nvl(:old.email, '0') != nvl(:new.email,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'EMAIL', substr(:old.email,0,4000), substr(:new.email,0,4000) ); 
    end if;
    -- PHONE (default)
    if nvl(:old.phone, '0') != nvl(:new.phone,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'PHONE', substr(:old.phone,0,4000), substr(:new.phone,0,4000) ); 
    end if;
    -- CELL_PHONE (default)
    if nvl(:old.cell_phone, '0') != nvl(:new.cell_phone,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'CELL_PHONE', substr(:old.cell_phone,0,4000), substr(:new.cell_phone,0,4000) ); 
    end if;
    -- FAX (default)
    if nvl(:old.fax, '0') != nvl(:new.fax,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'FAX', substr(:old.fax,0,4000), substr(:new.fax,0,4000) ); 
    end if;
    -- CONTACT_TYPE_ID (foreign key)
    if nvl(:old.contact_type_id,-999) != nvl(:new.contact_type_id,-999) then
        ov := null; nv := null;
        for c1 in (select contact_type val from eba_cust_contact_types t where t.id = :old.contact_type_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select contact_type val from eba_cust_contact_types t where t.id = :new.contact_type_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CONTACTS', null, :new.id, 'CONTACT_TYPE_ID', ov, nv);
    end if;
    -- NOTES (default)
    if nvl(:old.notes, '0') != nvl(:new.notes,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'NOTES', substr(:old.notes,0,4000), substr(:new.notes,0,4000) ); 
    end if;
    -- TAGS (default)
    if nvl(:old.tags, '0') != nvl(:new.tags,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'TAGS', substr(:old.tags,0,4000), substr(:new.tags,0,4000) ); 
    end if;
end au_eba_cust_contacts;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CONTACTS" ENABLE;
