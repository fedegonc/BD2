/*25. Retorne do staff o id, nome e sobrenome além do total de cobranças (payment) feitas por cada
integrante. Limite a data (payment_date) dos pagamentos entre '2005-05-25' e '2005-08-23'.
*/

SELECT
staff.staff_id,
staff.first_name,
staff.last_name,
payment.amount,
payment.payment_date,
sum(payment.amount)

FROM staff

inner JOIN payment
ON staff.staff_id = payment.staff_id
where payment.payment_date >= '2005-05-25' and payment.payment_date <= '2005-08-23'
group by staff.staff_id
;