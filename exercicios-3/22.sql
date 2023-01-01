/*22. Retorne o id, nome e sobrenome do cliente (customer), em conjunto com a soma do total de
pagamentos realizados (payment.amout). Ordene o resultado pelo nome e sobrenome.
*/

SELECT
customer.customer_id,
customer.first_name,
customer.last_name,
payment.amount,
sum(payment.amount)

FROM customer

inner JOIN payment
ON customer.customer_id = payment.customer_id
group by customer.customer_id

order by customer.first_name, customer.last_name
;