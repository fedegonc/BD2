/*31. Selecione os empregados (employees) cujo nome (first_name) contenha no início a combinação de
caracteres 'Crist' e cujo número (emp_no) seja maior que 485733.*/
select * from employees where first_name like 'Crist%' and emp_no > 485733;