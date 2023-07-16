-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jul-2023 às 19:20
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
-- Banco de dados: `aluno`
--
CREATE DATABASE IF NOT EXISTS `aluno` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `aluno`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `cod_alu` int(11) NOT NULL,
  `nom_alu` varchar(30) DEFAULT NULL,
  `cell_alu` varchar(20) DEFAULT NULL,
  `sexo_alu` enum('M','N') DEFAULT NULL,
  `alu_cid` int(2) NOT NULL,
  `est_alu` int(2) DEFAULT NULL,
  `escola_alu` varchar(20) DEFAULT NULL,
  `pais_alu` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`cod_alu`, `nom_alu`, `cell_alu`, `sexo_alu`, `alu_cid`, `est_alu`, `escola_alu`, `pais_alu`) VALUES
(1, 'tupac', '(19) 9991040', 'M', 1, 1, 'DOM BARRETO', 'EUA'),
(2, 'snoopdogg', '(19) 999931230', 'M', 1, 1, 'DOM BARRETO', ''),
(3, 'Bone', '(19) 99454640', 'M', 1, 1, 'DOM BARRETO', 'EUA'),
(4, 'Lauren Hill', '(19) 99545440', '', 3, 2, 'DOM BARRETO', 'EUA'),
(5, '50cent', '(19) 9991040', 'M', 4, 2, 'DOM BARRETO', 'EUA'),
(6, 'De.dre', '(19) 9995650', 'M', 3, 4, 'DOM BARRETO', 'EUA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `cod_cid` int(11) NOT NULL,
  `cid_nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`cod_cid`, `cid_nome`) VALUES
(1, 'VALINHOS'),
(3, 'campinas'),
(4, 'sumare');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_alu`
--

CREATE TABLE `estado_alu` (
  `est_cod` int(11) NOT NULL,
  `nome_est` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `estado_alu`
--

INSERT INTO `estado_alu` (`est_cod`, `nome_est`) VALUES
(1, 'SP'),
(2, 'mg'),
(3, 'RJ');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`cod_alu`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`cod_cid`);

--
-- Índices para tabela `estado_alu`
--
ALTER TABLE `estado_alu`
  ADD PRIMARY KEY (`est_cod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `cod_alu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `cod_cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `estado_alu`
--
ALTER TABLE `estado_alu`
  MODIFY `est_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Banco de dados: `consultoria`
--
CREATE DATABASE IF NOT EXISTS `consultoria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `consultoria`;

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
(1, 'OS IRMÃOS Karamázov', '107.00', 'Romançe', 1, 1),
(2, 'Dom Casmurro', '43.00', 'Romançe', 3, 2),
(3, 'Os Demonios', '77.00', 'Romançe', 2, 1),
(4, 'Memorias Postumas de Bras Cuba', '14.51', 'Ficçao', 2, 2),
(5, 'Romeu e Juliet', '49.00', 'Drama', 1, 3),
(6, 'Hamlet', '52.00', 'Drama', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `ID_Pedido` int(11) NOT NULL,
  `ID_LIVRO` int(30) NOT NULL,
  `ID_VENDA` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`ID_Pedido`, `ID_LIVRO`, `ID_VENDA`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

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

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`ID_Venda`, `ID_Pedido`, `ID_Cliente`, `iD_Vendedor`, `Data_Venda`, `Desconto_Venda`, `ValorBruto_Venda`, `Qtd_liv`) VALUES
(1, 5, 1, 1, '2023-01-23', '50', '214', 2),
(2, 2, 3, 6, '2023-02-02', '33', '129', 3),
(3, 3, 2, 1, '2022-08-22', '17', '77', 1),
(4, 4, 2, 4, '2022-10-02', '0', '14', 1),
(5, 1, 5, 1, '2022-12-26', '20', '98', 2),
(6, 6, 4, 4, '2023-02-26', '52', '10', 1);

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
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_Pedido`);

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
  MODIFY `ID_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `ID_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `Cod_vdr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Banco de dados: `detran_a`
--
CREATE DATABASE IF NOT EXISTS `detran_a` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `detran_a`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `automovel_final`
--

CREATE TABLE `automovel_final` (
  `id_final` int(11) NOT NULL,
  `id_cnh` int(11) NOT NULL,
  `id_automovel` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_cor` int(11) NOT NULL,
  `placa` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `automovel_final`
--

INSERT INTO `automovel_final` (`id_final`, `id_cnh`, `id_automovel`, `id_marca`, `id_modelo`, `id_cor`, `placa`) VALUES
(1, 1, 1, 1, 1, 1, 'HVY-5275');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro_d_infra`
--

CREATE TABLE `bairro_d_infra` (
  `id_bairro` int(11) NOT NULL,
  `nome_bairro` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bairro_d_infra`
--

INSERT INTO `bairro_d_infra` (`id_bairro`, `nome_bairro`) VALUES
(1, 'Esmeraldina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categ_d_hab`
--

CREATE TABLE `categ_d_hab` (
  `id_categ` int(11) NOT NULL,
  `tipo_d_categ` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categ_d_hab`
--

INSERT INTO `categ_d_hab` (`id_categ`, `tipo_d_categ`) VALUES
(1, 'B');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cid_d_infra`
--

CREATE TABLE `cid_d_infra` (
  `id_cid` int(11) NOT NULL,
  `nome_cid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cid_d_infra`
--

INSERT INTO `cid_d_infra` (`id_cid`, `nome_cid`) VALUES
(1, 'Campinas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cnh`
--

CREATE TABLE `cnh` (
  `id_cnh` int(11) NOT NULL,
  `cpf_cnh` varchar(30) NOT NULL,
  `date_d_nac` date NOT NULL,
  `nome_cond` varchar(30) NOT NULL,
  `id_categ` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `data_d_emissão` date NOT NULL,
  `data_d_valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cnh`
--

INSERT INTO `cnh` (`id_cnh`, `cpf_cnh`, `date_d_nac`, `nome_cond`, `id_categ`, `id_especie`, `data_d_emissão`, `data_d_valid`) VALUES
(1, '707.848.310-33', '2003-06-14', 'Bruno Marcos', 1, 1, '2023-01-08', '2033-01-08'),
(2, '989.226.920-90', '1990-05-05', 'Lucas William', 2, 1, '2023-01-08', '2033-01-08'),
(3, '520.489.450-07', '1986-03-01', 'Lauryn Hill', 2, 2, '2019-07-22', '2039-01-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cor_automovel`
--

CREATE TABLE `cor_automovel` (
  `id_cor` int(11) NOT NULL,
  `nome_cor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cor_automovel`
--

INSERT INTO `cor_automovel` (`id_cor`, `nome_cor`) VALUES
(1, 'Azul');

-- --------------------------------------------------------

--
-- Estrutura da tabela `descriçao`
--

CREATE TABLE `descriçao` (
  `id_descri` int(30) NOT NULL,
  `nome_descri` varchar(30) NOT NULL,
  `lei` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `descriçao`
--

INSERT INTO `descriçao` (`id_descri`, `nome_descri`, `lei`) VALUES
(1, '20% acima do limite permitido:', 'art. 218 do CTB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especie_d_veiculo`
--

CREATE TABLE `especie_d_veiculo` (
  `id_especie` int(11) NOT NULL,
  `nome_Especie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `especie_d_veiculo`
--

INSERT INTO `especie_d_veiculo` (`id_especie`, `nome_Especie`) VALUES
(1, 'Passageiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_d_infra`
--

CREATE TABLE `estado_d_infra` (
  `id_est` int(11) NOT NULL,
  `nome_est` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estado_d_infra`
--

INSERT INTO `estado_d_infra` (`id_est`, `nome_est`) VALUES
(1, 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gravacao_d_multa`
--

CREATE TABLE `gravacao_d_multa` (
  `id_grav` int(11) NOT NULL,
  `nome_grav` varchar(30) NOT NULL,
  `pontos_grav` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `gravacao_d_multa`
--

INSERT INTO `gravacao_d_multa` (`id_grav`, `nome_grav`, `pontos_grav`) VALUES
(1, 'Leve', 3),
(2, 'Média', 4),
(3, 'Grave', 5),
(4, 'Gravíssima', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `local_d_infra`
--

CREATE TABLE `local_d_infra` (
  `id_local` int(11) NOT NULL,
  `id_est` int(30) NOT NULL,
  `id_cid` int(30) NOT NULL,
  `id_bairro` int(30) NOT NULL,
  `id_sent` int(30) NOT NULL,
  `date_d_l` date NOT NULL,
  `hor_d_infra` varchar(30) NOT NULL,
  `Id_rua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `local_d_infra`
--

INSERT INTO `local_d_infra` (`id_local`, `id_est`, `id_cid`, `id_bairro`, `id_sent`, `date_d_l`, `hor_d_infra`, `Id_rua`) VALUES
(1, 1, 1, 1, 1, '2023-03-02', '8:00 PM', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca_automovel`
--

CREATE TABLE `marca_automovel` (
  `id_marca` int(11) NOT NULL,
  `nome_marca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `marca_automovel`
--

INSERT INTO `marca_automovel` (`id_marca`, `nome_marca`) VALUES
(1, 'Toyota');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo_automovel`
--

CREATE TABLE `modelo_automovel` (
  `id_modelo` int(11) NOT NULL,
  `nome_modelo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `modelo_automovel`
--

INSERT INTO `modelo_automovel` (`id_modelo`, `nome_modelo`) VALUES
(1, 'Toyota Corolla 2.0 GR-S CVT 20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `multafinal`
--

CREATE TABLE `multafinal` (
  `id_multa` int(11) NOT NULL,
  `id_final` int(11) NOT NULL,
  `id_descricao` int(11) NOT NULL,
  `id_grav` int(11) NOT NULL,
  `id_ldi` int(11) NOT NULL,
  `valor_d_multa` varchar(30) DEFAULT NULL,
  `valor_at_vencimento` varchar(30) DEFAULT NULL,
  `data_d_venci` date NOT NULL,
  `valor_ap_venci` varchar(30) DEFAULT NULL,
  `prazo_d_defesa` date NOT NULL,
  `data_d_emissao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `multafinal`
--

INSERT INTO `multafinal` (`id_multa`, `id_final`, `id_descricao`, `id_grav`, `id_ldi`, `valor_d_multa`, `valor_at_vencimento`, `data_d_venci`, `valor_ap_venci`, `prazo_d_defesa`, `data_d_emissao`) VALUES
(1, 1, 1, 2, 1, '20% acima do limite permitido:', '104,128 deconto de 20%', '2023-04-10', '30% juros a cima do valor da m', '2023-04-05', '2023-03-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rua_d_infra`
--

CREATE TABLE `rua_d_infra` (
  `id_rua` int(11) NOT NULL,
  `nome_rua` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `rua_d_infra`
--

INSERT INTO `rua_d_infra` (`id_rua`, `nome_rua`) VALUES
(1, 'Rua Vitor Meirells');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sent_d_infra`
--

CREATE TABLE `sent_d_infra` (
  `id_sent` int(11) NOT NULL,
  `nome_sent` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `sent_d_infra`
--

INSERT INTO `sent_d_infra` (`id_sent`, `nome_sent`) VALUES
(1, 'Sul');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_d_automovel`
--

CREATE TABLE `tipo_d_automovel` (
  `id_tipo` int(11) NOT NULL,
  `nome_tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_d_automovel`
--

INSERT INTO `tipo_d_automovel` (`id_tipo`, `nome_tipo`) VALUES
(1, 'Carro');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `automovel_final`
--
ALTER TABLE `automovel_final`
  ADD PRIMARY KEY (`id_final`);

--
-- Índices para tabela `bairro_d_infra`
--
ALTER TABLE `bairro_d_infra`
  ADD PRIMARY KEY (`id_bairro`);

--
-- Índices para tabela `categ_d_hab`
--
ALTER TABLE `categ_d_hab`
  ADD PRIMARY KEY (`id_categ`);

--
-- Índices para tabela `cid_d_infra`
--
ALTER TABLE `cid_d_infra`
  ADD PRIMARY KEY (`id_cid`);

--
-- Índices para tabela `cor_automovel`
--
ALTER TABLE `cor_automovel`
  ADD PRIMARY KEY (`id_cor`);

--
-- Índices para tabela `especie_d_veiculo`
--
ALTER TABLE `especie_d_veiculo`
  ADD PRIMARY KEY (`id_especie`);

--
-- Índices para tabela `estado_d_infra`
--
ALTER TABLE `estado_d_infra`
  ADD PRIMARY KEY (`id_est`);

--
-- Índices para tabela `gravacao_d_multa`
--
ALTER TABLE `gravacao_d_multa`
  ADD PRIMARY KEY (`id_grav`);

--
-- Índices para tabela `local_d_infra`
--
ALTER TABLE `local_d_infra`
  ADD PRIMARY KEY (`id_local`);

--
-- Índices para tabela `marca_automovel`
--
ALTER TABLE `marca_automovel`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `modelo_automovel`
--
ALTER TABLE `modelo_automovel`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Índices para tabela `multafinal`
--
ALTER TABLE `multafinal`
  ADD PRIMARY KEY (`id_multa`);

--
-- Índices para tabela `rua_d_infra`
--
ALTER TABLE `rua_d_infra`
  ADD PRIMARY KEY (`id_rua`);

--
-- Índices para tabela `sent_d_infra`
--
ALTER TABLE `sent_d_infra`
  ADD PRIMARY KEY (`id_sent`);

--
-- Índices para tabela `tipo_d_automovel`
--
ALTER TABLE `tipo_d_automovel`
  ADD PRIMARY KEY (`id_tipo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `automovel_final`
--
ALTER TABLE `automovel_final`
  MODIFY `id_final` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `bairro_d_infra`
--
ALTER TABLE `bairro_d_infra`
  MODIFY `id_bairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cid_d_infra`
--
ALTER TABLE `cid_d_infra`
  MODIFY `id_cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cor_automovel`
--
ALTER TABLE `cor_automovel`
  MODIFY `id_cor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `estado_d_infra`
--
ALTER TABLE `estado_d_infra`
  MODIFY `id_est` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `gravacao_d_multa`
--
ALTER TABLE `gravacao_d_multa`
  MODIFY `id_grav` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `marca_automovel`
--
ALTER TABLE `marca_automovel`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `modelo_automovel`
--
ALTER TABLE `modelo_automovel`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `multafinal`
--
ALTER TABLE `multafinal`
  MODIFY `id_multa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `rua_d_infra`
--
ALTER TABLE `rua_d_infra`
  MODIFY `id_rua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sent_d_infra`
--
ALTER TABLE `sent_d_infra`
  MODIFY `id_sent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipo_d_automovel`
--
ALTER TABLE `tipo_d_automovel`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `pessoa`
--
CREATE DATABASE IF NOT EXISTS `pessoa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pessoa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `ID_pessoa` int(11) NOT NULL,
  `Nome` varchar(40) DEFAULT NULL,
  `Endereço` varchar(50) DEFAULT NULL,
  `Cidade` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas_ix`
--

CREATE TABLE `pessoas_ix` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Extraindo dados da tabela `pessoas_ix`
--

INSERT INTO `pessoas_ix` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`ID_pessoa`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Extraindo dados da tabela `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('aluno', 'alu_cid', 'int', '2', '', 0, ',', ''),
('aluno', 'cell_alu', 'varchar', '20', 'utf8_general_ci', 1, ',', ''),
('aluno', 'cod_alu', 'int', '11', '', 0, 'auto_increment,', ''),
('aluno', 'escola_alu', 'varchar', '20', 'utf8_general_ci', 1, ',', ''),
('aluno', 'est_alu', 'int', '2', '', 1, ',', ''),
('aluno', 'nom_alu', 'varchar', '30', 'utf8_general_ci', 1, ',', ''),
('aluno', 'pais_alu', 'varchar', '20', 'utf8_general_ci', 1, ',', 'Brasil'),
('aluno', 'sexo_alu', 'enum', '\'M\',\'N\'', 'utf8_general_ci', 1, ',', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Extraindo dados da tabela `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '{\"1\":{\"db\":\"aluno\",\"table\":\"cidades\"},\"2\":{\"db\":\"aluno\",\"table\":\"alunos\"}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Extraindo dados da tabela `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'cidade', 'table', 'cidade', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"consultoria\",\"table\":\"livro\"},{\"db\":\"consultoria\",\"table\":\"autor\"},{\"db\":\"consultoria\",\"table\":\"venda\"},{\"db\":\"consultoria\",\"table\":\"cliente\"},{\"db\":\"consultoria\",\"table\":\"editora\"},{\"db\":\"consultoria\",\"table\":\"vendedor\"},{\"db\":\"consultoria\",\"table\":\"pedido\"},{\"db\":\"pessoa\",\"table\":\"pessoa\"},{\"db\":\"aluno\",\"table\":\"alunos\"},{\"db\":\"aluno\",\"table\":\"estado_alu\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'aluno', 'alunos', '{\"CREATE_TIME\":\"2023-02-15 21:10:37\",\"col_order\":[1,0,2,3,4,5,6,7],\"col_visib\":[1,1,1,1,1,1,1,1]}', '2023-02-16 22:12:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-28 12:06:15', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"NavigationWidth\":191}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `email` int(11) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `email` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `vai`
--
CREATE DATABASE IF NOT EXISTS `vai` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vai`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `salarios`
--

CREATE TABLE `salarios` (
  `id_funcionario` int(11) NOT NULL,
  ` departamento` int(11) DEFAULT NULL,
  ` salario` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `salarios`
--

INSERT INTO `salarios` (`id_funcionario`, ` departamento`, ` salario`) VALUES
(1, 11, '5000'),
(2, 22, '6000'),
(3, 30, '2500'),
(4, 30, '3587'),
(5, 22, '4215');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `salarios`
--
ALTER TABLE `salarios`
  ADD PRIMARY KEY (`id_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
