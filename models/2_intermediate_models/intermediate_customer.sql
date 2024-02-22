-- write your intermediate sql query here. 
 
WITH intermediate_customer AS (

    SELECT customer_id, customer_firstname, customer_lastname, customer_email FROM {{ref ("staging_customer")}}
)

SELECT * FROM intermediate_customer