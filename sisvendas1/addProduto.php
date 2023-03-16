<?php
include ("DAO\config_bd.php");
include ("DAO\DAO.php");
include ("DAO\VendaDAO.php");
include ("DAO\ProdutoDAO.php");
include ("DAO\Produto.php");
include ("_bib.php");

$idProduto = $_POST["produtos"];
$qtd = $_POST["qtd"];
$vendaID = $_POST["vendaId"];

$qtd = deVirgulaParaPonto($qtd);
$vendaDAO = new VendaDAO();
$ret = $vendaDAO->addProduto($vendaID, $idProduto, $qtd);

if ($ret>0){
   echo $idProduto . "--". $qtd . " Cadastrado";
   $newURL = 'novaVenda.php';
   header('Location: '.$newURL);
}else{
    echo "erro";
}


?>