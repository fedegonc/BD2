/*36. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
494831 ou 479832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'. Limite o resultado em 10
registros.*/
select * from employees where emp_no in (494831,494832,599833,499832) and gender in ('M','F') limit 0, 10;