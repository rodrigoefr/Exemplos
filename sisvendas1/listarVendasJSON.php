<?php
  include ("DAO\config_bd.php");
  include ("DAO\DAO.php");
  include ("DAO\Venda.php");
  include ("DAO\VendedorDAO.php");

  $id_vendedor = $_GET["id"];

  //echo "ID Vendedor: " . $id_vendedor . '<BR>';

  $vendedorDAO = new VendedorDAO();
  $vendas = $vendedorDAO->getVendas($id_vendedor);

  $vv = Array (  );

  foreach ($vendas as $venda) {
    $v =  Array(  "id" =>  $venda->id,
                  "valor" => $venda->valor);
    
    //      echo "<h1>ID Venda:". $venda->id . "; Valor: " . $venda->valor . '</h1><BR>';
    array_push($vv, $v);
  }    

 // encode array to json
$j  son = json_encode($vv);
//display it 
echo "$json";
//generate json file
file_put_contents("geeks_data.json", $json);

?>