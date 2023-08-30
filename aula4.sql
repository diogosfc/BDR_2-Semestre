DROP DATABASE IF EXISTS bd_aula04;
CREATE DATABASE bd_aula04 WITH TEMPLATE bd_aula03;

\c bd_aula04;

INSERT INTO tbl_cliente (nome, cidade, endereco) VALUES
('João Silva', 'São Paulo', 'Rua A, 123'),
('Maria Santos', 'Rio de Janeiro', 'Av. B, 456'),
('Pedro Almeida', 'Belo Horizonte', 'Rua C, 789'),
('Ana Oliveira', 'Salvador', 'Av. D, 1011'),
('Carlos Lima', 'Brasília', 'Rua E, 1213');

INSERT INTO tbl_titulo (titulo, descricao, categoria) VALUES
('Aventuras Urbanas', 'Uma história emocionante', 'DRAMA'),
('Mistérios Antigos', 'Enigmas por resolver', 'COMEDIA'),
('Amor nas Estrelas', 'Um romance intergalático', 'DRAMA'),
('Código Enigmático', 'Segredos ocultos', 'COMEDIA'),
('Histórias Perdidas', 'Contos esquecidos', 'DRAMA');

INSERT INTO tbl_livros (codigo_titulo, status) VALUES
(1, 'DISPONIVEL'),
(1, 'ALUGADO'),
(2, 'DISPONIVEL'),
(3, 'ALUGADO'),
(4, 'DISPONIVEL');

INSERT INTO tbl_emprestimo (codigo_cliente, codigo_livro) VALUES
(1, 2),
(2, 4),
(3, 1),
(4, 5),
(5, 3);

SELECT * FROM tbl_cliente
WHERE cidade = 'São Paulo';

SELECT * FROM tbl_cliente
WHERE codigo_cliente > 3;

SELECT * FROM tbl_titulo;

CREATE TABLE tbl_cliente2 (
  codigo INT
);

INSERT INTO tbl_cliente2 (codigo)
SELECT codigo_cliente
FROM tbl_cliente;

UPDATE tbl_livros
SET status = 'ALUGADO'
WHERE status = 'DISPONIVEL';

DELETE FROM tbl_cliente2
WHERE codigo > 3;
