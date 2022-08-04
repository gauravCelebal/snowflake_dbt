with ax_tb as (
    select * from
    {{ source('SRC', 'AX_TB') }}
)

select * from ax_tb

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where stg_load_dtm > (select max(stg_load_dtm) from {{ this }}) 
{% endif %}