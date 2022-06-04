<?php
$host = "145.14.145.145";
$name = "id18700182_wrixityhost";
$user = "id18700182_wrixity";
$passwort = "raza#4590@Storm";
try{
    $mysql = new PDO("mysql:host=$host;dbname=$name", $user, $passwort);
} catch (PDOException $e){
    echo "SQL Error: ".$e->getMessage();
}
 ?>
