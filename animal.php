<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="prueba/style_animal.css">
    <link rel="icon" type="image/x-icon" href="IMG/MFA ICON.png">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
    <title>Formulario de Animales</title>
</head>
<body class="body_animal">
    <div class="container-animal">
        <h1>Ficha por animal</h1>
        <form action="procesar_animal.php" method="POST">
            <div class="animal-input-group">

                <div class="animal-identification-row">
                    <h1>Identificación del animal</h1>
                    <div class="animal-input-field">
                        <label for="nombre_animal">Nombre del Animal:</label>
                        <input type="text" id="nombre_animal" name="nombre_animal" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="id_animal">Código del Animal:</label>
                        <input type="text" id="id_animal" name="id_animal" required><br><br>
                    </div>
                </div>

                <div class="animal-character-row">
                    <h1>Características del animal</h1>
                    <div class="animal-input-field">
                        <label for="especie">Especie:</label>
                        <input type="text" id="especie" name="especie" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="raza">Raza:</label>
                        <input type="text" id="raza" name="raza" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="edad_animal">Edad:</label>
                        <input type="number" id="edad_animal" name="edad_animal" required><br><br>
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
                        <input type="number" id="peso_animal" name="peso_animal" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="funcion_animal">Función:</label>
                        <input type="text" id="funcion_animal" name="funcion_animal" required><br><br>
                    </div>
                </div>

                <div class="animal-family-row">
                    <h1>Información parental</h1>
                    <div class="animal-input-field">
                        <label for="padre">Padre:</label>
                        <input type="text" id="padre" name="padre" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="madre">Madre:</label>
                        <input type="text" id="madre" name="madre" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
                        <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="fecha_registro">Fecha de Registro:</label>
                        <input type="date" id="fecha_registro" name="fecha_registro" required><br><br>
                    </div>
                </div>

                <div class="animal-health-row">
                    <h1>Información de salud</h1>
                    <div class="animal-input-field">
                        <label for="estado_animal">Estado de Salud:</label>
                        <input type="text" id="estado_animal" name="estado_animal" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="observaciones_animal">Observaciones:</label>
                        <textarea id="observaciones_animal" name="observaciones_animal" required></textarea><br><br>
                    </div>
                </div>
            
                <div class="animal-location-row">
                    <h1>Ubicación y propietario</h1>
                    <div class="animal-input-field">
                        <label for="id_propietario">ID del Propietario:</label>
                        <input type="text" id="id_propietario" name="id_propietario" required><br><br>
                    </div>

                    <div class="animal-input-field">
                        <label for="id_ubicacion">ID de Ubicación:</label>
                        <input type="text" id="id_ubicacion" name="id_ubicacion" required><br><br>
                    </div>
                </div>

                <div class="animal-btn_submit">
                    <input type="submit" value="Registrar Animal">
                </div>
            </div>
        </form>
    </div>  
</body>
</html>