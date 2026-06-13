{{ config(materialized='view') }}

select
    id as message_id,
    thread_id,
    cast(date as timestamp) as message_ts,
    lower(trim(from_email)) as sender_email,
    subject,
    snippet,
    _fivetran_synced
from {{ source('gmail_raw', 'message') }}
where id is not null
