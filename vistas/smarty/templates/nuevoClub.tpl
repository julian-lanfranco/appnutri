<form  id="club" method="post"> 
<div class="row">
<div class="col-md-12">
<div class="container-fluid">

<h4>Nuevo Club</h4>
<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left; height: 500px; width: 100%">
<tr style="">
<td style="width: 100%; float: left;" >

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 30px;
                          margin: 10px;
                          width: 800px">
          
    
      <label class="col-md-4">Nombre</label>
      <div class="col-md-8">
          <input type="text" class="form-control" id="nombre" name="nombre" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese el nombre del club">
      </div>
 
<br><br><br> 

       <label class="col-md-4">Tipo</label>
        <div class="col-md-8">
        <select name=tipo class="form-control" id="tipo" required>
        <option label="normal" value="normal">NORMAL</option>
        <option label="seleccion" value="seleccion">SELECCION</option>
        </select>
        </div>

<br><br><br> 

     <label class="col-md-4">Telefono</label>
      <div class="col-md-8">
     <input type="text" class="form-control" id="telefono" name="telefono" value="" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
     </div>


<br><br><br> 
   <label class="col-md-4">Direccion</label>
   <div class="col-md-8">
   <input type="text" class="form-control" id="direccion" name="direccion" value="" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la direccion.">
   </div>


<br><br><br> 
     <label class="col-md-4">Persona de Contacto</label>
     <div class="col-md-8">
     <input type="text" class="form-control" id="personaContacto" name="personaContacto" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese la personal de contacto. Solo letras">
     </div>
<br><br><br> 

     <label class="col-md-4">Correo Electronico</label>
     <div class="col-md-8">
     <input type="email" class="form-control" id="correoElectronico" name="correoElectronico" value="" required  title="Ingrese el correo electronico">
     </div>


<br><br><br> 

         </td>
      </tr>
   </tbody>  
  </table>

  <div class="form-group" align="center">
    <input type="submit" id="btnCrearClub" name="btnCrearClub" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearClub" name="btnCancelarCrearClub" class="btn btn-default" value="Cancelar" />
        <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>
  </div>
   </div>
   </div>
</form>

<script type="text/javascript" src="js/clubes/funcionesAltaClubDinamico.js"></script>
