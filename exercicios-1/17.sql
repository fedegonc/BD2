/* 17. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
igual a 'Basil' e o sexo (gender) seja diferente de 'M'. */
select * from employees where first_name = 'Basil' and not gender = 'M';