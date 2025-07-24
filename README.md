# Projeto Banco de Dados: Biblioteca

Este projeto consiste na criação de um banco de dados relacional para gerenciar informações de livros, autores e editoras. O objetivo é praticar conceitos de modelagem, integridade referencial, tipos de dados e inserção de informações utilizando MySQL.


O banco de dados contém as seguintes tabelas:

# autor
Armazena informações sobre os autores.

- `id_autor` (INT, AUTO_INCREMENT, PRIMARY KEY)
- `nome` (VARCHAR)
- `nacionalidade` (VARCHAR)

# editora
Contém os dados das editoras.

- `id_editora` (INT, AUTO_INCREMENT, PRIMARY KEY)
- `nome` (VARCHAR)
- `cidade` (VARCHAR)

# livros
Registra os livros e suas conexões com autor e editora.

- `isbn` (CHAR, PRIMARY KEY)
- `titulo` (VARCHAR)
- `ano_publicacao` (INT)
- `id_autor` (FOREIGN KEY para `autor`)
- `id_editora` (FOREIGN KEY para `editora`)

# Como Executar

1. Instale o MySQL ou use uma ferramenta como **MySQL Workbench** ou **XAMPP**.
2. Execute o script `biblioteca.sql` para criar as tabelas e inserir os dados iniciais.
3. Utilize comandos `SELECT` para visualizar as informações ou monte suas próprias consultas com `JOIN`.

#  Exemplos de Consultas
````sql
-- Lista de livros com autor e editora
SELECT 
  l.titulo,
  l.ano_publicacao,
  a.nome AS autor,
  e.nome AS editora
FROM 
  livros l
JOIN autor a ON l.id_autor = a.id_autor
JOIN editora e ON l.id_editora = e.id_editora;
