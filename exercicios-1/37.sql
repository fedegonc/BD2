/*37. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
494831 ou 479832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'. Coloque o apelido (ALIASES)
na tabela empregados (employees) de 'emp' e referencie este nome nos campos da clausula WHERE em
conjunto com o nome do campo para realizar o filtro (emp.emp_no).*/

select * from employees as emp where emp.emp_no in (494831,494832,599833,499832) and emp.gender in ('M','F') limit 0, 10;