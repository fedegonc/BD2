/*8. Escreva uma consulta SQL que retorne distintas combinações de nomes (first_name) e sobrenomes
(last_name) da tabela empregados (employees). Ordene o resultado por first_name e last_name.*/
select distinct first_name, last_name from employees order by first_name, last_name;
