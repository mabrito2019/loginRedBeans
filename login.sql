-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Set-2022 às 17:46
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `logsistema`
--

CREATE TABLE `logsistema` (
  `id` int(4) NOT NULL,
  `login` varchar(20) NOT NULL,
  `acao` text DEFAULT NULL,
  `data` datetime(6) NOT NULL,
  `nome` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `logsistema`
--

INSERT INTO `logsistema` (`id`, `login`, `acao`, `data`, `nome`) VALUES
(5, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-17 17:28:56.000000', NULL),
(6, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-17 17:32:34.000000', NULL),
(7, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-17 17:32:41.000000', NULL),
(8, 'Administrador', 'Entrou na tela inicial index.php', '2022-08-17 17:32:46.000000', NULL),
(9, 'Administrador', 'Entrou na tela inicial index.php', '2022-08-17 17:47:07.000000', NULL),
(10, '', 'Entrou na tela de cadastro cadastro.php', '2022-08-17 17:47:09.000000', NULL),
(11, '', 'Entrou na tela de cadastro cadastro.php', '2022-08-17 17:50:43.000000', NULL),
(12, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-17 17:50:56.000000', NULL),
(13, '', 'Entrou na tela de cadastro cadastro.php', '2022-08-17 17:51:12.000000', NULL),
(14, '', 'Entrou na tela de cadastro cadastro.php', '2022-08-17 17:53:17.000000', NULL),
(15, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 15:41:50.000000', NULL),
(16, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 15:59:16.000000', NULL),
(17, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 16:09:05.000000', NULL),
(18, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 16:16:40.000000', NULL),
(19, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 17:49:20.000000', NULL),
(20, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 17:51:19.000000', NULL),
(21, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 17:51:25.000000', NULL),
(22, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 17:54:34.000000', NULL),
(23, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-19 17:57:06.000000', NULL),
(24, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-22 16:18:38.000000', NULL),
(25, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-22 16:18:38.000000', NULL),
(26, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-22 16:20:16.000000', NULL),
(27, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-22 16:20:20.000000', NULL),
(28, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-26 14:13:40.000000', NULL),
(29, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-26 17:06:04.000000', NULL),
(30, 'Marcos', 'Entrou na tela inicial index.php', '2022-08-26 17:06:33.000000', NULL),
(31, 'Marcos', 'Entrou na tela inicial index.php', '2022-09-01 14:19:29.000000', NULL),
(32, 'Marcos', 'Entrou na tela inicial index.php', '2022-09-01 14:23:57.000000', NULL),
(33, 'Marcos', 'Entrou na tela inicial index.php', '2022-09-01 14:35:33.000000', NULL),
(34, 'Marcos', 'Entrou na tela inicial index.php', '2022-09-01 14:35:43.000000', NULL),
(35, 'Marcos', 'Entrou na tela inicial index.php', '2022-09-01 14:35:44.000000', NULL),
(36, 'Marcos', 'Fez login', '2022-09-01 14:54:07.000000', NULL),
(37, 'mabrito', 'Fez login', '2022-09-01 14:56:37.000000', NULL),
(38, '', 'Entrou na tela de cadastro cadastro.php', '2022-09-01 14:58:29.000000', NULL),
(39, '', 'Entrou na tela de cadastro cadastro.php', '2022-09-01 15:01:32.000000', NULL),
(40, 'mabrito', 'Fez login', '2022-09-01 15:44:45.000000', NULL),
(41, 'mabrito', 'Fez login', '2022-09-01 16:08:14.000000', NULL),
(42, '', 'Fez login', '2022-09-01 16:48:48.000000', NULL),
(43, 'mabrito', 'Cadastrou um novo usuário Novinho com o login novo', '2022-09-01 16:52:04.000000', NULL),
(44, 'mabrito', 'Fez login', '2022-09-01 17:22:21.000000', NULL),
(45, 'mabrito', 'Fez login', '2022-09-01 17:22:57.000000', NULL),
(46, 'mabrito', 'Fez login', '2022-09-01 17:33:12.000000', NULL),
(47, 'mabrito', 'Fez login', '2022-09-01 17:41:18.000000', NULL),
(48, 'mabrito', 'Fez login', '2022-09-02 16:00:12.000000', NULL),
(49, 'mabrito', 'Fez login', '2022-09-02 16:01:47.000000', NULL),
(50, 'mabrito', 'Fez login', '2022-09-02 16:01:48.000000', NULL),
(51, 'mabrito', 'Fez login', '2022-09-02 16:02:26.000000', NULL),
(52, 'mabrito', 'Fez login', '2022-09-13 15:23:08.000000', NULL),
(53, 'mabrito', 'Fez login', '2022-09-13 15:24:22.000000', NULL),
(54, 'mabrito', 'Fez login', '2022-09-13 15:25:34.000000', NULL),
(55, 'mabrito', 'Fez login', '2022-09-13 15:25:39.000000', NULL),
(56, 'mabrito', 'Fez login', '2022-09-13 15:25:41.000000', NULL),
(57, 'mabrito', 'Fez login', '2022-09-13 15:26:39.000000', NULL),
(58, 'mabrito', 'Fez login', '2022-09-13 15:26:43.000000', NULL),
(59, 'mabrito', 'Fez login', '2022-09-13 15:27:48.000000', NULL),
(60, 'mabrito', 'Fez login', '2022-09-13 15:27:53.000000', NULL),
(61, 'mabrito', 'Fez login', '2022-09-13 15:28:08.000000', NULL),
(62, 'mabrito', 'Fez login', '2022-09-13 15:30:36.000000', NULL),
(63, 'mabrito', 'Fez login', '2022-09-13 15:30:55.000000', NULL),
(64, 'mabrito', 'Fez login', '2022-09-13 15:30:57.000000', NULL),
(65, 'mabrito', 'Fez login', '2022-09-13 15:31:08.000000', NULL),
(66, 'mabrito', 'Fez login', '2022-09-13 16:11:22.000000', NULL),
(67, 'mabrito', 'Fez login', '2022-09-13 17:37:51.000000', NULL),
(68, 'mabrito', 'Fez login', '2022-09-13 17:38:04.000000', NULL),
(69, 'mabrito', 'Fez login', '2022-09-13 17:38:15.000000', NULL),
(70, 'mabrito', 'Fez login', '2022-09-14 13:21:51.000000', NULL),
(71, 'mabrito', 'Fez login', '2022-09-15 14:59:30.000000', NULL),
(72, 'mabrito', 'Fez login', '2022-09-15 16:42:20.000000', NULL),
(73, 'mabrito', 'Fez login', '2022-09-15 16:44:15.000000', NULL),
(74, 'mabrito', 'Fez login', '2022-09-15 17:02:42.000000', NULL),
(75, 'mabrito', 'Fez login', '2022-09-15 17:37:34.000000', NULL),
(76, 'mabrito', 'Cadastrou um novo usuário hty com o login mabr', '2022-09-15 17:40:08.000000', NULL),
(77, 'mabrito', 'Fez login', '2022-09-16 14:40:16.000000', NULL),
(78, 'mabrito', 'Fez login', '2022-09-19 14:50:09.000000', NULL),
(79, 'mabrito', 'Fez login', '2022-09-19 17:49:11.000000', NULL),
(80, 'mabrito', 'Fez login', '2022-09-20 14:02:09.000000', NULL),
(81, 'mabrito', 'Cadastrou um novo Produto Ranger Vermelho', '2022-09-20 14:15:56.000000', NULL),
(82, 'mabrito', 'Cadastrou um novo Produto Ranger Verde', '2022-09-20 14:17:24.000000', NULL),
(83, 'mabrito', 'Cadastrou um novo Produto ', '2022-09-20 14:17:47.000000', NULL),
(84, 'mabrito', 'Cadastrou um novo Produto Ranger Azul', '2022-09-20 14:19:37.000000', NULL),
(85, 'mabrito', 'Fez login', '2022-09-20 17:22:21.000000', NULL),
(86, 'mabrito', 'Fez login', '2022-09-21 14:59:16.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacao`
--

CREATE TABLE `movimentacao` (
  `codigo_produto` int(4) NOT NULL,
  `produto` varchar(20) NOT NULL,
  `tipo_documento` varchar(5) DEFAULT NULL,
  `id` int(10) NOT NULL,
  `data` date NOT NULL,
  `login` varchar(20) NOT NULL,
  `acao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacao`
--

INSERT INTO `movimentacao` (`codigo_produto`, `produto`, `tipo_documento`, `id`, `data`, `login`, `acao`) VALUES
(0, 'Ranger Amarelo', NULL, 1, '2022-09-20', 'mabrito', 'Cadastrou um novo Produto Rang'),
(0, 'Ranger Violeta', NULL, 2, '2022-09-20', 'mabrito', 'Cadastrou um novo Produto Ranger Violeta'),
(0, 'Batman', NULL, 3, '2022-09-20', 'mabrito', 'Cadastrou um novo Produto Batman'),
(14, 'Super Man', NULL, 4, '2022-09-20', 'mabrito', 'Cadastrou um novo Produto Super Man'),
(15, 'Cubo Magico', NULL, 5, '2022-09-21', 'mabrito', 'Cadastrou um novo Produto Cubo Magico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `preco` float NOT NULL,
  `unidade` varchar(4) NOT NULL,
  `quantidade` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `descricao`, `preco`, `unidade`, `quantidade`) VALUES
(1, 'carrinho de Brinqued', 15, 'un', 10),
(2, 'Boneco', 9, 'un', 25),
(3, 'arduino', 15, 'un', 20),
(4, 'mega mente', 25, 'un', 50),
(5, 'Ranger Vermelho', 15, 'un', 15),
(6, 'Ranger Verde', 15, 'un', 15),
(7, 'Ranger Azul', 15, 'un', 15),
(8, 'Ranger Branco', 15, 'un', 15),
(9, 'Ranger Preto', 15, 'un', 15),
(10, 'Ranger Rosa', 15, 'un', 15),
(11, 'Ranger Amarelo', 15, 'un', 14),
(12, 'Ranger Violeta', 15, 'un', 14),
(13, 'Batman', 50, 'un', 5),
(14, 'Super Man', 49, 'un', 7),
(15, 'Cubo Magico', 50, 'un', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` decimal(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Marcos', 'mabrito', '1234'),
(2, 'Administrador', 'admin', '1234'),
(15, 'Marcos', 'ma', '1234'),
(16, 'Thiago', 'tiginho', '1234'),
(17, 'Thiago', 'tiaguinho', '1234'),
(18, 'Novinho', 'novo', '123456'),
(19, 'hty', 'mabr', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `logsistema`
--
ALTER TABLE `logsistema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movimentacao`
--
ALTER TABLE `movimentacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `logsistema`
--
ALTER TABLE `logsistema`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de tabela `movimentacao`
--
ALTER TABLE `movimentacao`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
