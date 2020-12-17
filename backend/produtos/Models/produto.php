<?php

require "Connection.php";

class produto
{
    public $idprodutos;
    public $categoria;
    public $descricao;
    public $preco;
    public $precofinal;
    public $imagem;



    public static function getAll()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("SELECT * FROM produto");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function registerproduto()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("INSERT INTO produto (categria, descricao, preco, precofinal, imagem) values ('$this->categoria', '$this->descricao', '$this->preco', '$this->precofinal', '$this->imagem')");                      
        
        if ($stmt->rowCount() > 0) {
            return true;
        } else {
            return false;
        }
    }
}