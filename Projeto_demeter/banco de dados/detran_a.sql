-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Mar-2023 às 01:59
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
-- Banco de dados: `detran_a`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
