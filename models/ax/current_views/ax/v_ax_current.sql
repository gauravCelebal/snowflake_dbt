with v_ax_current as (
    select *
    from {{ ref('ax_tb') }}
)

select * from v_ax_current