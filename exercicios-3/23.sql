/*23. Retorne o id, nome e sobrenome do cliente (customer), em conjunto com o total de
pagamentos realizados (payment.amout). Ordene o resultado pelo valor dos pagamentos.
Limite o resultado apenas aos clientes que tenham um montante maior que 100.
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
having sum(payment.amount) > 100
order by sum(payment.amount)
;