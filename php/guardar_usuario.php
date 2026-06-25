<?php
//CONEXION A LA BASE DE DATOS
$conexion = mysqli_connect("localhost", "root", "", "bd_mifincapp");
//VERIFICAR LA CONEXION
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
} 
else{
//RECOGER LOS DATOS DEL FORMULARIO
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $IdRol = $_POST['IdRol'];
    $documento = $_POST['documento'];
    $telefono = $_POST['telefono'];

//INSERTAR LOS DATOS EN LA BASE DE DATOS

    $sql = "INSERT INTO usuario (nombre, email, password, IdRol, documento, telefono)
    VALUES ('$nombre', '$email', '$password', '$IdRol', '$documento', '$telefono')";
    if($conexion->query($sql) === TRUE){
           header("Location: ../inicio.html");
           exit();
    } else {
        echo "Revisar código";
    }
}
$conexion->close();
?>