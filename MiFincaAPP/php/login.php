<?php

session_start();
include("conexion.php");

$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT * FROM usuario
WHERE Email='$email'
AND Password='$password'";

$resultado = $conexion->query($sql);

if($resultado->num_rows > 0){

    $usuario = $resultado->fetch_assoc();

    $_SESSION['id'] = $usuario['IdUsuario'];
    $_SESSION['nombre'] = $usuario['NombreUsuario'];

    header("Location: dashboard.php");
    exit();

}else{

    echo "Correo o contraseña incorrectos";

}

?>