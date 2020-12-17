<?php
    require_once "../Connect/getContent.php";
    class Pedidosc {

        public $cliente; 
        public $endereco; 
        public $tel; 
        public $nome_do_produto;
        public $valor_unitario;  
        public $quantidade;
        public $valor_total;
      
        
        public function controleEnvio()
        {
            $conn = Connection::getDb();
            $inserirDados = $conn->query("INSERT INTO clientes (cliente, endereco, tel) VALUES ('$this->cliente', '$this->endereco', '$this->tel')");    

            $inserirDados2 = $conn->query("INSERT INTO spedidos (clientep, nome_do_produto, valor_unitario, quantidade, valor_total) VALUES ('$this->cliente', '$this->nome_do_produto', '$this->valor_unitario', '$this->quantidade', '$this->valor_total')");                      
            
            if (($inserirDados->rowCount() > 0) && ($inserirDados2->rowCount() > 0)) {
                return true;
            } else {
                return false;
            }
        }
    }
    

    $pedidosCliente = new Pedidosc;
    $pedidosCliente->cliente = $_POST['cliente'];
    $pedidosCliente->endereco = $_POST['endereco'];
    $pedidosCliente->tel = $_POST['tel'];
    $pedidosCliente->nome_do_produto = $_POST['nome_do_produto'];
    $pedidosCliente->valor_unitario = $_POST['valor_unitario'];
    $pedidosCliente->quantidade = $_POST['quantidade'];
    $pedidosCliente->valor_total=(($_POST['valor_unitario'])*($_POST['quantidade']));

    $validar = $pedidosCliente->controleEnvio();
    
    if ($validar == true) {
        echo json_encode(true);
    } else {
        echo json_encode(false);
    }

    // header("Access-Control-Allow-Origin: *");
    // header("Content-type: application/json");
    
?>