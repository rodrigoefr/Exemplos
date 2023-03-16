-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Ago-2022 às 22:26
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_sisvendas1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(70) NOT NULL,
  `preco` float NOT NULL,
  `unidade` varchar(20) NOT NULL,
  `qtd_estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `descricao`, `preco`, `unidade`, `qtd_estoque`) VALUES
(1, 'PRATO FEITO', 15, 'UN', 1000),
(2, 'SELF SERVICE', 40, 'KG', 1000),
(3, 'PRATO FEITO PLUS', 20, 'UN', 1000),
(4, 'COCA COLA 2L', 7, 'UN', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

CREATE TABLE `teste` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `data_hora` datetime NOT NULL,
  `forma_pagamento` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id`, `data_hora`, `forma_pagamento`, `id_vendedor`, `id_cliente`, `valor`) VALUES
(73, '2021-06-24 15:16:03', 0, 1, 0, 111),
(74, '2021-06-24 16:02:46', 0, 1, 0, 65),
(75, '2021-06-24 16:03:09', 0, 1, 0, 0),
(76, '2021-06-24 17:40:00', 0, 1, 0, 60),
(77, '2021-06-24 18:29:43', 0, 1, 0, 94),
(78, '2021-06-29 13:42:23', 0, 1, 0, 71),
(79, '2021-07-01 08:23:19', 0, 1, 0, 51),
(80, '2021-07-01 08:29:44', 0, 1, 0, 0),
(81, '2021-07-27 13:30:58', 0, 2, 0, 221),
(82, '2022-08-22 17:04:12', 0, 2, 0, 0),
(83, '2022-08-22 17:05:17', 0, 2, 0, 0),
(84, '2022-08-22 17:05:45', 0, 2, 0, 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_produto`
--

CREATE TABLE `venda_produto` (
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `qtd` float NOT NULL,
  `valor_unit` float NOT NULL,
  `valor_calc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda_produto`
--

INSERT INTO `venda_produto` (`id_venda`, `id_produto`, `qtd`, `valor_unit`, `valor_calc`) VALUES
(56, 1, 2, 15, 30),
(56, 2, 3, 40, 120),
(56, 3, 6, 20, 120),
(58, 1, 3, 15, 45),
(58, 2, 2, 40, 80),
(60, 1, 2, 15, 30),
(60, 2, 3, 40, 120),
(61, 3, 2, 20, 40),
(62, 1, 4, 15, 60),
(62, 3, 1, 20, 20),
(62, 2, 1, 40, 40),
(62, 4, 2, 7, 14),
(65, 1, 2, 15, 30),
(65, 2, 3, 40, 120),
(65, 4, 1, 7, 7),
(65, 4, 1, 7, 7),
(66, 1, 2, 15, 30),
(66, 4, 3, 7, 21),
(67, 1, 3, 15, 45),
(67, 2, 2, 40, 80),
(67, 4, 6, 7, 42),
(70, 1, 2, 15, 30),
(70, 1, 2, 15, 30),
(70, 2, 1, 40, 40),
(70, 2, 2, 40, 60),
(70, 1, 2, 15, 22.5),
(70, 1, 1, 15, 15),
(71, 1, 1, 15, 15),
(72, 2, 1, 40, 40),
(72, 1, 2, 15, 22.5),
(72, 1, 2, 15, 22.5),
(72, 2, 1, 40, 48),
(72, 1, 1.5, 15, 22.5),
(72, 2, 0.5, 40, 20),
(73, 1, 2, 15, 30),
(73, 2, 1.5, 40, 60),
(73, 4, 2, 7, 14),
(73, 4, 1, 7, 7),
(74, 1, 3, 15, 45),
(74, 3, 1, 20, 20),
(76, 1, 4, 15, 60),
(77, 3, 4, 20, 80),
(77, 4, 1, 7, 7),
(77, 4, 1, 7, 7),
(78, 1, 2, 15, 30),
(78, 4, 3, 7, 21),
(78, 3, 1, 20, 20),
(79, 1, 2, 15, 30),
(79, 4, 1, 7, 7),
(79, 4, 2, 7, 14),
(81, 4, 3, 7, 21),
(81, 2, 5, 40, 200),
(84, 1, 2, 15, 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `status` varchar(20) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`id`, `login`, `nome`, `status`, `senha`) VALUES
(1, 'rodri', 'Rodrgio', 'ATIVO', '123'),
(2, 'joao', 'joao', 'ATIVO', '12');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
