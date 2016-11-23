<h2>Editar Club</h2>
<table class="table table-striped header-fixed" style="width: 100%;" >
<tbody style="display: block;  overflow-y: auto;    float: left;height: 600px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          
 
<form  id="actualizaclub" method="post"> 

   
      <label class="col-sm-4">Id del  Club:</label>
      <div class="col-sm-8"> 
          <input type="text" class="form-control" id="idClub" name="idClub" readonly value="{$idClub}">
      </div>
<br><br><br>

      <label class="col-sm-4">Nombre:</label>
      <div class="col-sm-8">
          <input type="text" class="form-control" id="nombre" name="nombre" value="{$nombre}" required pattern="^[a-zA-Z0-9-\s]+"  title="Ingrese el nombre del club">
      </div>
    
<br><br><br>
    
    <label class="col-sm-4">Tipo:</label>
    <div class="col-sm-8">
      
       <select name="tipo" class="form-control" id="tipo">
            {if $tipo eq "seleccion"}
            <option  value="seleccion" selected>SELECCIÓN</option>
            {else}
            <option  value="seleccion">SELECCIÓN</option>
            {/if}

            {if $tipo eq "normal"}
            <option " value="normal" selected>NORMAL</option>
            {else}
            <option  value="normal">NORMAL</option>
            {/if}

        </select> 

    </div>
    
<br><br><br>

     <label class="col-sm-4">Teléfono:</label>
      <div class="col-sm-8">
     <input type="text" class="form-control" id="telefono" name="telefono" value="{$telefono}" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
     </div>
<br><br><br>

   <label class="col-sm-4">Dirección:</label>
   <div class="col-sm-8">
   <input type="text" class="form-control" id="direccion" name="direccion" value="{$direccion}" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la dirección.">
   </div>

  <br><br><br>

     <label class="col-sm-4">Persona de Contacto:</label>
     <div class="col-sm-8">
     <input type="text" class="form-control" id="personaContacto" name="personaContacto" value="{$personaContacto}" required pattern="^[a-zA-Z-\s]+" title="Ingrese la personal de contacto. Solo letras">
     </div>
   
  <br><br><br>
  
     <label class="col-sm-4">Correo Electrónico:</label>
     <div class="col-sm-8">
     <input type="email" class="form-control" id="correoElectronico" name="correoElectronico" value="{$correoElectronico}" required  title="Ingrese el correo electrónico">
     </div>
     <br>
     
<br><br>

 <div class="form-group" align="center">
    <input type="submit" id="btnActualizarClub" name="btnActualizarClub" class="btn btn-default" value="Actualizar" />
    <input  type="button" id="btnCancelarActualizarClub" name="btnCancelarActualizarClub" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>

         </td>
      </tr>
   </tbody>  
  </table> 
</form>
<script type="text/javascript" src="js/clubes/funcionesModClubDinamico.js"></script>
