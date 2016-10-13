<h2>Editar Division</h2>
<table class="table table-striped header-fixed" style="width: 100%;" >
<tbody style="display: block;  overflow-y: auto;    float: left;height: 600px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          
 
<form  id="actualizadivision" method="post">   
  
   
      <label class="col-sm-4">Id de la  Division:</label>
      <div class="col-sm-8">
      <input type="text" class="form-control" id="idDivision" name="idDivision" value="{$idDivision}" readonly>
      </div>
      
      <br><br><br>

      <label class="col-sm-4">Id del Club:</label>
      <div class="col-sm-8">
      <input type="text" class="form-control" id="idClub" name="idClub" value="{$idClub}" readonly>
      </div>
      <br><br><br>
      
<label class="col-sm-4">Division:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="nombre" name="nombre" value="{$nombre}" required pattern="*" title="Ingrese la nombre de la division.">
</div>
<br><br><br>   

<label class="col-sm-4">Deporte:</label>
<div class="col-sm-8">
 
<select name="deporte" class="form-control" id="deporte">
            {if $deporte eq "futbol"}
            <option label="futbol" value="futbol" selected>FUTBOL</option>
            {else}
            <option label="futbol" value="futbol">FUTBOL</option>
            {/if}

            {if $deporte eq "basquet"}
            <option label="basquet" value="basquet" selected>BASQUET</option>
            {else}
            <option label="basquet" value="basquet">BASQUET</option>
            {/if}
            
            {if $deporte eq "rugby"}
            <option label="rugby" value="rugby" selected>RUGBY</option>
            {else}
            <option label="rugby" value="rugby">RUGBY</option>
            {/if}


        </select>   
</div>   
<br><br><br>      
      

<label class="col-sm-4">Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="contacto" name="contacto" value="{$contacto}" required pattern="^[a-zA-Z-\s]+" title="Ingrese la nombre de la persona de contacto">
</div>
<br><br><br>

<label class="col-sm-4">Telefono de Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="telefono" name="telefono" value="{$telefono}" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
</div>
<br><br><br>

<label class="col-sm-4">Correo de Contacto:</label>
<div class="col-sm-8">
<input type="email" class="form-control" id="correo" name="correo" value="{$correo}" required  title="Ingrese el correo electronico">
</div>
<br><br><br>
<label class="col-sm-4">Entrenador:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="entrenador" name="entrenador" value="{$entrenador}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre del entrenador. Solo letras">
</div>
<br><br><br>
<label class="col-sm-4">Preparador Fisico:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="preparador" name="preparador" value="{$preparador}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre de preparador fisico. Solo letras">
</div>
<br><br><br>

      
<div class="form-group" align="center">
    <input type="submit" id="btnActualizarDivision" name="btnActualizarDivision" class="btn btn-default" value="Actualizar" />
    <input  type="button" id="btnCancelarActualizarDivision" name="btnCancelarActualizarDivision" class="btn btn-default" value="Cancelar" />
</div>

         </td>
      </tr>
   </tbody>  
  </table> 
</form>
<script type="text/javascript" src="js/divisiones/funcionesModDivisionDinamico.js"></script>
