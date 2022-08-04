with int_tb as(
    {{ dbt_utils.union_relations(
        relations=[ref('ax_tb'), ref('ns_tb')])}}
)

select * from int_tb