/* 1 - Crie uma consulta para exibir a data atual, que retorne o nome da coluna como "Data". */
  SELECT SYSDATE "DATA" FROM DUAL;

/* 2 - O departamento de recursos humanos precisa de um relatório para exibir o número do funcionário, o sobrenome, o salário
com 15,5% de aumemto(especificado como um número inteiro) de casa funcionário. Atribua o nome da coluna como novo salário.  */
SELECT e.employee_id, e.last_name, e.salary, e.salary + (e.salary * 0.155) "NOVO SALARIO"
  FROM employees e

/* 3 - Modifique a query acima e adicione uma nova coluna, que exibirá o nome Aumento, esta coluna será o valor do novo salário
menos o valor do salário antigo. */
SELECT employee_id,
       last_name,
       salary,
       "NOVO SALARIO",
       "NOVO SALARIO" - salary "AUMENTO"
  FROM (SELECT e.employee_id,
               e.last_name,
               e.salary,
               e.salary + (e.salary * 0.155) "NOVO SALARIO"
          FROM employees e)
