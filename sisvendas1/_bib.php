<?php

function deVirgulaParaPonto($numString){
    $pattern = '/' . "," . '/';//Padrão a ser encontrado na string 
    if (preg_match($pattern, $numString)) {
        $newString = str_replace(',', '.', $numString);
        return $newString;
    }else{
        return $numString;
    }
}

/*
echo trocarPontoVirgula("1,4") . "<br>";

echo trocarPontoVirgula("1.4") . "<br>";

echo trocarPontoVirgula("14") . "<br>";

echo trocarPontoVirgula("10,4") . "<br>";


  $x = "1,3";
  $y = "1.3";

  $pattern = '/' . "," . '/';//Padrão a ser encontrado na string 
  if (preg_match($pattern, $x)) {
    echo $x." | ,";
  }
  
  echo "<br>";
  
  if (preg_match($pattern, $y)) {
    echo $y." | ,";
  }
*/
?>