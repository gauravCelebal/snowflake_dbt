with ax_tb2 as(
    select *
    from {{ ref('int_tb') }}
)

select * from ax_tb2

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where stg_load_dtm > (select max(stg_load_dtm) from {{ this }}) 
{% endif %}