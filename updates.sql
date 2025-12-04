-- Atualizar email de voluntário
UPDATE Voluntario
SET Email = 'novoemail@ong.org'
WHERE ID_Voluntario = 1;

-- Atualizar status do projeto
UPDATE Projeto
SET Status = 'Concluído'
WHERE ID_Projeto = 1;

-- Atualizar renda de beneficiário
UPDATE Beneficiario
SET Renda_Familiar = 900.00
WHERE ID_Beneficiario = 2;
