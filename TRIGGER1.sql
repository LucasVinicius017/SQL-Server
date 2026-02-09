CREATE TABLE LOG_SALARIO
(
FuncionarioId INT,
SalarioAntigo DECIMAL(12,2),
SalarioNovo DECIMAL(12,2),
DataAlteracao DATETIME DEFAULT GETDATE()
)

/* TRIGGER - OBJETO DE BANCO DE DADOS QUE É ACIONADO QUANDO TEM ALGUM
			 COMO (Insert, Update, Delte) EM ALGUMA TABELA */

CREATE TRIGGER ALTERA_SALARIO
ON FUNCIONARIO 
AFTER UPDATE
AS 
  BEGIN
	IF UPDATE(FUNCIONARIOSALARIO) --VERIFICA SE ESTA ALTERANDO O SALARIO
	BEGIN
	  INSERT INTO LOG_SALARIO (FuncionarioId, SalarioAntigo, SalarioNovo)
	  SELECT I.FuncionarioId,
			 D.FuncionarioSalario,
			 I.FuncionarioSalario
	  FROM inserted i
		   JOIN deleted d ON i.FuncionarioID = d.FuncionarioID;
   END
END;

  SELECT * FROM 

  UPDATE Funcionario
	SET FuncionarioNome = 'SEBASTIÃO SALGADO'
	WHERE FuncionarioID = 

  UPDATE Funcionario
	SET FuncionarioSalario = 20000
	WHERE FuncionarioID = 14 
