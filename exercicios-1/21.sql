/* 21. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
contenha no final a combinação de caracteres 'zette' e que o sexo (gender) seja igual a 'M'.*/
select * from employees where first_name like '%zette' and gender = 'M';