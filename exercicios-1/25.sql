/*25. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
igual a 'Yinghua' ou igual a 'Elvis' e o sexo (gender) seja igual a 'M'.*/
select * from employees where (first_name = 'Yinghua' or first_name = 'Elvis') and gender = 'M';