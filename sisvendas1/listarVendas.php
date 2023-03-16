<?php
  include ("DAO\config_bd.php");
  include ("DAO\DAO.php");
  include ("DAO\Venda.php");
  include ("DAO\VendedorDAO.php");

  $id_vendedor = $_POST["id"];

  echo "ID Vendedor: " . $id_vendedor . '<BR>';

  $vendedorDAO = new VendedorDAO();
  $vendas = $vendedorDAO->getVendas($id_vendedor);

  foreach ($vendas as $venda) {
      echo "<h1>ID Venda:". $venda->id . "; Valor: " . $venda->valor . '</h1><BR>';
  }    

  $vendas = $vendedorDAO->getSomaVendas($id_vendedor);

  echo "Soma: ". $vendas;
?>