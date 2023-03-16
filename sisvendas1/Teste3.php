<?php
    class Buscador{
        public $um_array = [];
        public function buscar($nome){
            if (array_search($nome, $this->um_array)){
                echo $nome. " (V); " ;
            }else{
                echo $nome. " (F); " ;
            }
        }
    }

    $b = new Buscador();
    $b->um_array = array('Maria', 'Joana', 'Telma');

    $b->buscar('Joana');
    $b->buscar('Joelma');
    $b->buscar('Telma');
    $b->buscar('TelmaJoana');
?>