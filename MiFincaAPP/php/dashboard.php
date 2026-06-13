<?php
session_start();

if(!isset($_SESSION['id'])){
    header("Location: ../registro.html");
    exit();
}

echo "<h1>Bienvenido " . $_SESSION['nombre'] . "</h1>";
?>