

--
-- Banco de dados: `livraria`
--

CREATE database livraria;
-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `codigo_editora` int(11) NOT NULL,
  `nome_editora` text 
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `nome_genero` text,
  `codigo_genero` int(11) NOT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codigo_livro` int(11) NOT NULL,
  `titulo_livro` varchar(120),
  `autor_livro` varchar(120),
  `cod_editora` int(11),
  `cod_genero` int(11),
  `cod_subgenero` int(11),
  `resumo` text,
  `texto` float 
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subgenero`
--

CREATE TABLE `subgenero` (
  `codigo_subgenero` int(11) NOT NULL,
  `nome_subgenero` text,
  `cod_genero_pertencente` int(11) 
);
