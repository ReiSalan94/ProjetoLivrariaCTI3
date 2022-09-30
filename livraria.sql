-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 01-Out-2022 às 01:46
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `codigo_editora` int(11) DEFAULT NULL,
  `nome_editora` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`codigo_editora`, `nome_editora`) VALUES
(1, 'Viena'),
(2, 'Livro Bom'),
(3, 'Leiba Bem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `cod_genero` int(11) DEFAULT NULL,
  `nome_genero` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`cod_genero`, `nome_genero`) VALUES
(1, 'Biografias'),
(2, 'Literatura'),
(3, 'Autoajuda'),
(4, 'Didático'),
(5, 'Quadrinhos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(120) DEFAULT NULL,
  `autor` varchar(120) DEFAULT NULL,
  `Editora` varchar(120) DEFAULT NULL,
  `genero` varchar(120) DEFAULT NULL,
  `subgenero` varchar(120) DEFAULT NULL,
  `resumo` varchar(120) DEFAULT NULL,
  `preco` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subgeneros`
--

CREATE TABLE `subgeneros` (
  `cod` int(11) DEFAULT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `codigogenero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `subgeneros`
--

INSERT INTO `subgeneros` (`cod`, `nome`, `codigogenero`) VALUES
(1, 'História', 4),
(2, 'Matemática', 4),
(3, 'Literatura Infantojuvenil', 2),
(1, 'História', 4),
(2, 'Matemática', 4),
(3, 'Literatura Infantojuvenil', 2),
(4, 'Literatura Brasileira', 2),
(5, 'Literatura Estrangeira', 2),
(6, 'Mangá', 5),
(7, 'Gibi', 5),
(8, 'Autobiografia', 1),
(9, 'Combater Ansiedade', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
