/*38. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
494831 ou 479832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'. Coloque o apelido
(ALIASES) na tabela empregados (employees) de 'emp' e referencie este nome nos campos da clausula
WHERE em conjunto com o nome do campo para realizar o filtro (emp.emp_no). Exiba apenas os
campos número (emp_no) e nome (first_name), para estes de o apelido (ALIASES) de 'Numero' para o
campo emp_no e de 'Nome' para o campo firts_name.*/

select  emp.first_name as Nome, emp.emp_no as Numero from employees as emp where emp.emp_no in (494831,494832,599833,499832) and emp.gender in ('M','F') limit 0, 10;