<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
	<img src="http://prana-cai.com/wp-content/uploads/2012/12/nutricion.png" width='1340' height='200' alt="Cinque Terre"> 
</div>

  <div class="row">
    <div class="col-sm-4" style="background-color:lavender;">
  <h3>Elija la opcion.</h3>
  <ul class="nav nav-pills nav-stacked">
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Clubes<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#" id="btnListarClubes">Listar Clubes</a></li>                       
        <li><a href="#" id="btnNuevoClub">Nuevo Clubes</a></li>       
      </ul>
    </li>
  </ul>
</div>
    <div class="col-sm-7" style="background-color:lavender;">
	   <div id="central">
      <h1>Pagina principal</h1>
      <p>Contenido de la página principal</p>
      </div>
    </div>
  </div>
</div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="js/funciones.js"></script>
</body>
</html>


