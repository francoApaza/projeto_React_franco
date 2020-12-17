<?php
    require_once "./index.php";

    $result = query('SELECT * FROM pedidos');
    $pc=[];

    while($row=mysqli_fetch_assoc($result)){
        $pc[]=$row;
    }


    header("Access-Control-Allow-Origin: *");
    //header("Content-type: application/json");
    echo json_encode($pc);

?>