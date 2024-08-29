Use master 
GO 
IF NOT EXISTS(
	SELECT name
	FROM sys.databases
	WHERE name = N'Empresa'
    )
CREATE DATABASE [Empresa] 
GO

USE [Empresa]

IF OBJECT_ID('Funcionarios', 'U') IS NOT NULL
	DROP TABLE Funcionarios
GO

CREATE TABLE Funcionarios (
	FuncionarioCodigo INT NOT NULL PRIMARY KEY, 
	PrimeiroNome NVARCHAR(50) NOT NULL,
	SegundoNome NVARCHAR (50) NOT NULL,
    UltimoNome NVARCHAR (50) NOT NULL,
	Data VARCHAR (11) NOT NULL,
	Cpf VARCHAR (15) NOT NULL,
	Rg VARCHAR (12) NOT NULL,
	Endereco NVARCHAR (90) NOT NULL,
	Cep VARCHAR (11) NOT NULL,
	Estado VARCHAR (16) NOT NULL,
	Uf VARCHAR(3) NOT NULL,
	Tel VARCHAR (15) NOT NULL,
	Funcao VARCHAR (50) NOT NULL,
	Salario DECIMAL ( 10, 2) NOT NULL


	
  );
GO

INSERT INTO Funcionarios
	([FuncionarioCodigo], [PrimeiroNome], [SegundoNome], [UltimoNome], [Data], [Cpf], [Rg], [Endereco], [Cep],[Estado], [Uf], [Tel], [funcao], [Salario])
  VALUES
   (1, N'Maria' , N'Eduarda', N'Monteiro', '2007-14-02', '349.891.670-07', '46.576.252-9', N'Rua Chocolate', '08122160', 'Ceara', 'CE', '(85)99852-5417', 'veterinaria',  5500),
   (2, N'Karinne' , N'Angelo', N'santos', '2007-25-02', '547.488.759-00', '44.052.187-7', N'Rua Bolo', '21930-070', 'Rio de janeiro', 'RJ', '(24)97136-8543', 'Progamadora', 7500),
   (3, N'Jovana' , N'Oliveira', N'Silva', '2007-23-08', '534.417.059-90', '27.014.437-7', N'Rua Jujuba', '57081-782', 'Alagoas', 'AL',  '(82)98941-8211', 'Analista de sistemas', 6500),
   (4, N'Gabrielly' , N'Nascimento', N'Origami', '2007-16-10', '595.317.059-90', '20.088.572-8', N'Rua Sorvete', '45988-572','Bahia', 'BA',  '(73)98372-8388', 'Estilista', 4700),
   (5, N'Leticia' , N'Guanaes', N'Santos', '2007-11-06', '387.679.100-68', '17.080.503-7', N'Rua Chiclete', '88817-456', 'Santa catarina', 'SC', '(47)98971-1088', 'Psicológa', 5800),
   (6, N'Ester' , N'Oliveira', N'Almeida', '2007-07-10', '957.699.030-07', '46.841.336-4', N'Rua Bala', '77410-175', 'Tocantins', 'TO', '(63) 98927-2135', 'Cozinheira', 3700),
   (7, N'Milena' , N'ALmeida', N'Campos', '2007-07-02', '119.576.670-01', '42.189.415-5', N'Rua Goiabada', '09930-410', 'São paulo', 'SP', '(11)94956-9152', 'Médica', 7700),
   (8, N'Cristina' , N'Jesus', N'Souza', '2008-04-02', '472.985.810-74', '31.112.573-6', N'Rua Bananinha', '50680-670', 'Pernambuco', 'PE', '(81) 98986-2339', 'Professora', 5500),
   (9, N'Viviane' , N'Silva', N'Oliveira', '2008-05-10', '903.399.400-34', '43.489.967-7', N'Rua Queijadinha', '48005-903','Bahia', 'BA',  '(74)98754-6387', 'Modelo', 6800),
   (10, N'Patricia' , N'Gomes', N'Camargo', '2008-09-11', '472.951.370-33', '32.641.935-4', N'Rua Pudim', '39804-648','Minas gerais', 'MG',   '(32)98035-2111', 'Comissária de bordo', 4400),
   (11, N'Beatriz' , N'Alves', N'Nunes', '2008-07-07', '667.330.200-33', '43.293.616-6', N'Rua Nutella', '70734-050','Distrito federal', 'DF',  '(61) 99457-4845', 'Artista', 7400),
   (12, N'Marian' , N'ALmeida', N'Ventura', '2007-08-02', '684.853.570-27', '41.356.241-4', N'Rua Paçoca', '07179-150','São paulo', 'SP',  '(11) 97262-1462', 'Cantora', 5600),
   (13, N'Tatiane' , N'Silva', N'Oliveira', '2010-07-03', '822.783.030-74', '47.494.416-5', N'Rua Queijadinha', '48005-903', 'Bahia', 'BA',  '(74) 99525-5628', 'Atendente', 2200),
   (14, N'Ana' , N'Santos', N'Vieira', '2010-04-03', '650.838.250-07', '11.822.695-2', N'Rua Tapioca', '72156-215', 'Distrito federal', 'DF', '(61) 98507-2385', 'Atendente', 1900),
   (15, N'Daniela' , N'Souza', N'Vilela', '2009-05-03', '800.316.050-28', '37.576.678-9', N'Rua Beijinho', '06280-210', 'São paulo', 'SP', '(11) 98626-3331', 'Operadora de caixa', 1300)

GO

SELECT *FROM Funcionarios
