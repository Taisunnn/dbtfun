WITH 

source AS (
    SELECT * FROM {{ source('callcenter', 'CUSTOMER') }}
),

staging_customer AS (
    SELECT
        c_customer_sk AS customer_sk,
        c_customer_id AS customer_id,
        c_current_cdemo_sk,
        c_current_hdemo_sk,
        c_current_addr_sk AS customer_address,
        c_first_shipto_date_sk,
        c_first_sales_date_sk,
        c_salutation,
        c_first_name AS customer_firstname,
        c_last_name AS customer_lastname,
        c_preferred_cust_flag,
        c_birth_day AS customer_birthday,
        c_birth_month AS customer_birthmonth,
        c_birth_year AS customer_birthyear,
        c_birth_country AS customer_country,
        c_login AS customer_login,
        c_email_address AS customer_email,
        c_last_review_date
    FROM source
)

SELECT * FROM staging_customer
