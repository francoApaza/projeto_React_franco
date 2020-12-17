<?php

require "./Models/pedidos.php";

$pedidos = new pedidos;
$pedidos->cliente = $_POST['cliente'];
$pedidos->endereco = $_POST['endereco'];
$pedidos->nome_do_produto = $_POST['nome_do_produto'];
$pedidos->valor_unitario = $_POST['valor_unitario'];
$dedidos->quantidade = $_POST['quantidade'];
$dedidos->valor_total = $_POST['valor_total'];

$validate = $pedidos->registrandoPedidos();

if ($validate == true) {
    echo json_encode(true);
} else {
    echo json_encode(false);
}
