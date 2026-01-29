USE bdbibliotecanovo

insert into Autores (nome_autor) values ('Danilo Fillito');
insert into Autores (nome_autor) values ('Valter Bercelli');
insert into Autores (nome_autor) values ('Sérgio Silva');
 
SELECT * FROM Alunos; -- Comandos pra conmsultaer todos os valores da tabela Aluno 
SELECT * FROM Autores;
SELECT * FROM Editoras; -- Comandos pra consultar todos os valores da tabela Editora
SELECT * FROM Livros; -- Comandos pra cosultar todos os valores da tabela Livros
SELECT * FROM Emprestimos; -- Comandos pra consultar todos os valores da tabela Emprestimo 
SELECT * FROM Emprestimo_Itens; -- Comandos pra consultar todos os valores da tabela Itens_Emprestimo
 
Insert into Editoras(editora_nome,editora_endereco,editora_telefone,editora_email)
values ('SENAC','Avenida Brasil','1833444400','contato@senac.br')
Insert into Editoras(editora_nome,editora_endereco,editora_telefone,editora_email)
values ('ABRIL','Avenida SAUDADE','1833333300','contato@ABRIL.br')
 
Insert into Livros(livro_titulo,id_autor,id_editora,isbn)
Values  ('Asp.net',1,1,'012345678'),
		('Oracle 11g',2,1,'06346345678'),
		('HTML',2,1,'012341234');
INSERT INTO Emprestimos (id_aluno) VALUES (1)

SELECT Livros.id_livro, Livros.livro_titulo, Editoras.editora_nome,
		Autores.nome_autor
FROM Livros left outer join Autores
		ON Livros.id_autor = Autores.id_autor
		left outer join Editoras 
		ON Livros.id_editora = Editoras.id_editora

INSERT INTO Emprestimo_Itens (id_emprestimo, id_livro) VALUES (1,1)
INSERT INTO Emprestimo_Itens (id_emprestimo, id_livro) VALUES (1,2)

										SELECT Livros.id_livro, Livros.livro_titulo, Livros.isbn, Emprestimos.data_emprestimo,
											   Emprestimos.id_emprestimo, Autores.nome_autor, Alunos.aluno_nome,

										FROM Alunos left outer join Autores
												 ON Alunos.aluno_nome = Autores.nome_autor
												 left outer join Editoras
	
SELECT Emprestimos.id_emprestimo, Emprestimos.data_emprestimo, Alunos.aluno_nome

FROM Emprestimos left outer join Alunos
			ON Emprestimos.id_aluno = Alunos.id_aluno
			left outer join 