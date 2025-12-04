-- =============================
-- INSERTS PARA POVOAR O BANCO
-- =============================

-- Voluntários
INSERT INTO Voluntario (Nome, CPF, Email, Telefone, Especializacao)
VALUES
('Ana Souza', '123.456.789-00', 'ana@ong.org', '11999990000', 'Assistente Social'),
('Marcos Lima', '987.654.321-00', 'marcos@ong.org', '11988880000', 'Enfermagem');

-- Doadores
INSERT INTO Doador (Nome_RazaoSocial, CPF_CNPJ, Email, Tipo_Doador)
VALUES
('Carlos Pereira', '123.123.123-12', 'carlos@gmail.com', 'Física'),
('Empresa Solidária LTDA', '55.444.333/0001-99', 'contato@empresa.com', 'Jurídica');

-- Beneficiários
INSERT INTO Beneficiario (Nome, CPF, Data_Nascimento, Endereco, Renda_Familiar)
VALUES
('João Silva', '111.222.333-44', '2000-05-12', 'Rua A, 123', 1200.00),
('Maria Santos', '555.666.777-88', '1985-11-03', 'Rua B, 45', 800.00);

-- Projetos
INSERT INTO Projeto (ID_Voluntario_Lider, Nome_Projeto, Descricao, Data_Inicio, Status)
VALUES
(1, 'Projeto Saúde+', 'Atendimentos básicos de saúde', '2025-01-10', 'Ativo'),
(2, 'Educar para Crescer', 'Aulas de reforço', '2025-02-05', 'Planejado');

-- Doações
INSERT INTO Doacao (ID_Doador, ID_Projeto, Tipo_Doacao, Valor_Ou_Estimado, Data_Recebimento)
VALUES
(1, 1, 'Financeira', 500.00, '2025-03-01'),
(2, 1, 'Material', 300.00, '2025-03-02');

-- Atendimentos
INSERT INTO Atendimento (ID_Beneficiario, ID_Voluntario, Data_Atendimento, Tipo_Servico)
VALUES
(1, 1, '2025-03-10 10:00', 'Consulta'),
(2, 2, '2025-03-10 14:00', 'Orientação');
