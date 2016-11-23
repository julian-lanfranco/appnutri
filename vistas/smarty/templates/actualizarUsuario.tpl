
<form  id="actualizausuario" method="post"> 
<div class="row">
<div class="col-md-12">
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

<h2>Actualizar Contraseña</h2>
</div>
</div>

  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >


<p>Recuerde qué una vez qué cambie su contraseña,<br>
   sera redirigido al <ins>Login</ins>.<br>
   Para corroborar los cambios realizados.
</p>
</div>
</div>

<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left; height: 350px;width: 100% ">
<tr style="">
<td style="width: 100%; float: left;" >
 



 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<input type="hidden" class="form-control" id="passoriginal" name="passoriginal" value="{$password}">

      <label class="col-sm-4">Usuario </label>
      <div class="col-sm-8"> 
          <input type="text" class="form-control" id="usuario" name="usuario" readonly value="{$usuario}">
      </div>


      <label class="col-sm-4">Password Actual </label>
      <div class="col-sm-8">
          <input type="password" class="form-control" id="password" name="password" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su password">
      </div>
  

      <label class="col-sm-4">Nueva Password </label>
      <div class="col-sm-8">
          <input type="password" class="form-control" id="nuevapassword" name="nuevapassword" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su nueva password">
      </div>

<label class="col-sm-4">Repita la Nueva Password </label>
      <div class="col-sm-8">
          <input type="password" class="form-control" id="nuevapassword2" name="nuevapassword2" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese su nueva password">
      </div>



         </td>
      </tr>
   </tbody>  
  </table> 
  </div>
   <div class="form-group" align="center">
    <input type="submit" id="btnActualizarUsuario" name="btnActualizarUsuario" class="btn btn-default" value="Actualizar" />
        <input  type="reset" class="btn btn-default" value="Restablecer" />
  </div>
  </div>
  </div>

  </form>
</form>
<script type="text/javascript" src="js/usuarios/funcionActualizaUsuario.js"></script>