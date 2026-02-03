CREATE DATABASE Empresas

USE Empresas;

CREATE TABLE Paises
(
		pais_codigo INT IDENTITY(1,1) PRIMARY KEY,
		pais_nome VARCHAR(30) NOT NULL,
		pais_codigoDDI VARCHAR(10) NOT NULL
);

CREATE TABLE Localidades
(
		localidade_codigo INT IDENTITY(1,1) PRIMARY KEY,
		localidade_nome VARCHAR(100) NOT NULL,
		localidade_cep VARCHAR(10) NOT NULL,
		localidade_rua VARCHAR(150) NOT NULL,
		localidade_uf CHAR(3) NOT NULL,
		localidade_pais INT NOT NULL,
		FOREIGN KEY (localidade_pais) REFERENCES Paises (pais_codigo)
);

CREATE TABLE Grade_Salarios
(
		gradesalario_codigo INT IDENTITY(1,1) PRIMARY KEY,
		gradesalario_descricao_nivel VARCHAR(50) NOT NULL,
		gradesalario_salariominimo DECIMAL(10,2) NOT NULL,
		gradesalario_salariomaximo DECIMAL(10,2) NOT NULL
);

CREATE TABLE Cargos
(
		cargo_codigo INT IDENTITY(1,1) PRIMARY KEY,
		cargo_descricao VARCHAR(100) NOT NULL,
		cargo_salario INT NOT NULL,
		FOREIGN KEY (cargo_salario) REFERENCES Grade_Salarios (gradesalario_codigo) 		
);

CREATE TABLE Departamentos
(
		departamento_codigo INT IDENTITY(1,1) PRIMARY KEY,
		departamento_nome VARCHAR(100) NOT NULL,
		departamento_telefone VARCHAR(20) NOT NULL,
		departamento_gerente INT NOT NULL,
		departamento_cidade INT NOT NULL,
		FOREIGN KEY (departamento_cidade) REFERENCES Localidades (localidade_codigo)
);

CREATE TABLE Funcionarios 
(
		funcionario_codigo INT IDENTITY(1,1) PRIMARY KEY, 
		funcionario_nome VARCHAR(150) NOT NULL, 
		funcionario_cargo INT NOT NULL, 
		funcionario_salario DECIMAL(12,2) NOT NULL, 
		funcionario_departamento INT NOT NULL, 
		funcionario_contratacao DATE NOT NULL,
		funcionario_nascimento DATE NOT NULL,
		funcionario_comissao DECIMAL(12,2) DEFAULT 0.00 NOT NULL,
		funcionario_email VARCHAR(30) UNIQUE NOT NULL,
		funcionario_gerente INT NOT NULL,
		FOREIGN KEY (funcionario_cargo) REFERENCES Cargos(cargo_codigo),
		FOREIGN KEY (funcionario_codigo) REFERENCES Departamentos(departamento_codigo),
		FOREIGN KEY (funcionario_gerente) REFERENCES Funcionarios(funcionario_codigo)
);	

ALTER TABLE Departamentos
ADD FOREIGN KEY (departamento_gerente) REFERENCES Funcionarios(funcionario_codigo);


INSERT INTO Paises (pais_nome, pais_codigoDDI) VALUES ('Brasil','55');
INSERT INTO Paises (pais_nome, pais_codigoDDI) VALUES ('Canada','1');
DELETE ;
UPDATE ; 

INSERT INTO Localidades (localidade_nome, localidade_cep, localidade_pais, localidade_rua, localidade_uf) 
			VALUES ('Presidente Prundente','14940378','Brasil', 'R. Manoel Goulart','SP');
INSERT INTO Localidades (localidade_nome, localidade_cep, localidade_pais, localidade_rua, localidade_uf) 
			VALUES ('Toronto','A1A 1A1', 'Canadá', 'Yonge Street', 'ON');
DELETE ;
UPDATE ; 

INSERT INTO Grade_Salarios (gradesalario_descricao_nivel, gradesalario_salariomaximo, gradesalario_salariominimo)
			VALUES ('Auxilar administrativo', '3000.00', '1800.00');
INSERT INTO Grade_Salarios (gradesalario_descricao_nivel, gradesalario_salariomaximo, gradesalario_salariominimo)
			VALUES ('Gerente', '4000.00', '2000.00');
DELETE ;
UPDATE ; 

INSERT INTO Cargos (cargo_descricao, cargo_salario) 
VALUES ('realizando tarefas essenciais como atendimento ao público', '2022.00');
INSERT INTO Cargos (cargo_descricao, cargo_salario) 
VALUES (' responsável por planejar, organizar e liderar equipes', '4000,00');
DELETE ;
UPDATE ; 

INSERT INTO Departamentos (departamento_cidade, departamento_gerente, departamento_nome, departamento_telefone)
VALUES ('Presidente Prudente', 'Rafaella', 'Departamento Administrativo', '18959595959');
INSERT INTO Departamentos (departamento_cidade, departamento_gerente, departamento_nome, departamento_telefone)
VALUES ('Toronto', 'Fernando', 'Departamento Administrativo', '18958585858');
DELETE ;
UPDATE ; 

INSERT INTO Funcionarios (funcionario_cargo, funcionario_comissao, funcionario_contratacao, funcionario_departamento, funcionario_email, funcionario_gerente, funcionario_nascimento, funcionario_nome)
VALUES ('Auxiliar administrativo','300.00','2018/05/01','Administrativo','administrativo01@gmail.com','Alex','1999/05/20','Fulano1');
INSERT INTO Funcionarios (funcionario_cargo, funcionario_comissao, funcionario_contratacao, funcionario_departamento, funcionario_email, funcionario_gerente, funcionario_nascimento, funcionario_nome)
VALUES ('Auxiliar operacional','100.00','2013/05/01','Operacional','operacional01@gmail.com','Vinicius','1995/08/20','Fulano2');
DELETE ;
UPDATE ; 