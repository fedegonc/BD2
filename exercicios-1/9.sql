/*9. Escreva uma consulta SQL que retorne distintas combinações de nomes (first_name) e sobrenomes
(last_name) da tabela empregados (employees). Ordene o resultado por first_name e last_name de forma
descendente.*/
select distinct first_name, last_name from employees order by first_name, last_name desc;