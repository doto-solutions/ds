with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select tags,
        description
 from {{ ref('raw_recipes') }}

),

renamed as (

    select
        id as customer_id,
        tags,
        description

    from source

)

select * from renamed
