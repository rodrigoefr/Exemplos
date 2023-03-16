<?php 
    
// input data  through array
$array = Array (
    "0" => Array (
        "id" => "7020",
        "name" => "Maria",
        "Subject" => "Java"
    ),
    "1" => Array (
         "id" => "7021",
        "name" => "João",
        "Subject" => "sql"
    ),
    "2" => Array (
         "id" => "333",
        "name" => "João Silva",
        "Subject" => "sql / c"
    )
);
  
// encode array to json
$json = json_encode($array);
//display it 
echo "$json";
//generate json file
file_put_contents("geeks_data.json", $json);
  
?>