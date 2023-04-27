--------------------------------------------------------
--  DDL for Trigger AU_EBA_CUST_CUST_COMPETITOR_RE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CUST_COMPETITOR_RE" 
    after insert or update or delete on eba_cust_cust_competitor_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select name val from eba_cust_competitors t where t.id = :old.competitor_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select name val from eba_cust_competitors t where t.id = :new.competitor_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'COMPETITOR_ID', ov, nv);
    commit;
end au_eba_cust_cust_competitor_re;

/
ALTER TRIGGER "SAMPLE_CUSTOMERS"."AU_EBA_CUST_CUST_COMPETITOR_RE" ENABLE;
