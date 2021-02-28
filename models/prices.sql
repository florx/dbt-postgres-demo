with source as (
    
    select * from {{ source('house_price_data', 'prices') }}
    
),
seed_property_type as (
    select * from {{ ref('property_type') }}
),
seed_ppd_category_type as (
    select * from {{ ref('ppd_category_type') }}
),
seed_old_new_type as (
    select * from {{ ref('old_new_type') }}
),
seed_duration_type as (
    select * from {{ ref('duration_type') }}
),
seed_record_status_type as (
    select * from {{ ref('record_status_type') }}
),

renamed as (
    
    select
        transaction_id,
        cast(price as integer),
        postcode,
        date_of_transfer,
        seed_property_type.value as property_type,
        seed_ppd_category_type.value as ppd_category, 
        seed_old_new_type.value as old_or_new, 
        seed_duration_type.value as duration, 
        seed_record_status_type.value as record_status
    
    from source
    left join seed_property_type on source.property_type = seed_property_type.key
    left join seed_ppd_category_type on source.ppd_category_type = seed_ppd_category_type.key
    left join seed_old_new_type on source.old_or_new = seed_old_new_type.key
    left join seed_duration_type on source.duration = seed_duration_type.key
    left join seed_record_status_type on source.record_status = seed_record_status_type.key

)

select * from renamed