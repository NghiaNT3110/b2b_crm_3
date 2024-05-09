WITH sale AS (
SELECT sp.*,
p.series, p.sales_price,
t.string_field_1 AS sales_manager, t.string_field_2 AS regional_office
FROM totemic-vine-391706.maven_b2b_sale_case.sales_pipeline sp
LEFT JOIN totemic-vine-391706.maven_b2b_sale_case.products p ON p.product = sp.product
LEFT JOIN totemic-vine-391706.maven_b2b_sale_case.sales_teams t ON t.string_field_0 = sp.sales_agent
)
SELECT s.*, a.sector, a.revenue,
a.revenue / s.sales_price AS quantity,
a.office_location, a.year_established, 
a.employees AS company_size
FROM sale s
LEFT JOIN totemic-vine-391706.maven_b2b_sale_case.account a ON s.account = a.account 
