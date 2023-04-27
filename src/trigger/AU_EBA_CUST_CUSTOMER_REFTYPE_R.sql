--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_CUSTOMER_REFTYPE_R
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CUSTOMER_REFTYPE_R" 
    after insert or update or delete on eba_cust_customer_reftype_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select reference_type val from eba_cust_reference_types t where t.id = :old.reference_type_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select reference_type val from eba_cust_reference_types t where t.id = :new.reference_type_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'REFERENCE_TYPE_ID', ov, nv);
    commit;
end au_eba_cust_customer_reftype_r;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CUSTOMER_REFTYPE_R" ENABLE;
