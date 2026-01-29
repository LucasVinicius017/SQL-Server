UPDATE Alunos set aluno_nome = 'Gustavo - T2 - FullStack' WHERE id_aluno = 1;
SELECT * FROM Alunos;

CREATE UNIQUE INDEX UQ_Alunos_CPF
ON Alunos (aluno_CPF);

UPDATE Alunos set aluno_CPF = '111.111.111-18' WHERE id_aluno = 1;
UPDATE Alunos set aluno_CPF = '111.111.113-18' WHERE id_aluno = 2;
UPDATE Alunos set aluno_CPF = '111.111.123-18' WHERE id_aluno = 3;
UPDATE Alunos set aluno_CPF = '111.123.111-18' WHERE id_aluno = 4;
UPDATE Alunos set aluno_CPF = '121.111.111-18' WHERE id_aluno = 5;
UPDATE Alunos set aluno_CPF = '111.111.111-44' WHERE id_aluno = 6;
UPDATE Alunos set aluno_CPF = '111.111.111-48' WHERE id_aluno = 7;
UPDATE Alunos set aluno_CPF = '111.111.441-48' WHERE id_aluno = 8;