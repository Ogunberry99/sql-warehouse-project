SELECT *,
ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_data DESC) as row_num
FROM silver.crm_cust_info;

WITH duplicate_cte AS (
SELECT *,
ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_data DESC) as row_num
FROM silver.crm_cust_info
) DELETE FROM duplicate_cte 
WHERE row_num > 1;
