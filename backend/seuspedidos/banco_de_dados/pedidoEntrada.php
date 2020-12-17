<?php
    require_once "../Connect/getRetorno.php";
        
    $result = query('SELECT cliente, endereco, tel, nome_do_produto, valor_unitario, quantidade, valor_total FROM fseletro.clientes
	inner join spedidos on clientep=cliente
    order by idpedidos desc limit 1');
    $pc=[];

    while($row = mysqli_FETCH_ASSOC($result)){
        $pc[]=$row;
    }
            
            
    header("Access-Control-Allow-Origin: *");
    // header("Content-type: application/json");
    echo json_encode($pc);
    
?>