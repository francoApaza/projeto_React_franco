<?php

require "./Models/comentarios.php";

header("Access-Control-Allow-Origin:*");    // Permite que outras aplicações acessem a api
header("Content-type: application/json");   //Indicação de arquivo JSON 

$comentarios = comentarios::getAll();

echo json_encode($comentarios);