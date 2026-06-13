{{ config(
    materialized='incremental',
    unique_key='message_id',
    incremental_strategy='merge',
    on_schema_change='sync_all_columns'
) }}

select
    message_id,
    thread_id,
    message_ts,
    date(message_ts) as message_date,
    sender_email,
    subject,
    snippet,
    _fivetran_synced
from {{ ref('stg_gmail_messages') }}

{% if is_incremental() %}
where _fivetran_synced > (
    select coalesce(max(_fivetran_synced), timestamp('1900-01-01'))
    from {{ this }}
)
{% endif %}
