-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Set-2022 às 01:40
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

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
  `codigo_editora` int(11) NOT NULL,
  `nome_editora` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `nome_genero` text DEFAULT NULL,
  `codigo_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codigo_livro` int(11) NOT NULL,
  `titulo_livro` varchar(120) DEFAULT NULL,
  `autor_livro` varchar(120) DEFAULT NULL,
  `cod_editora` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  `cod_subgenero` int(11) DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `texto` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subgenero`
--

CREATE TABLE `subgenero` (
  `codigo_subgenero` int(11) NOT NULL,
  `nome_subgenero` text DEFAULT NULL,
  `cod_genero_pertencente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`codigo_editora`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`codigo_genero`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codigo_livro`);

--
-- Índices para tabela `subgenero`
--
ALTER TABLE `subgenero`
  ADD PRIMARY KEY (`codigo_subgenero`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `codigo_editora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `codigo_genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `codigo_livro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `subgenero`
--
ALTER TABLE `subgenero`
  MODIFY `codigo_subgenero` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
