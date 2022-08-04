with fnd_tb as(
    select * from
    {{ ref('int_tb') }}
)

select * from fnd_tb