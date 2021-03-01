-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01-Mar-2021 às 04:18
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `engenharia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `login_admin` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `pass_admin` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

DROP TABLE IF EXISTS `arquivos`;
CREATE TABLE IF NOT EXISTS `arquivos` (
  `id_arquivo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_arquivo` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link_arquivo` varchar(150) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_arquivo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome_disciplina` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `prof_disciplina` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `hora_disciplina` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `dia_disciplina` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `periodo_disciplina` int(11) NOT NULL,
  `link_disciplina` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_disciplina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `provas`
--

DROP TABLE IF EXISTS `provas`;
CREATE TABLE IF NOT EXISTS `provas` (
  `id_prova` int(11) NOT NULL AUTO_INCREMENT,
  `nome_prova` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `data_prova` date NOT NULL,
  `data_aviso_prova` date NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_prova`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nome_user` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `login_user` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `pass_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `whatsapp_user` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id_user`, `nome_user`, `login_user`, `pass_user`, `whatsapp_user`) VALUES
(1, 'Pablo', 'pablo', '123', '38988980122');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_disc`
--

DROP TABLE IF EXISTS `user_disc`;
CREATE TABLE IF NOT EXISTS `user_disc` (
  `id_relacao_ud` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_relacao_ud`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
