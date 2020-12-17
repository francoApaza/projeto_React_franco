
Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT now(),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- Estrutura da tabela `comentarios`
-- --

-- CREATE TABLE `comentarios` (
--   `id` int(11) NOT NULL,
--   `nome` varchar(100) DEFAULT NULL,
--   `msg` varchar(300) DEFAULT NULL,
--   `data` datetime DEFAULT current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
