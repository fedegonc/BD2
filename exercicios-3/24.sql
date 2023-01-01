/*24. Retorne do staff o id, nome, sobrenome além do total de cobranças (payment) feitas por cada
integrante. 
*/
SELECT
staff.staff_id,
staff.first_name,
staff.last_name,
payment.amount,
sum(payment.amount)

FROM staff

inner JOIN payment
ON staff.staff_id = payment.staff_id
group by staff.staff_id
;