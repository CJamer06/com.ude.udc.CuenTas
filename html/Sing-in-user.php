<?php

$servername = "localhost";
$usuario = "root";
$contraseña = "";
$bd = "CuenTas";

$conexion = new mysqli($servername, $usuario, $contraseña,$bd);
/*

  if ($conexion) {
    echo "Conectado exitosamente a la base de datos";

  } else {
  "Error al conectarsea la  base de datos";
}*/


$nombre = $_POST['nombre'];
$email = $_POST['email'];
$contraseña = $_POST['contraseña'];


$sql = "INSERT INTO usuarios (nombre, email, contraseña)
VALUES ('$nombre','$email', '$contraseña')";


// verificar que no se repitan trader_cdlrisefall3methods

$verificar_correo = mysqli_query ($conexion, " SELECT * FROM usuarios WHERE email ='$email' ");

if (mysqli_num_rows($verificar_correo )>0) {

  echo'<script type="text/javascript">
  alert("Este email ya se encuentra registrado, intenta con otro diferente ");
  window.location.href="registro.php";
  </script>';

  exit();
}


$ejecutar = mysqli_query($conexion,$sql);

if ($ejecutar) {

  echo'<script type="text/javascript">
  alert("usuario registrado exitosamente");
  window.location.href="registro.php";
  </script>';

} else{


        echo '<script>
        alert ("Error Intente lo nuevamente");
        window.location = "../registro.php";
        </script>
        ';
}

mysqli_close ($conexion);

 ?>