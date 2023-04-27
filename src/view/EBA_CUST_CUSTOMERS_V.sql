--------------------------------------------------------
--  DDL for View EBA_CUST_CUSTOMERS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SAMPLE_CUSTOMERS"."EBA_CUST_CUSTOMERS_V" ("ROW_KEY", "ID", "CUSTOMER_NAME", "STATUS", "STATUS_ID", "CATEGORY", "GEOGRAPHY_NAME", "REFERENCABLE", "NUMBER_OF_USERS", "SUMMARY", "WEB_SITE", "PRODUCT_USES", "INDUSTRY", "TAGS", "CREATED", "CREATED_BY", "UPDATED", "UPDATED_BY") AS 
  select 
   a.row_key, 
   a.id,
   customer_name,
   status,
   a.status_id,
   category,
   geography_name,
   referencable,
   number_of_users,
   summary,
   web_site,
   (select listagg(p.product_name, ', ') within group (order by p.product_name) product_uses
    from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p
    where c.id = u.customer_id
    and u.product_id = p.id
    and c.id = a.id
    group by c.customer_name
   ) product_uses,
   nvl((select industry_name from eba_cust_industries i where i.id = a.industry_id),'Not Defined') industry,
   tags,
   a.created,
   a.created_by,
   a.updated,
   a.updated_by
from   
   eba_cust_customers a, 
   eba_cust_categories b, 
   eba_cust_status c, 
   eba_cust_geographies d
where 
   a.category_id = b.id (+) and 
   a.status_id = c.id (+) and 
   a.geography_id = d.id (+)

;
