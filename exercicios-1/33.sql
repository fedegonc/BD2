/*33. Selecione os empregados (employees) cujo nome (first_name) contenha a combinação de caracteres 'Crist'
e cujo número (emp_no) seja menor que 37126.*/
select * from employees where first_name like 'Crist' and emp_no < 37126;