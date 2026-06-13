{{ config(materialized='table') }}

select
    sender_email,
    count(*) as message_count,
    min(message_ts) as first_message_ts,
    max(message_ts) as last_message_ts
from {{ ref('stg_gmail_messages') }}
where sender_email is not null
group by sender_email
