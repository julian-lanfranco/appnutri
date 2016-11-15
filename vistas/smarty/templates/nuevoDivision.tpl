<h2>Nueva Division</h2>
<table class="table table-striped header-fixed" style="width: 100%;" >
<tbody style="display: block;  overflow-y: auto;    float: left;height: 500px; width:1000px">
     <tr style="">
      <td style="width: 100%;    float: left; height: 500px; width:800px">
          
 
<form  id="division" method="post">   
   
<label class="col-sm-4">Nombre:</label>
<div class="col-sm-8">
   <input type="text" class="form-control" id="nombre" name="nombre" value="" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la division.">
</div>
<br><br><br>     
 <label class="col-sm-4">Club:</label>
<div class="col-sm-8">
<select name=clubes class="form-control" id="clubes" required>
    {foreach from=$clubes item=club}
    <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
    {/foreach}
</select>
</div>  
<br><br><br>

<label class="col-sm-4">Deporte:</label>
<div class="col-sm-8">
<select name=deporte class="form-control" id="deporte" required>
    <option label="futbol" value="futbol">FUTBOL</option>
    <option label="basquet" value="basquet">BASQUET</option>
    <option label="rugby" value="rugby">RUGBY</option>
</select>
</div>  
<br><br><br>

<label class="col-sm-4">Sexo:</label>
<div class="col-sm-8">
<select name=sexo class="form-control" id="sexo">
    <option label="masculino" value="masculino">MASCULINO</option>
    <option label="femenino" value="femenino">FEMENINO</option>
</select>
</div>  
<br><br><br>

<label class="col-sm-4">Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="contacto" name="contacto" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese la nombre de la persona de contacto">
</div>
<br><br><br>

<label class="col-sm-4">Telefono de Contacto:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="telefono" name="telefono" value="" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
</div>
<br><br><br>

<label class="col-sm-4">Correo de Contacto:</label>
<div class="col-sm-8">
<input type="email" class="form-control" id="correo" name="correo" value="" required  title="Ingrese el correo electronico">
</div>
<br><br><br>
<label class="col-sm-4">Entrenador:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="entrenador" name="entrenador" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre del entrenador. Solo letras">
</div>
<br><br><br>
<label class="col-sm-4">Preparador Fisico:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="preparador" name="preparador" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre de preparador fisico. Solo letras">
</div>
<br><br><br>
     

<div class="form-group" align="center">
    <input type="submit" id="btnCrearDivision" name="btnCrearDivision" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearDivision" name="btnCancelarCrearDivision" class="btn btn-default" value="Cancelar" />
</div>

         </td>
      </tr>
   </tbody>  
  </table> 
</form>
<script type="text/javascript" src="js/divisiones/funcionesAltaDivisionDinamico.js"></script>