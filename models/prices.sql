with source as (
    
    select * from {{ source('house_price_data', 'prices') }}
    
),

renamed as (
    
    select
        transaction_id,
        cast(price as integer),
        postcode,
        date_of_transfer
    
    from source

)

select * from renamed