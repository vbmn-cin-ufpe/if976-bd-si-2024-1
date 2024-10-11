--1. Consulta com cláusulas WHERE e ORDER BY
SELECT Nome, Especie, DataNascimento, CodCliente
FROM Animal 
WHERE CodCliente in ('CLI001')
ORDER BY DataNascimento;

--2. Consulta com cláusulas COUNT/SUM e GROUP BY
SELECT CNPJ, COUNT(*) AS TotalAgendamentos, SUM(QtdProdutoUtilizado) AS TotalProdutos
FROM AgendamentoConsulta
GROUP BY CNPJ;

--3. Uma consulta que possua as cláusulas HAVING e FETCH FIRST
SELECT e.Nome, COUNT(a.CodAgendamentoConsulta) AS TotalConsultas
FROM Empregado e
JOIN AgendamentoConsulta a ON e.CodEmpregado = a.CodEmpregado
WHERE TO_CHAR(a.DataHora, 'YYYY-MM-DD') BETWEEN '2024-09-01' AND '2024-10-31'
GROUP BY e.Nome
HAVING COUNT(a.CodAgendamentoConsulta) > 3
FETCH FIRST 5 ROWS ONLY;

--4. Consulta com um JOIN
SELECT c.Nome AS Clinica, 
       p.Nome AS Produto, 
       SUM(a.QtdProdutoUtilizado * p.Valor) AS TotalFaturado
FROM AgendamentoConsulta a
JOIN Clinica c ON a.CNPJ = c.CNPJ
JOIN AgendamentoProduto pa ON a.CodAgendamentoConsulta = pa.CodAgendamentoConsulta
JOIN Produto p ON pa.CodProduto = p.CodProduto
WHERE TO_CHAR(a.DataHora, 'MM') =  '10'-- Substituir X pelo número do mês desejado
GROUP BY c.Nome, p.Nome
ORDER BY TotalFaturado DESC;


--5. Uma consulta que possua uma subconsulta
SELECT CodAnimal, (SELECT NOME FROM ANIMAL ANI WHERE ANI.CODANIMAL = AgendamentoConsulta.codAnimal) AS NOME, COUNT(CodAgendamentoConsulta) AS TotalConsultas
FROM AgendamentoConsulta
WHERE CNPJ = (SELECT CNPJ FROM Clinica WHERE Nome = 'Pet Feliz')
GROUP BY CodAnimal
ORDER BY TotalConsultas DESC