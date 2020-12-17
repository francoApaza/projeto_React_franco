-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Dez-2020 às 08:17
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(150) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `tel` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='dados do cliente';

--


-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `msg`, `data`) VALUES
(0, 'creuza', 'teste', '0000-00-00 00:00:00'),
(0, 'frans', 'dffffhgfds', '2020-12-16 00:34:30'),
(0, 'ASEF', 'ASDF', '2020-12-17 01:49:24'),
(0, 'frans', 'teste antes de enviar', '0000-00-00 00:00:00'),
(0, 'frans', 'testando\r\n', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `cliente` varchar(11) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `nome_do_produto` varchar(45) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`cliente`, `endereco`, `tel`, `nome_do_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
('0', '', '', '', '0.00', 0, '0.00'),
('Paulo', 'R. José Margarido, 72 - Santana', '1111-2222', 'Geladeira Electrolux Infinity DF8 2 Frost Fre', '3999.00', 1, '3999.00'),
('Carlitos', 'R. Prof. Filadelfo Azevedo, 180 - Vila Nova C', '2121-3232', 'Lava-louças pra família pequena Facilite ', '11999.00', 1, '11999.00'),
('Clauditea', 'R. Minas Gerais, 104-168 - Higienópolis', '2211-3421', 'Lava & Seca Samsung WD4000', '3999.00', 1, '3999.00'),
('Maria da SI', 'Rua Paula Ney, 2-88 - Vila Mariana São Paulo ', '2222-32323', 'Fogão de Piso 4 Bocas Esmaltec', '2299.00', 1, '2299.00'),
('Ana ', 'R. José Paulino, 913 - Bom Retiro', '2222-3333', 'Geladeira personalizada free Side inverse 540', '5019.00', 1, '5019.00'),
('João da sil', 'R. Reims, 96-118 - Jardim das Laranjeiras', '3332-2233', 'Lavadora de Roupas Philco Inverter 12KG', '5019.00', 1, '5019.00'),
('Carlos Andr', 'R. Caetano Pinto, 135-13 - Brás', '3333-65678', 'Geladeira Consul Frost Free Duplex 405 litros', '4999.00', 1, '4999.00'),
('Beatriz ', 'Rua Juca Floriano, 443 - Casa Verde Média', '5555-4443', 'Fogão 5 Bocas Electrolux Prata', '3019.00', 1, '3019.00'),
('Neymar', 'Rua Otávio Tarquínio de Sousa, 1535-1399 - Ca', '6565-5656', 'Electrolux Lava-Louças Inox 14 Serviços', '3899.00', 1, '3899.00'),
('Mayra', 'R. Me. Emilie de Villeneuve, 204 - Vila Santa', '7878-8787', 'Micro-ondas MORPHY RICHARDS 20 L', '3999.00', 1, '3999.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira personalizada free Side inverse 540', '6399.00', '5019.00', 'geladeira_personalizada.jpg'),
(2, 'geladeira', 'Geladeira Electrolux Infinity DF8 2 Frost Fre', '4500.00', '3999.00', 'geladeira_electrolux.jpg'),
(3, 'geladeira', 'Geladeira Consul Frost Free Duplex 405 litros', '5500.00', '4999.00', 'geladeira_consul.jpg'),
(4, 'fogao', 'Fogão de Piso 4 Bocas Esmaltec Preto, Acendim', '2500.00', '2299.00', 'fogao_esmaltec.jpg'),
(5, 'fogao', 'Fogão 5 Bocas Electrolux Prata Automático com', '4399.00', '3019.00', 'fogao_electrolux.jpg'),
(6, 'lavadora', 'Lavadora de Roupas Philco Inverter 12KG PLR12', '6399.00', '5019.00', 'lavadoura_philco.jpg'),
(7, 'lavadora', 'Lava & Seca Samsung WD4000 de 10.2kg', '4500.00', '3999.00', 'lavadoura_samsung.jpg'),
(8, 'lava-louca', 'Lava-louças pra família pequena Facilite sua ', '12300.00', '11999.00', 'lava_louca_facilite.jpg'),
(9, 'lava-louca', 'Electrolux Lava-Louças Inox 14 Serviços (LV14', '5500.00', '3899.00', 'lava_louca_electrolux.jpg'),
(10, 'micro-ondas', 'Micro-ondas MORPHY RICHARDS 20 L', '4500.00', '3999.00', 'micro_ondas_morphy.jpg'),
(11, 'micro-ondas', 'Micro-ondas Electrolux 27 L , Função Tira Odo', '3500.00', '2999.00', 'micro_ondas_electrolux.jpg'),
(12, 'micro-ondas', 'Micro-ondas Philco 30 Litros PME31', '4900.00', '4399.00', 'micro_ondas_philco.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `spedidos`
--

CREATE TABLE `spedidos` (
  `idpedidos` int(11) NOT NULL,
  `clientep` varchar(150) NOT NULL,
  `nome_do_produto` varchar(45) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spedidos`
--

INSERT INTO `spedidos` (`idpedidos`, `clientep`, `nome_do_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(1, '', '', '0.00', 0, '0.00'),
(2, '', '', '0.00', 0, '0.00'),
(3, '', '', '0.00', 0, '0.00'),
(4, '', '', '0.00', 0, '0.00'),
(5, '', '', '0.00', 0, '0.00'),
(6, '', '', '0.00', 0, '0.00'),
(7, '', '', '1223.00', 4, '4892.00'),
(8, '', '', '122.00', 2, '244.00'),
(9, 'la', 'Fogão 2', '122.00', 2, '244.00'),
(10, 'frans', '', '1223.00', 7, '8561.00'),
(11, 'frans', 'Geladeira 2', '1223.00', 8, '9784.00'),
(12, 'frans', 'Lavadora de roupas 1', '122.00', 2, '244.00'),
(13, 'frans', 'Lavadora de roupas 1', '122.00', 2, '244.00'),
(14, 'frdey', 'Geladeira 3', '345.00', 3, '1035.00'),
(15, 'bia', 'Geladeira 1', '888.00', 2, '1776.00'),
(16, '', '', '0.00', 0, '0.00'),
(17, 'frans', 'Micro-ondas 2', '122.00', 8, '976.00'),
(18, 'frans', 'Geladeira 1', '1223.00', 2, '2446.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD UNIQUE KEY `tel_UNIQUE` (`tel`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD UNIQUE KEY `imagem` (`imagem`) USING BTREE;

--
-- Índices para tabela `spedidos`
--
ALTER TABLE `spedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `spedidos`
--
ALTER TABLE `spedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
