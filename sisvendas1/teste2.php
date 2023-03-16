<?php


$query = " SELECT SUM(vp.valor_calc) as soma ".
         "   FROM venda_produto vp ".
         "  WHERE vp.id_venda = 79 ";

$host = 'localhost';
$usuario ='root';
$senha = '';
$base = 'bd_sisvendas1';    
    
$con = mysqli_connect(
$host,
$usuario,
$senha,
$base
) or die('Erro ao conectar ao banco de dados');
//echo $strcon->conbd_host . '_x__<br>';



$sql = mysqli_query($con, $query) or die(
mysqli_error($con) //caso haja um erro na consulta
);


$linha = mysqli_fetch_assoc($sql);

echo $linha["soma"];
    
mysqli_close($con);



?>