<?php

require "./Models/produto.php";

header("Access-Control-Allow-Origin:*");    // Permite que outras aplicações acessem a api
header("Content-type: application/json");   //Indicação de arquivo JSON 

$produto = produto::getAll();

echo json_encode($produto);