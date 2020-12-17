<?php

require_once "./Connection.php";

class Pedidos
{
    public $cliente;
    public $endereco;
    public $tel;
    public $nome_do_produto;
    public $valor_unitario;
    public $quantidade;
    public $valor_total;

    public static function getAll()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("SELECT * FROM pedidos");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function registrandoPedidos()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("INSERT INTO pedidos (cliente, endereco, tel, nome_do_produto, valor_unitario, quantidade,valor_total ) values 
        
        ('$this->cliente', '$this->endereco', '$this->tel', '$this->nome_do_produto', '$this->valor_unitario', '$this->quantidade', '$this->valor_total')");                      
        
        if ($stmt->rowCount() > 0) {
            return true;
        } else {
            return false;
        }  
    }
}

    $pedidosCliente = new Pedidos;
    $pedidosCliente->cliente = $_POST['cliente'];
    $pedidosCliente->endereco = $_POST['endereco'];
    $pedidosCliente->tel = $_POST['tel'];
    $pedidosCliente->nome_do_produto = $_POST['nome_do_produto'];
    $pedidosCliente->valor_unitario = $_POST['valor_unitario'];
    $pedidosCliente->quantidade = $_POST['quantidade'];
    $pedidosCliente->valor_total=(($_POST['valor_unitario'])*($_POST['quantidade']));

    $validar = $pedidosCliente->registrandoPedidos();

    if ($validar == true) {
        echo json_encode(true);
    } else {
        echo json_encode(false);
    }


