/* 1 - Crie um relatório que exiba o nome, sobrenome e o número do departamento, neste relatório o usuário pode
escolher o número do funcionário que ele vai pesquisar. */
SELECT e.first_name, e.last_name, e.job_id
  FROM employees e
 WHERE e.employee_id = :funcionario;

/* 2 - Crie um relatório que exiba o nome, ID do cargo e a data de admissão de todos os funcionários que recebam mais de 5 mil
e que sejam dos departamentos 60 e 90. */
SELECT e.first_name || ' ' || e.last_name "NOME",
       e.job_id "ID DO CARGO",
       e.hire_date "DATA DE ADMISSÃO"
  FROM employees e
 WHERE e.salary > 5000;

/* 3 - Crie uma query que retorne todos os funcionários que sejam do departamento 20 e 50 ou que ganhem menos de 3000 e todos eles
devem ter o JOB_ID que contenha AD. Ele deve ser ordenado pela data de adminssão. */
SELECT *
  FROM employees e
 WHERE (e.department_id IN (20, 50) OR e.salary < 3000)
   AND e.job_id LIKE 'AD%'
 ORDER BY e.hire_date;
