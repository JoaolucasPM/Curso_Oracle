SELECT * FROM TALUNO

SELECT * FROM TCONTRATO;


--SELECT ERRADO, gerando plano cartesiano
--qual o erro? N�o existe o criterio de liga��o aqui
SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
FROM TALUNO, TCONTRATO;


--SELECT CORRETO (INNER JOIN)
-- Todos os alunos que tem contrato

SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
FROM TALUNO, TCONTRATO
WHERE TALUNO.COD_ALUNO = TCONTRATO.COD_ALUNO
GROUP BY  TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
ORDER BY TCONTRATO.TOTAL  DESC

---SEQ_ALUNO