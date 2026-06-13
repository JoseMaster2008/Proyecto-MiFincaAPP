<?php
//conexion a la base de datos
$conexion = new mysqli("localhost", "root", "", "bd_mifincapp");
$rol = $conexion->query("SELECT * FROM rol");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body class="body_registro">
    <div class="container-form">
        <div class="information">
            <div class="form-welcoming">
                <h2>Bienvenido a MiFincaAPP</h2>
                <p>Todo tu trabajo en un solo lugar</p>
                <input type="button" value="Iniciar Sesión" onclick="window.location.href='inicio.html'">
            </div>
        </div>
        <div class="form-content">
            <div class="form-content-childs">
                <h1 class="Title">Crear una Cuenta</h1>
                <div class="icons">
                    <ion-icon name="logo-google"></ion-icon>
                    <ion-icon name="logo-facebook"></ion-icon>
                    <ion-icon name="logo-linkedin"></ion-icon>
                </div>
                <p>Usa tu correo electrónico para registrarte</p>
                <form class="form" action="php/guardar_usuario.php" method="POST">
                    <div class="input-group">
                        <div class="input-field">
                            <i class="fa-regular fa-envelope"></i>
                            <input type="email" name="email" placeholder="Correo Electrónico" required>
                        </div>
                        <div class="input-field">
                            <i class="fa-regular fa-address-book"></i>
                            <input type="text" name="nombre" placeholder="Nombre de Usuario" required>
                        </div>

                        <div class="input-field">
                            <i class="fa-regular fa-id-card"></i>
                            <input type="text" name="documento" placeholder="Número de Documento" required>
                        </div>
                        
                        <div class="input-field">
                            <i class="fa-solid fa-phone"></i>
                            <input type="text" name="telefono" placeholder="Número de Teléfono" required>
                        </div>

                        <div class="input-field">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" name="password" placeholder="Contraseña" required>
                        </div>

                        <div class="input-field">
                            <i class="fa-regular fa-id-badge"></i>
                            <select name="IdRol" required>
                                <option value="">Seleccione un rol</option>
                                    <?php while($row = $rol->fetch_assoc()): ?>
                                <option value="<?php echo $row['IdRol']; ?>"><?php echo $row['Rol']; ?></option>
                                    <?php endwhile; ?>
                            </select>
                        </div>
                        <div class="btn-field">  
                            <button type="submit" class="submit"><i class="fa-solid fa-user"></i>Registrarse</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<div>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</div>
</body>
</html>
