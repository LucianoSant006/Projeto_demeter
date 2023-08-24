-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Fev-2023 às 15:04
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
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `Cod_autor` int(11) NOT NULL,
  `Nome_Autor` varchar(30) NOT NULL,
  `Pais_Autor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`Cod_autor`, `Nome_Autor`, `Pais_Autor`) VALUES
(1, 'Fiódor Dostoiévski', 'Russia'),
(2, 'Machado de Assis', 'Brasil'),
(3, 'William Shakespeare', 'Reino Unido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(11) NOT NULL,
  `Nome_Cliente` varchar(30) NOT NULL,
  `RG_cliente` varchar(30) NOT NULL,
  `CPF_Cliente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Nome_Cliente`, `RG_cliente`, `CPF_Cliente`) VALUES
(1, 'Reginaldo', '40.532.953-2', '420.880.920-56'),
(2, 'Jaison', '12.178.646-8', '417.817.390-13'),
(3, 'Fatima', '20.920.457-6', '725.248.170-08'),
(4, 'Roger', '47.614.623-9', '698.693.740-77'),
(5, 'Luan', '28.495.086-5', '016.880.120-52'),
(6, 'Denilson', '36.655.262-4', '687.227.450-68');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `ID_Editora` int(11) NOT NULL,
  `Nome_Fantasia` varchar(30) NOT NULL,
  `RazaoSocial_Editora` varchar(30) NOT NULL,
  `Endereço_Editora` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`ID_Editora`, `Nome_Fantasia`, `RazaoSocial_Editora`, `Endereço_Editora`) VALUES
(1, 'Martin Claret', 'Determinismo', 'Rua alegrete62sumare'),
(2, '34', 'Pensamento Politico', 'Rua: Sao Hungria Sao Paulo'),
(3, 'Livraria Garnier', 'sociedade', 'Rua alegrete Sao Paulo,');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `ID_livro` int(11) NOT NULL,
  `Titulo_livro` varchar(30) NOT NULL,
  `Preço_Livro` decimal(5,2) NOT NULL,
  `Categoria_Livro` varchar(30) DEFAULT NULL,
  `ID_Editora` int(30) NOT NULL,
  `cod_aut` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID_livro`, `Titulo_livro`, `Preço_Livro`, `Categoria_Livro`, `ID_Editora`, `cod_aut`) VALUES
(1, 'OS IRMÃOS Karamázov', '107.00', 'Romançe', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `ID_Venda` int(11) NOT NULL,
  `ID_Pedido` int(30) NOT NULL,
  `ID_Cliente` int(30) NOT NULL,
  `iD_Vendedor` int(30) NOT NULL,
  `Data_Venda` date NOT NULL,
  `Desconto_Venda` decimal(10,0) DEFAULT NULL,
  `ValorBruto_Venda` decimal(10,0) DEFAULT NULL,
  `Qtd_liv` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `Cod_vdr` int(11) NOT NULL,
  `Nome_vdr` varchar(30) NOT NULL,
  `CPF_vdr` varchar(30) NOT NULL,
  `Sexo_vdr` enum('M','F') DEFAULT NULL,
  `Nacimento_vdr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`Cod_vdr`, `Nome_vdr`, `CPF_vdr`, `Sexo_vdr`, `Nacimento_vdr`) VALUES
(1, 'Cleiton', '4323-43243', 'M', '1990-03-25'),
(2, 'Fabiana', '7328-7282-02', 'F', '1995-05-22'),
(3, 'Leandro', '5532-0932-03', 'M', '1989-07-10'),
(4, 'Mauricio', '12312-3212-01', 'M', '1986-08-11'),
(5, 'Lauren ', '7878-7826-09', 'F', '1997-10-05'),
(6, 'juliam', '3321-37874-04', 'M', '1992-07-10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Cod_autor`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`ID_Editora`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID_livro`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`ID_Venda`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`Cod_vdr`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `Cod_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `ID_Editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `ID_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `ID_Venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `Cod_vdr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
