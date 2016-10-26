<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require_once('controller/controllerUsuario.php'); 
require_once('recaptcha/recaptchalib.php');

//variables captcha
$publickey = "6LdvJwoUAAAAAGCDxUyFLkg7uD7_Vr0TD9OWUzNP";
$error = null; 
?>

<form  id="usuarioform" method="post" action="controller/controllerLogin.php"> 
<html lang="en">
<head>
  <title>Login Sistema de Gestion de Nutricion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
     <script type="text/javascript">
       var RecaptchaOptions = {
       theme : 'white'
        };
 </script>
</head>


<table class="table table-striped header-fixed" style="margin-left: 450px; margin-top: 100px;" >
   <tbody style="display: block;  overflow-y: auto;    float: left;height: 600px; width:100%">
  
       <tr style="">
       <td style="width: 100%;    float: left;" >
    
           <h2 style="text-align: center;">Login</h2>
     
     <br>
     <label class="col-sm-4">Usuario:</label>
     <div class="col-sm-6">
        <input type="text" class="form-control" id="usuario" name="usuario" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su usuario">
     </div>
     <br><br><br>
    
     <label class="col-sm-4">Password:</label>
     <div class="col-sm-6">
        <input type="password" class="form-control" id="password" name="password" value="" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese su contraseña.">
     </div>
     <br><br><br>

 
     <?php
     echo recaptcha_get_html($publickey, $error);
     ?>

     
     <br><br>

     <div class="form-group" align="center">
        <input type="submit" id="btnIngresoUsuario" name="btnIngresoUsuario" class="btn btn-default" value="Ingresar" />
     </div>
          
 

        </td>
      </tr>
   </tbody>  
</table> 


</form>

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  </body>
</html>