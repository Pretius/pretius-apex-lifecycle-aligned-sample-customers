--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_PRODUCT_USES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_PRODUCT_USES" 
    after update on eba_cust_product_uses
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- PRODUCT_ID (foreign key)
    if nvl(:old.product_id,-999) != nvl(:new.product_id,-999) then
        ov := null; nv := null;
        for c1 in (select product_name val from eba_cust_products t where t.id = :old.product_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select product_name val from eba_cust_products t where t.id = :new.product_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('PRODUCT_USES', null, :new.customer_id, 'PRODUCT_ID', ov, nv);
    end if;
end au_eba_cust_product_uses;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_PRODUCT_USES" ENABLE;
