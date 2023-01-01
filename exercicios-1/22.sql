/*23. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
contenha a combinação de caracteres 'arvi' e o sexo (gender) seja igual a 'M'.*/
select * from employees where first_name like '%arvi%' and gender = 'M';