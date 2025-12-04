-- Consultas SELECT para avaliação

-- 1. Lista de voluntários
SELECT ID_Voluntario, Nome, Especializacao
FROM Voluntario
ORDER BY Nome;

-- 2. Doações com nome do doador
SELECT D.ID_Doacao, R.Nome_RazaoSocial, D.Valor_Ou_Estimado
FROM Doacao D
JOIN Doador R ON R.ID_Doador = D.ID_Doador;

-- 3. Beneficiários com renda menor que 1000
SELECT Nome, Renda_Familiar
FROM Beneficiario
WHERE Renda_Familiar < 1000;

-- 4. Projetos ativos
SELECT Nome_Projeto, Status
FROM Projeto
WHERE Status = 'Ativo';

-- 5. Atendimentos com JOIN
SELECT B.Nome AS Beneficiario, V.Nome AS Voluntario, A.Tipo_Servico
FROM Atendimento A
JOIN Beneficiario B ON B.ID_Beneficiario = A.ID_Beneficiario
JOIN Voluntario V ON V.ID_Voluntario = A.ID_Voluntario;
