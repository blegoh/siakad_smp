<?php

class blegohConn{
    
    private $database;
    private $query;
    
    public get($table){
        $this->query = "select * from $table";
        
    }
}

?>