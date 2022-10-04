-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Set-2022 às 17:28
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
-- Banco de dados: `tcc`
--
CREATE DATABASE IF NOT EXISTS `tcc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tcc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_adm`
--

CREATE TABLE `tb_adm` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_adm`
--

INSERT INTO `tb_adm` (`id`, `nome`, `usuario`, `email`, `senha`) VALUES
(1, 'Ana Julia', 'anajulia', 'anajuliafagundes@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cadastro`
--

CREATE TABLE `tb_cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `cidade` varchar(15) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `rua` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cadastrocliente`
--

CREATE TABLE `tb_cadastrocliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nascimento` text NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `estado` char(2) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_cadastrocliente`
--

INSERT INTO `tb_cadastrocliente` (`id`, `nome`, `nascimento`, `cpf`, `telefone`, `endereco`, `cep`, `estado`, `email`, `senha`) VALUES
(1, 'Beatriz Marins', '30032005', '35399874873', '15997707056', 'Jose Benini', '18480000', 'SP', 'biamarinsbielbarbosa@gmail.com', 'deathbimasnote'),
(2, 'Ana Julia Fagundes', '18112004', '123456789', '15996603065', 'Rafael Vitta', '18480000', 'sp', 'anajuliafagundes84@gmail.com', 'chiquititas123'),
(3, 'Eduarda Oliveira', '11082005', '51159250848', '14996408534', 'Joana Alves ', '666', 'SP', 'eduardap.oliveiraw@gmail.com', 'bolsonarodecalsinha'),
(4, 'MARCUS VINICIUS AMARAL RODRIGUES', '31/08/1985', '32215201827', '1437621755', 'RUA MARECHAL FLORIANO PEIXOTO, 484', '18740-00', 'SP', 'marcusrodrigues@etec.sp.gov.br', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoriahigienepessoal`
--

CREATE TABLE `tb_categoriahigienepessoal` (
  `id` int(11) NOT NULL,
  `produto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_categoriahigienepessoal`
--

INSERT INTO `tb_categoriahigienepessoal` (`id`, `produto`) VALUES
(1, 'Sabonete Barra'),
(2, 'Sabonete Barra BABY'),
(3, 'Sabonete Liquido'),
(4, 'Creme Dental');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoriaperfumaria`
--

CREATE TABLE `tb_categoriaperfumaria` (
  `id` int(11) NOT NULL,
  `produto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_categoriaperfumaria`
--

INSERT INTO `tb_categoriaperfumaria` (`id`, `produto`) VALUES
(1, 'Shampoo'),
(2, 'Condicionador'),
(3, 'Shampoo e Condicionador'),
(4, 'Antitranspirante'),
(5, 'Creme Facial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_higienepessoal`
--

CREATE TABLE `tb_higienepessoal` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `marca` varchar(255) NOT NULL,
  `validade` date NOT NULL,
  `fabricacao` date NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `categoria` char(2) NOT NULL,
  `kit` char(3) DEFAULT NULL,
  `apresentacao` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_higienepessoal`
--

INSERT INTO `tb_higienepessoal` (`id`, `nome`, `subtitulo`, `marca`, `validade`, `fabricacao`, `descricao`, `categoria`, `kit`, `apresentacao`, `preco`) VALUES
(1, 'Protex', 'Limpeza Profunda', 'Protex', '2026-06-13', '2022-05-13', NULL, '1', NULL, 'Barra: 85g', '2.80'),
(2, 'Protex', 'Nutri Protect', 'Protex', '2026-06-13', '2022-05-20', NULL, '1', NULL, 'Barra: 85g', '2.95'),
(3, 'Protex', 'Aveia', 'Protex', '2026-06-13', '2022-05-20', NULL, '1', NULL, 'Barra: 85g', '2.50'),
(4, 'Protex Baby', 'Suave/Sem corante e parabenos', 'Protex', '2026-06-13', '2022-05-14', NULL, '2', NULL, 'Barra: 85g', '3.15'),
(5, 'Protex', 'Duo Protect', 'Protex', '2026-06-13', '2022-05-20', NULL, '1', 'SIM', 'Barra/uni: 85g', '17.99'),
(6, 'Protex', 'Delicate Care', 'Protex', '2026-07-15', '2022-06-20', 'Cuidado Intimo', '3', NULL, 'Liquido: 200mL', '15.20'),
(7, 'Protex', 'Fresh Equilibrium', 'Protex', '2026-08-15', '0000-00-00', 'Cuidado Intimo', '3', NULL, 'Liquido: 200mL', '16.20'),
(8, 'Protex', 'Calm & Protect', 'Protex', '2026-09-15', '2022-06-20', 'Cuidado Intimo', '3', NULL, 'Liquido: 200mL', '16.80'),
(9, 'Creme Dental', 'Triple Hortelã', 'Clouse Up', '2025-07-04', '2022-08-04', NULL, '4', NULL, 'Uni: 70g', '2.30'),
(10, 'Creme Dental', 'Proteção Bioativa', 'Clouse Up', '2025-07-04', '2022-08-04', NULL, '4', NULL, 'Uni: 70g', '3.80'),
(11, 'Creme Dental', 'Maxima Proteção Anticaries', 'Colgate', '2025-07-04', '2022-08-04', NULL, '4', NULL, 'Uni: 70g', '4.50'),
(12, 'Creme Dental', 'Luminous White', 'Colgate', '2025-07-04', '2022-08-04', NULL, '4', 'SIM', 'Uni: 70g', '12.50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_medicamentos`
--

CREATE TABLE `tb_medicamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `validade` date NOT NULL,
  `fabricacao` date NOT NULL,
  `apresentacao` varchar(255) NOT NULL,
  `composicao` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `indicacao` char(2) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_medicamentos`
--

INSERT INTO `tb_medicamentos` (`id`, `nome`, `validade`, `fabricacao`, `apresentacao`, `composicao`, `categoria`, `indicacao`, `preco`) VALUES
(1, 'Dorflex', '2024-05-31', '2022-05-31', 'Comprimido: 10 uni', 'Dipirona Monoidratada 300mg, citrato de orfenadrina 35mg, cafeína anidra 50mg', 'Analgesico e relaxando muscular', 'A', '6.85'),
(2, 'Dorflex', '2024-05-31', '2022-06-30', 'Gotas: 20mL', 'Dipirona Monoidratada 300mg, citrato de orfenadrina 35mg, cafeína anidra 50mg', 'Analgesico e relaxando muscular', 'A', '14.80'),
(3, 'Dorflex', '2025-09-18', '2022-05-31', 'Icy Hot Spray: 118mL', 'AEROSOL: Dipirona Monoidratada 300mg, citrato de orfenadrina 35mg, cafeína anidra 50mg', 'Analgesico e relaxando muscular', 'AP', '43.50'),
(4, 'Paracetamol', '2024-07-06', '2022-06-06', 'Gotas: 200mg/mL', '200mg Paracetamol', 'Dor e Febre', 'AP', '2.90'),
(5, 'Paracetamol', '2024-06-06', '2022-05-06', 'Comprimido: 20uni', '750mg Paracetamol', 'Dor e Febre', 'AP', '5.99'),
(6, 'Neosaldina', '2024-06-06', '2022-05-06', 'Gotas: 15mL', 'Dipirona 300mg, Mucato de isometepteno 30mg, cafeína 30mg', 'Analgesico', 'AP', '25.65'),
(7, 'Neosaldina', '2024-06-06', '2022-05-06', 'Comprimido: 20uni', 'Dipirona 300mg, Mucato de isometepteno 30mg, cafeína 30mg', 'Analgesico', 'A', '22.65'),
(8, 'Neosaldina', '2024-06-06', '2022-05-06', 'Comprimido: 4uni', 'Dipirona 300mg, Mucato de isometepteno 30mg, cafeína 30mg', 'Analgesico', 'A', '5.20'),
(9, 'Dipirona', '2024-03-30', '2022-06-06', 'Gotas: 20mL', 'Dipirona 500mg/mL', 'Dor e Febre', 'AP', '5.99'),
(10, 'Dipirona', '2024-03-31', '2022-06-07', 'Comprimido: 10uni', 'Dipirona 500mg/mL', 'Dor e Febre', 'A', '3.99'),
(11, 'Dramin', '2024-04-30', '2022-05-05', 'Gotas: 30mL', 'dimenidrinato 25mg/mL, cloridrato de piridoxina 5mg/mL', 'Enjoo, vômitos ou labirintite', 'AP', '10.00'),
(12, 'Dramin', '2024-04-30', '2022-05-05', 'Comprimido: 10 uni', 'dimenidrinato 50mg/mL, cloridrato de piridoxina 10mg/mL', 'Enjoo, vômitos ou labirintite', 'A', '4.50'),
(13, 'Simeticona', '2024-06-07', '2022-07-06', 'Comprimido: 10 uni', 'Simeticona 125mg', 'Dor abdominal e estufamento', 'A', '8.80'),
(14, 'Simeticona', '2024-06-07', '2022-07-06', 'Gotas: 15mL', 'Simeticona 75mg', 'Dor abdominal e estufamento', 'AP', '10.30'),
(15, 'Histamin', '2025-06-07', '2022-06-06', 'Xarope: 100mL', 'Maleato de dexclorfeniramina 2mg/mL', 'Antialérgico', 'AP', '14.30'),
(16, 'Histamin', '2025-06-07', '2022-06-06', 'Comprimido: 20 uni', 'Maleato de dexclorfeniramina 2mg/mL', 'Antialérgico', 'AP', '9.70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_perfumaria`
--

CREATE TABLE `tb_perfumaria` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `validade` date NOT NULL,
  `fabricacao` date NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `categoria` char(2) NOT NULL,
  `kit` char(3) DEFAULT NULL,
  `apresentacao` varchar(255) NOT NULL,
  `vegano` char(3) DEFAULT NULL,
  `crueltyfree` char(3) DEFAULT NULL,
  `indicacao` char(2) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_perfumaria`
--

INSERT INTO `tb_perfumaria` (`id`, `nome`, `marca`, `validade`, `fabricacao`, `descricao`, `categoria`, `kit`, `apresentacao`, `vegano`, `crueltyfree`, `indicacao`, `preco`) VALUES
(1, 'Écho Xampu', 'Unevie', '2025-03-30', '2022-07-05', 'Shampoo Natural e Vegetal', '1', 'NÃO', 'Barra: 90g', 'SIM', 'SIM', 'A', '15.90'),
(2, 'Elseve', 'LOréal Paris', '2025-03-30', '2022-07-03', 'Shampoo Hidra Preenchedor', '3', 'SIM', 'Liquido: 200mL', NULL, NULL, 'A', '26.80'),
(3, 'Elseve', 'LOréal Paris', '2025-03-30', '2022-07-03', 'Reparação Total 5', '1', 'NÃO', 'Liquido: 200mL', NULL, NULL, 'A', '10.50'),
(4, 'Elseve', 'LOréal Paris', '2025-03-30', '2022-07-03', 'Reparação Total 5', '2', 'NÃO', 'Liquido: 200mL', NULL, NULL, 'A', '12.50'),
(5, 'Antitranspirante FEM', 'Rexona', '2026-05-30', '2022-07-07', 'Power Dry/48h', '4', NULL, 'Aerosol: 150mL', NULL, NULL, 'A', '8.50'),
(6, 'Antitranspirante MEN', 'Rexona', '2026-05-30', '2022-07-07', 'V8', '4', NULL, 'Aerosol: 150mL', NULL, NULL, 'A', '7.50'),
(7, 'Antitranspirante FEM', 'Rexona', '2026-05-30', '2022-07-07', 'Clinical', '4', NULL, 'Roll On: 48g', NULL, NULL, 'A', '20.90'),
(8, 'Antitranspirante MEN', 'Rexona', '2026-05-30', '2022-07-07', 'Antibacterial Fresh Men', '4', NULL, 'Roll On: 50mL', NULL, NULL, 'A', '5.80'),
(9, 'Creme Facial', 'Nivea', '2024-09-25', '2022-08-02', 'Creme Nutritivo 5 em 1', '5', NULL, 'Creme: 100g', NULL, 'SIM', 'A', '31.90'),
(10, 'Creme Facial', 'Nivea', '2024-09-25', '2022-08-02', 'Creme Uniformizador 7 em 1', '5', NULL, 'Creme: 100g', NULL, 'SIM', 'A', '35.90'),
(11, 'Creme Facial', 'Nivea', '2024-09-25', '2022-08-02', 'Creme Antissinais 5 em 1', '5', NULL, 'Creme: 100g', NULL, 'SIM', 'A', '32.50'),
(12, 'Creme Facial', 'Nivea', '2024-09-25', '2022-08-02', 'Creme Noturno', '5', NULL, 'Creme: 100g', NULL, 'SIM', 'A', '33.90');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_testecovid`
--

CREATE TABLE `tb_testecovid` (
  `id` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `validade` date NOT NULL,
  `fabricacao` date NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `apresentacao` varchar(255) NOT NULL,
  `kit` char(3) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_testecovid`
--

INSERT INTO `tb_testecovid` (`id`, `marca`, `validade`, `fabricacao`, `descricao`, `categoria`, `apresentacao`, `kit`, `preco`) VALUES
(1, 'COVID Ag Detect', '2024-08-18', '2022-07-18', 'teste NASAL', 'Autoteste de covid', '1 uni', 'NÃO', '30.90');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_adm`
--
ALTER TABLE `tb_adm`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_cadastrocliente`
--
ALTER TABLE `tb_cadastrocliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_categoriahigienepessoal`
--
ALTER TABLE `tb_categoriahigienepessoal`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_categoriaperfumaria`
--
ALTER TABLE `tb_categoriaperfumaria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_higienepessoal`
--
ALTER TABLE `tb_higienepessoal`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_medicamentos`
--
ALTER TABLE `tb_medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_perfumaria`
--
ALTER TABLE `tb_perfumaria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_testecovid`
--
ALTER TABLE `tb_testecovid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_adm`
--
ALTER TABLE `tb_adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_cadastrocliente`
--
ALTER TABLE `tb_cadastrocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_categoriahigienepessoal`
--
ALTER TABLE `tb_categoriahigienepessoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_categoriaperfumaria`
--
ALTER TABLE `tb_categoriaperfumaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_higienepessoal`
--
ALTER TABLE `tb_higienepessoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_medicamentos`
--
ALTER TABLE `tb_medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_perfumaria`
--
ALTER TABLE `tb_perfumaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_testecovid`
--
ALTER TABLE `tb_testecovid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
