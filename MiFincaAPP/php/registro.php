<?php

include("conexion.php");

$nombre = $_POST['nombre'];
$email = $_POST['email'];
$documento = $_POST['documento'];
$password = $_POST['password'];

$sql = "INSERT INTO usuario
(NumeroDocumento, NombreUsuario, Password, Email)
VALUES
('$documento', '$nombre', '$password', '$email')";

if($conexion->query($sql)){
    echo "Usuario registrado correctamente";
}else{
    echo "Error: " . $conexion->error;
}

?>