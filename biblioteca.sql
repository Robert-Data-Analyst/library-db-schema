-- Tabela autor
CREATE TABLE autor (
  id_autor INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  nacionalidade VARCHAR(100)
);

-- Tabela editora
CREATE TABLE editora (
  id_editora INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  cidade VARCHAR(100)
);

-- Tabela livros (depois)
CREATE TABLE livros (
  isbn CHAR(13) NOT NULL PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  ano_publicacao INT,
  id_autor INT NOT NULL,
  id_editora INT NOT NULL,
  FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
  FOREIGN KEY (id_editora) REFERENCES editora(id_editora)
);


INSERT INTO autor (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('George Orwell', 'Britânica'),
('Clarice Lispector', 'Brasileira'),
('J.K. Rowling', 'Britânica');

INSERT INTO editora (nome, cidade) VALUES
('Companhia das Letras', 'São Paulo'),
('HarperCollins', 'Londres'),
('Rocco', 'Rio de Janeiro'),
('Penguin Books', 'Londres');


INSERT INTO livros (isbn, titulo, ano_publicacao, id_autor, id_editora) VALUES
('9788535902774', 'Memórias Póstumas de Brás Cubas', 1881, 1, 1),
('9780451524935', '1984', 1949, 2, 2),
('9788535925186', 'A Hora da Estrela', 1977, 3, 1),
('9788532530789', 'Harry Potter e a Pedra Filosofal', 1997, 4, 3);
