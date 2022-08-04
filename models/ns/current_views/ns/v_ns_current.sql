with v_ns_current as (
    select *
    from {{ ref('ns_tb') }}
)

select * from v_ns_current