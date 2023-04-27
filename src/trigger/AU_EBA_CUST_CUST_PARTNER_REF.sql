--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_CUST_PARTNER_REF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CUST_PARTNER_REF" 
    after insert or update or delete on eba_cust_cust_partner_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select name val from eba_cust_impl_partners t where t.id = :old.partner_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select name val from eba_cust_impl_partners t where t.id = :new.partner_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'PARTNER_ID', ov, nv);
    commit;
end au_eba_cust_cust_partner_ref;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CUST_PARTNER_REF" ENABLE;
