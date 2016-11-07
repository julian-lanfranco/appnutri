<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require_once('controller/controllerUsuario.php'); 


?>

<form  id="usuarioform" method="post" action="controller/controllerLogin.php"> 
<html lang="en">
<head>
  <title>Login Sistema de Gestion de Nutricion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="\appnutri\lib\bootstrap\css\bootstrap.min.css">
    <script src="\appnutri\lib\jquery-1.12.4.min.js"></script>

</head>


<table class="table table-striped header-fixed" style="margin-left: 450px; margin-top: 100px;" >
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 600px; width:100%">
  
       <tr style="">
       <td style="width: 100%;    float: left;" >
    
           <h2 style="text-align: center;">Login</h2>
     
     <br>
     <label class="col-sm-4">Usuario:</label>
     <div class="col-sm-8">
        <input type="text" class="form-control" id="usuario" name="usuario" value="" placeholder="usuario" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su usuario">
     </div>
     <br><br><br>
    
     <label class="col-sm-4">Contraseña:</label>
     <div class="col-sm-8">
        <input type="password" class="form-control" id="password" name="password" value="" placeholder="contraseña" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese su contraseña.">
     </div>
     <br><br><br>

      <label class="col-sm-4">Captcha:</label>
     <div class="col-sm-8">
        <input type="text" class="form-control" id="captcha" name="captcha" value="" placeholder="captcha" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el contenido de la imagen de abajo.">
        <br>
        <img src="captcha/generaCaptcha.php">
     </div>
      
          
     <br><br><br><br>
     <br><br>

     <div class="form-group" align="center">
        <input type="submit" id="btnIngresoUsuario" name="btnIngresoUsuario" class="btn btn-default" value="Ingresar" />
     </div>
          
 

        </td>
      </tr>
   </tbody>  
</table> 


</form>

  <script src="\appnutri\lib\bootstrap\js\bootstrap.min.js"></script>
  
  </body>
</html>