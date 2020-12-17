

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
(1, 'frans', 'teste', '2020-11-03 20:39:11'),
(2, 'frans', 'teste', '2020-11-03 20:55:23'),
(3, 'frans', 'teste', '2020-11-03 20:55:38'),
(4, 'lala', 'teste2', '2020-11-03 20:56:00'),
(5, 'luisa', 'teste3', '2020-11-03 20:59:33'),
(6, 'lena', 'redação', '2020-11-03 21:04:59');
