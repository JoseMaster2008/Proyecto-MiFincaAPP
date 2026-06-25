<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="icon" type="image/x-icon" href="IMG/MFA ICON.png">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <title>Formulario de Animales</title>

</head>

<body class="body_animal">
    <section id="menu">
        <div class="logo">
            <img src="IMG/logo.png" alt="">
            <h2>MiFincaApp</h2>
        </div>

        <div class="items">
            <li><i class="fa-solid fa-bars-staggered"></i><a href="#">Dashboard</a></li>
            <li><i class="fa-solid fa-user"></i><a href="#">Usuarios</a></li>
            <li><i class="fa-brands fa-product-hunt"></i><a href="#">Productos</a></li>
            <li><i class="fa-solid fa-dollar-sign"></i><a href="#">Ventas</a></li>
        </div>
    </section>

    <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div class="barras">      
                    <i id="menu-btn" class="fa-solid fa-bars"></i>
                </div>
                <div class="search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                        <input type="text" placeholder="Busqueda">
                </div>
            </div>
            <div class="profile">
                <i class="fa-regular fa-bell"></i>
                    <img src="IMG/logo2.png" alt="">
            </div>
        </div>
<div class="container-animal">
    <div class="animal-panel">

        <!-- PANEL IZQUIERDO -->
        <div class="animal-card">

            <div class="animal-photo">
                <img src="IMG/e.png" alt="Foto Animal">
            </div>

            <h2>Nuevo Animal</h2>
            <p>Registro de ganado</p>

            <div class="animal-preview">

                <div class="preview-item">
                    <strong>Estado</strong>
                    <span>Nuevo registro</span>
                </div>

                <div class="preview-item">
                    <strong>Categoría</strong>
                    <span>Bovino</span>
                </div>

                <div class="preview-item">
                    <strong>Fecha</strong>
                    <span><?php echo date("d/m/Y"); ?></span>
                </div>

            </div>

        </div>

        <!-- PANEL DERECHO -->
        <div class="animal-form">

            <form action="procesar_animal.php" method="POST" enctype="multipart/form-data">

                <!-- FOTO -->
                <div class="info-card">

                    <h2>Fotografía</h2>

                    <div class="animal-input-field">
                        <label for="foto_animal">Foto del animal</label>
                        <input type="file" id="foto_animal" name="foto_animal" accept="image/*">
                    </div>

                <!-- IDENTIFICACIÓN -->
                    <div class="animal-identification-row">

                        <h2>Identificación del animal</h2>

                        <div class="animal-input-field">
                            <label for="nombre_animal">
                                Nombre del Animal
                            </label>

                            <input type="text"
                                   id="nombre_animal"
                                   name="nombre_animal"
                                   required>
                        </div>

                        <div class="animal-input-field">
                            <label for="id_animal">
                                Código del Animal
                            </label>

                            <input type="text"
                                   id="id_animal"
                                   name="id_animal"
                                   required>
                        </div>

                    </div>

                <!-- CARACTERÍSTICAS -->

                    <div class="animal-character-row">

                        <h2>Características del animal</h2>

                        <div class="animal-input-field">
                            <label for="especie">Especie</label>

                            <input type="text"
                                   id="especie"
                                   name="especie"
                                   required>
                        </div>

                        <div class="animal-input-field">
                            <label for="raza">Raza</label>

                            <input type="text"
                                   id="raza"
                                   name="raza"
                                   required>
                        </div>

                        <div class="animal-input-field">
                            <label for="fecha_nacimiento">
                                Fecha de Nacimiento
                            </label>

                            <input type="date"
                                   id="fecha_nacimiento"
                                   name="fecha_nacimiento"
                                   required>
                        </div>

                        <div class="animal-input-field">
                            <label for="edad_animal">
                                Edad (Automática)
                            </label>

                            <input type="number"
                                   id="edad_animal"
                                   name="edad_animal"
                                   readonly>
                        </div>

                        <div class="animal-input-field">
                            <label for="sexo_animal">
                                Sexo
                            </label>

                            <select id="sexo_animal"
                                    name="sexo_animal"
                                    required>

                                <option value="">
                                    Seleccione
                                </option>

                                <option value="macho">
                                    Macho
                                </option>

                                <option value="hembra">
                                    Hembra
                                </option>

                            </select>
                        </div>

                        <div class="animal-input-field">
                            <label for="peso_animal">
                                Peso (kg)
                            </label>

                            <input type="number"
                                   id="peso_animal"
                                   name="peso_animal"
                                   required>
                        </div>

                        <div class="animal-input-field">
                            <label for="funcion_animal">
                                Función
                            </label>

                            <input type="text"
                                   id="funcion_animal"
                                   name="funcion_animal"
                                   placeholder="Lechera, Carne..."
                                   required>
                        </div>

                    </div>
                <!-- PARENTAL -->
                    <div class="animal-family-row">

                        <h2>Información parental</h2>

                        <div class="animal-input-field">
                            <label for="padre">
                                Padre
                            </label>

                            <input type="text"
                                   id="padre"
                                   name="padre">
                        </div>

                        <div class="animal-input-field">
                            <label for="madre">
                                Madre
                            </label>

                            <input type="text"
                                   id="madre"
                                   name="madre">
                        </div>

                    </div>
                <!-- SALUD -->
                    <div class="animal-health-row">

                        <h2>Información de salud</h2>

                        <div class="animal-input-field">
                            <label for="estado_animal">
                                Estado de Salud
                            </label>

                            <input type="text"
                                   id="estado_animal"
                                   name="estado_animal">
                        </div>

                        <div class="animal-input-field">
                            <label for="fecha_registro">
                                Fecha de Registro
                            </label>

                            <input type="date"
                                   id="fecha_registro"
                                   name="fecha_registro"
                                   required>
                        </div>

                        <div class="animal-input-field observaciones">
                            <label for="observaciones_animal">
                                Observaciones
                            </label>

                            <textarea id="observaciones_animal"
                                      name="observaciones_animal"
                                      rows="4"></textarea>
                        </div>

                    </div>
                <!-- UBICACIÓN -->
                    <div class="animal-location-row">

                        <h2>Ubicación y propietario</h2>

                        <div class="animal-input-field">
                            <label for="id_propietario">
                                ID del Propietario
                            </label>

                            <input type="text"
                                   id="id_propietario"
                                   name="id_propietario"
                                   required>
                        </div>

                        <div class="animal-input-field">
                            <label for="id_ubicacion">
                                ID de Ubicación
                            </label>

                            <input type="text"
                                   id="id_ubicacion"
                                   name="id_ubicacion"
                                   required>
                        </div>

                    </div>

                <!-- BOTÓN -->
                    <div class="animal-btn_submit">

                        <input type="submit"
                        value="Registrar Animal">

                    </div>
                </div>

            </form>

        </div>

    </div>

</div>

<script>
const fechaNacimiento =
document.getElementById('fecha_nacimiento');

const edadAnimal =
document.getElementById('edad_animal');

fechaNacimiento.addEventListener('change', function() {

    const nacimiento = new Date(this.value);
    const hoy = new Date();

    let edad =
        hoy.getFullYear() -
        nacimiento.getFullYear();

    const mes =
        hoy.getMonth() -
        nacimiento.getMonth();

    if (
        mes < 0 ||
        (mes === 0 &&
         hoy.getDate() < nacimiento.getDate())
    ) {
        edad--;
    }

    edadAnimal.value = edad;
});
</script>
    </section>

    
    <script>
        $('#menu-btn').click(function() {
            $('#menu').toggleClass('active');
        });
    </script> 
</body>
</html>