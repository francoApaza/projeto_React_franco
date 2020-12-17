<?php

require "./Models/produto.php";

$produto = new produto;
$produto->categoria = $_POST['categoria'];
$produto->descricao = $_POST['descricao'];
$produto->preco = $_POST['preco'];
$produto->precofinal = $_POST['precofinal'];
$produto->imagem = $_POST['imagem'];

$validate = $produto->registerproduto();

if ($validate == true) {
    echo json_encode(true);
} else {
    echo json_encode(false);
}
