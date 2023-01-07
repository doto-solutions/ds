{{ config(
    materialized="table"
) }}
-- {% set payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card'] %}
-- with source_data as (
--     select 1 as id
--     union all
--     select null as id
-- )

-- select * from source_data

-- where id is not null
-- select * from {{ source('lab_recipes', 'recipes') }}
select * from {{ ref('raw_recipes') }}

-- with recipes as (

--     -- select * from recipes.recipes
--     select * from {{ source('lab_recipes', 'recipes') }}
--     -- select * from {{ source('recipes', 'recipes') }}
--     -- select * from {{ ref('lab_recipes') }}

-- ),

-- final as (

--     select
--         orders.order_id,
--         orders.customer_id,
--         orders.order_date,
--         orders.status,

--         {% for payment_method in payment_methods -%}

--         order_payments.{{ payment_method }}_amount,

--         {% endfor -%}

--         order_payments.total_amount as amount

--     from orders


--     left join order_payments
--         on orders.order_id = order_payments.order_id

-- )

-- select * from recipes
