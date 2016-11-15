
<form  id="club" method="post">
<h2>Nuevo Club</h2>
<table class="table table-striped header-fixed" style="width: 100%;" >
<tbody style="display: block;  overflow-y: auto;    float: left;height: 5000px; width:800px">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          
 
    
      <label class="col-sm-6">Nombre:</label>
      <div class="col-sm-6">
          <input type="text" class="form-control" id="nombre" name="nombre" value="" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese el nombre del club">
      </div>
    
<br><br>
    
       <label class="col-sm-6">Tipo:</label>
        <div class="col-sm-6">
        <select name=tipo class="form-control" id="tipo" required>
        <option label="normal" value="normal">NORMAL</option>
        <option label="seleccion" value="seleccion">SELECCION</option>
        </select>
        </div>

    
<br><br>

     <label class="col-sm-6">Telefono:</label>
      <div class="col-sm-6">
     <input type="text" class="form-control" id="telefono" name="telefono" value="" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
     </div>
<br><br>

   <label class="col-sm-6">Direccion:</label>
   <div class="col-sm-6">
   <input type="text" class="form-control" id="direccion" name="direccion" value="" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la direccion.">
   </div>

  <br><br>

     <label class="col-sm-6">Persona de Contacto:</label>
     <div class="col-sm-6">
     <input type="text" class="form-control" id="personaContacto" name="personaContacto" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese la personal de contacto. Solo letras">
     </div>
   
  <br><br>
  
     <label class="col-sm-6">Correo Electronico:</label>
     <div class="col-sm-6">
     <input type="email" class="form-control" id="correoElectronico" name="correoElectronico" value="" required  title="Ingrese el correo electronico">
     </div>
     <br>
     
<br><br>

<div class="form-group" align="center">
    <input type="submit" id="btnCrearClub" name="btnCrearClub" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearClub" name="btnCancelarCrearClub" class="btn btn-default" value="Cancelar" />
</div>

         </td>
      </tr>
   </tbody>  
  </table> 
</form>
</div>
<script type="text/javascript" src="js/clubes/funcionesAltaClubDinamico.js"></script>
