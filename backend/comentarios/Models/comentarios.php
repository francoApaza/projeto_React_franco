<?php

require "Connection.php";

class comentarios
{
    public $id;
    public $nome;
    public $msg;
    public $data;
   


    public static function getAll()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("SELECT * FROM comentarios");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function registercomentarios()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("INSERT INTO comentarios (nome, msg, data ) values ('$this->nome', '$this->msg', '$this->data' )");                      
        
        if ($stmt->rowCount() > 0) {
            return true;
        } else {
            return false;
        }
    }
}