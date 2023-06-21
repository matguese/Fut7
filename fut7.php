<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Equipo de Fútbol 7</title>
  <link rel="stylesheet" type="text/css" href="fut7.css">
</head>
<body>
    
  <?php include 'header.html'; ?>
  <main>

  <h2>Buscar jugador</h2>
    <form action="fut7.php" method="POST">
        <input type="text" id="jugador" name="jugador" placeholder="Introduce el nombre de un jugador del equipo">
        <input type="submit" id="search" name="search" value="Buscar">
    </form>

  <?php
    //Si se ha pulsado el botón de buscar
    if (isset($_POST['search'])) {
      //Recogemos el jugador
      $jugador = $_POST['jugador'];
      
      //Conectamos con la base de datos en la que vamos a buscar
      $ip = "127.0.0.1";
      $port = "3306";
      $user = "root";
      $pass = "";
      $name = "fut7";

      $conexion = mysqli_connect($ip, $user, $pass, $name, $port);

      if ($conexion == false){
        echo "<p>Error de conexión con la base de datos.</p>";
      }

      $sql = "SELECT nombre, goles FROM jugadores WHERE nombre LIKE '%" . $jugador ."%'";
      $resultado = mysqli_query($conexion, $sql);
      $count_results = mysqli_num_rows($resultado);

      //Si hay resultados
      if ($count_results > 0) {

        echo '<h3>Se han encontrado '.$count_results.' jugadores.</h3>';


        while ($row_searched = mysqli_fetch_array($resultado)) {
            echo '<p>'.$row_searched['nombre'].' ha marcado '.$row_searched['goles'].' goles esta temporada.</p>';
        }
      }
      else {
          //Si no hay registros encontrados
          echo '<h2>No se encuentran jugadores con los criterios de búsqueda.</h2>';
      }
    }
  ?>

  <h2>Buscar partido</h2>
    <form action="fut7.php" method="POST">
        <input type="text" id="rival" name="rival" placeholder="Introduce el nombre de un equipo rival">
        <input type="submit" id="search2" name="search2" value="Buscar">
    </form>
    
  </main>

  <?php include 'footer.html'; ?>
</body>
</html>
