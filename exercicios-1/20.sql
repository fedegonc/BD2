/*20. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
contenha no final os seguintes caracteres 'zette'.*/
select * from employees where first_name like '%zette';