-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Fev-2023 às 01:14
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `consultoria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `ID_Livro` int(11) NOT NULL,
  `Titulo_Livro` varchar(30) NOT NULL,
  `preço_livro` int(30) NOT NULL,
  `Categoria_Livro` varchar(30) NOT NULL,
  `ID_Editora` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID_Livro`, `Titulo_Livro`, `preço_livro`, `Categoria_Livro`, `ID_Editora`) VALUES
(1, 'OS IRMÃOS Karamázov', 107, 'Romançe', 'Martin Claret'),
(2, 'Os Demonios', 77, 'Romançe', ' Martin Claret'),
(3, 'Dom Casmurro', 43, 'Romançe', '34 '),
(4, 'Memorias Postumas de Bras Cuba', 14, 'Ficçao', '34'),
(5, 'Romeu e Juliet', 49, 'Drama', 'Livraria Garnier'),
(6, 'Hamlet', 52, 'Drama', 'Livraria Garnier');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID_Livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `ID_Livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
