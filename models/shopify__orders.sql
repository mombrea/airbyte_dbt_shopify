with orders as (
    select
        id as order_id,
        email,
        created_at as created_timestamp,
   {{ fivetran_utils.json_parse(string="customer", string_path=["id"]) }} as customer_id


from {{ var('orders') }}
)

select * from orders
