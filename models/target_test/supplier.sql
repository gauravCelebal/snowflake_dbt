with supplier as(
    select * from
    {{ source('TARG', 'SUPPLIER') }}
)

select * from supplier