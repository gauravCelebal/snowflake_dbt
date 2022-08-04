with ns_tb as (
    select * from
    {{ source('SRC', 'NS_TB') }}
)

select * from ns_tb

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where stg_load_dtm > (select max(stg_load_dtm) from {{ this }}) 
{% endif %}