<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/styles.css">
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
                <div class="animal-card">
                    <div class="animal-photo">
                        <img src="IMG/e.png" alt="JhayCow">
                    </div>
                    <h2>Jersey "Estrella</h2>
                    <p> ID: #12345</p>
                    <div class="animal-info">
                        <p><strong>Especie:</strong> Bovino</p>
                        <p><strong>Raza:</strong> Jersey</p>
                        <p><strong>Edad:</strong> 5 años</p>
                        <p><strong>Sexo:</strong> Hembra</p>
                        <p><strong>Peso:</strong> 450 kg</p>
                        <p><strong>Función:</strong> Lechera</p>
                    </div>
                </div>
                <div class="animal-form">
                    <h1>Registrar Nuevo Animal</h1>
                    <form action="procesar_animal.php" method="POST">
                    <div class="animal-input-group">

                        <div class="animal-identification-row">
                            <h1>Identificación del animal</h1>
                            <div class="animal-input-field">
                                <label for="nombre_animal">Nombre del Animal:</label>
                                <input type="text" id="nombre_animal" name="nombre_animal" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="id_animal">Código del Animal:</label>
                                <input type="text" id="id_animal" name="id_animal" required>
                            </div>
                        </div>

                        <div class="animal-character-row">
                            <h1>Características del animal</h1>
                            <div class="animal-input-field">
                                <label for="especie">Especie:</label>
                                <input type="text" id="especie" name="especie" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="raza">Raza:</label>
                                <input type="text" id="raza" name="raza" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="edad_animal">Edad:</label>
                                <input type="number" id="edad_animal" name="edad_animal" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="sexo_animal">Sexo:</label>
                                <select id="sexo_animal" name="sexo_animal" required>
                                    <option value="macho">Macho</option>
                                    <option value="hembra">Hembra</option>
                                </select><br><br>
                            </div>

                            <div class="animal-input-field">
                                <label for="peso_animal">Peso (kg):</label>
                                <input type="number" id="peso_animal" name="peso_animal" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="funcion_animal">Función:</label>
                                <input type="text" id="funcion_animal" name="funcion_animal" required>
                            </div>
                        </div>

                        <div class="animal-family-row">
                            <h1>Información parental</h1>
                            <div class="animal-input-field">
                                <label for="padre">Padre:</label>
                                <input type="text" id="padre" name="padre" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="madre">Madre:</label>
                                <input type="text" id="madre" name="madre" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
                                <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="fecha_registro">Fecha de Registro:</label>
                                <input type="date" id="fecha_registro" name="fecha_registro" required>
                            </div>
                        </div>

                        <div class="animal-health-row">
                            <h1>Información de salud</h1>
                            <div class="animal-input-field">
                                <label for="estado_animal">Estado de Salud:</label>
                                <input type="text" id="estado_animal" name="estado_animal" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="observaciones_animal">Observaciones:</label>
                                <textarea id="observaciones_animal" name="observaciones_animal" required></textarea>
                            </div>
                        </div>
            
                        <div class="animal-location-row">
                            <h1>Ubicación y propietario</h1>
                            <div class="animal-input-field">
                                <label for="id_propietario">ID del Propietario:</label>
                                <input type="text" id="id_propietario" name="id_propietario" required>
                            </div>

                            <div class="animal-input-field">
                                <label for="id_ubicacion">ID de Ubicación:</label>
                                <input type="text" id="id_ubicacion" name="id_ubicacion" required>
                            </div>
                        </div>

                        <div class="animal-btn_submit">
                            <input type="submit" value="Registrar Animal">
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    
    <script>
        $('#menu-btn').click(function() {
            $('#menu').toggleClass('active');
        });
    </script> 
</body>
</html>