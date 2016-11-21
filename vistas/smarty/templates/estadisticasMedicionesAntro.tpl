<!DOCTYPE html>
<html lang="en">
<head>
  <title>Estadisticas </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>

<img   src="graficas/evolucionPesoBruto.php?idPaciente={$paciente}&fechadesde={$fechadesde}&fechahasta={$fechahasta}" align="middle" />

<img   src="graficas/evolucionTallaCorporal.php?idPaciente={$paciente}&fechadesde={$fechadesde}&fechahasta={$fechahasta}" align="middle" />

<img   src="graficas/evolucionTallaSentado.php?idPaciente={$paciente}&fechadesde={$fechadesde}&fechahasta={$fechahasta}" align="middle" />


<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/funciones.js"></script>
</body>
</html>