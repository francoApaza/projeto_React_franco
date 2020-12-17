<?php

require "./Models/comentarios.php";

$comentarios = new comentarios;
$comentarios->nome = $_POST['nome'];
$comentarios->msg = $_POST['msg'];
// $comentarios->data = $_POST['data'];

$validate = $comentarios->registercomentarios();

if ($validate == true) {
    echo json_encode(true);
} else {
    echo json_encode(false);
}
