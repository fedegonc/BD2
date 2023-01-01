/*35. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
494831 ou 494832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'.*/
select * from employees where emp_no in (494831,494832,599833,499832) and gender in ('M','F');