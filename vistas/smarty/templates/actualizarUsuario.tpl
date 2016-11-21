<h2>Editar Usuario</h2>

<p>Recuerde que una vez que cambie su contraseña,<br>
   sera redirigido al <ins>Login</ins>.<br>
   Para corroborar los cambios realizados.
</p>

<table class="table table-striped header-fixed" style="width: 100%;" >
<tbody style="display: block;  overflow-y: auto;    float: left;height: 500px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          
 
<form  id="actualizausuario" method="post"> 

<input type="hidden" class="form-control" id="passoriginal" name="passoriginal" value="{$password}">

      <label class="col-sm-4">Usuario:</label>
      <div class="col-sm-8"> 
          <input type="text" class="form-control" id="usuario" name="usuario" readonly value="{$usuario}">
      </div>
<br><br><br>

      <label class="col-sm-4">Password Actual:</label>
      <div class="col-sm-8">
          <input type="password" class="form-control" id="password" name="password" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su password">
      </div>
    
<br><br><br>
      <label class="col-sm-4">Nueva Password:</label>
      <div class="col-sm-8">
          <input type="password" class="form-control" id="nuevapassword" name="nuevapassword" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su nueva password">
      </div>
    
<br><br><br>
<label class="col-sm-4">Repita la Nueva Password:</label>
      <div class="col-sm-8">
          <input type="password" class="form-control" id="nuevapassword2" name="nuevapassword2" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su nueva password">
      </div>
    
<br><br><br>     
<br><br>



         </td>
      </tr>
   </tbody>  
  </table> 
   <div class="form-group" align="center">
    <input type="submit" id="btnActualizarUsuario" name="btnActualizarUsuario" class="btn btn-default" value="Actualizar" />
        <input  type="reset" class="btn btn-default" value="Restablecer" />
  </div>
</form>
<script type="text/javascript" src="js/usuarios/funcionActualizaUsuario.js"></script>