<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="fut7.css">
</head>
<body>
    <?php include 'header.html'; ?>
    <table>
        <thead>
            <tr>
                <th>Posición</th>
                <th>Nombre</th>
                <th>Goles</th>
            </tr>
        </thead>
        <tbody>
            <!-- Aquí se generarán dinámicamente las filas de la tabla con los datos de la base de datos -->
            <!-- Puedes utilizar un lenguaje de programación como PHP para obtener los datos y generar las filas -->
        </tbody>
    </table>
    <?php include 'footer.html'; ?>
</body>
</html>