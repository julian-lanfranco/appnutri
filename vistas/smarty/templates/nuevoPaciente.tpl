<form  id="paciente" method="post">
<div class="row">
<div class="col-md-12">
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >
  <h2>Nuevo Paciente</h2>
  </div>
  </div>

  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 350px; width:100%">
<tr style="">
<td style="width: 100%;    float: left;" >
          
 
 
    
<input type="hidden" class="form-control" id="modulo" name="modulo" value="pacientes">
<input type="hidden" class="form-control" id="accion" name="accion" value="btnCrearPaciente">     

<div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">   

<label class="col-sm-1">Club:</label>

<div id=selectorDeClubes>

<div class="col-sm-2" >

    <select name="seleccionClubesModPacientes" class="form-control" id="seleccionClubesModPacientes">
    <option label="ninguno" value="ninguno" >Ninguno</option>
    {foreach from=$clubes item=club}
    {if $club->id eq $clubSeleccionado}
    <option label="{$club->nombre}" value="{$club->id}" selected>{$club->nombre}</option>

    {else}
    <option label="{$club->nombre}" value="{$club->id}">{$club->nombre}</option>
    {/if}
    {/foreach}
</select> 
</div>



<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportes>
<div class="col-sm-2">
    <select name="seleccionDeportesModPacientes" class="form-control" id="seleccionDeportesModPacientes">
    <option value="ninguno" selected>ninguno</option>
    </select>

</div>


<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexo>
<div class="col-sm-2">
    <select name="seleccionSexoModPacientes" class="form-control" id="seleccionSexoModPacientes">
    <option value="ninguno" selected>ninguno</option>
    </select>
</div>



<label class="col-sm-1">Division:</label>
<div id=seelctorDeDivisiones>
<div class="col-sm-2">
    <select name="seleccionDivisionesModPacientes" class="form-control" id="seleccionDivisionesModPacientes">
    <option value="ninguno" selected>ninguno</option>
    </select>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">   

<label class="col-sm-1">Seleccion:</label>

<div id=selectorDeSelecciones>

<div class="col-sm-2" >
    <select name="seleccionSeleccionesModPacientes" class="form-control" id="seleccionSeleccionesModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$selecciones item=seleccion}
    <option label="{$seleccion->nombre}" value="{$seleccion->id}">{$seleccion->nombre}</option>
    {/foreach}
</select> 
</div>



<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportesSeleccion>
<div class="col-sm-2">
    <select name="seleccionDeportesSeleccionModPacientes" class="form-control" id="seleccionDeportesSeleccionModPacientes">
    <option value="ninguno" selected>ninguno</option>
    </select>
</div>


<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoSelecciones>
<div class="col-sm-2">
    <select name="seleccionSexoSeleccionesModPacientes" class="form-control" id="seleccionSexoSeleccionesModPacientes">
    <option value="ninguno" selected>ninguno</option>
    </select>
</div>



<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisionesSelecciones>
<div class="col-sm-2">
    <select name="seleccionDivisionesSeleccionesModPacientes" class="form-control" id="seleccionDivisionesSeleccionesModPacientes">
    <option value="ninguno" selected>ninguno</option>
    </select>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">   
<div class="form-group">
 <label class="col-sm-1">Nombre:</label>
 <div class="col-sm-3">
     <input type="text" class="form-control" id="nombre" name="nombre" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre. Solo letras">
 </div>
 <label class="col-sm-1">Apellido:</label>
 <div class="col-sm-3">
     <input type="text" class="form-control" id="apellido" name="apellido" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el apellido. Solo letras">
 </div> 
 <label class="col-sm-1">DNI:</label>
 <div class="col-sm-2">
     <input type="text" class="form-control" id="dni" name="dni"  value=""  required pattern="^[0-9]+" title="Ingrese el DNI. Solo numeros">
 </div>


<br><br><br>
<div class="form-group"> 
 <label class="col-sm-1">Direccion:</label>
 <div class="col-sm-3">
   <input type="text" class="form-control" id="direccion"  name="direccion" value="" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la direccion.">
 </div> 
 <label class="col-sm-1">Obra Social:</label>
 <div class="col-sm-3">
  <input type="text" class="form-control" id="obra" name="obra" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese la obra social. Solo letras">
 </div>

 <label class="col-sm-1">Telefono:</label> 
 <div class="col-sm-2">
   <input type="text" class="form-control" id="telefono" name="telefono" value="" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
 </div>
</div>
<br><br>
<div class="form-group">
 <label class="col-sm-1">Nacimiento:</label>
 <div class="col-sm-3">
  <input type="date" class="form-control" id="nacimiento" name="nacimiento" value="" required  title="Ingrese la fecha de nacimiento">
 </div>
 <label class="col-sm-1">Correo Electronico:</label>
 <div class="col-sm-3">
  <input type="email" class="form-control" id="correo" name="correo" value="" required title="Ingrese el correo electronico.">
 </div>
 <label class="col-sm-1">Medico de Cabecera:</label>
 <div class="col-sm-2">
  <input type="text" class="form-control" id="medico" name="medico" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre del medico. Solo letras">
 </div>
</div>
<br><br><br>
<div class="form-group">
 <label class="col-sm-1">Ocupacion:</label>
 <div class="col-sm-3">
 <input type="text" class="form-control" id="ocupacion" name="ocupacion" value="" required pattern="^[a-zA-Z-\s]+" title="Ingrese la ocupacion. Solo letras">
 </div>

<label class="col-sm-1">Sexo:</label>
<div class="col-sm-2">
    <select name="sexo" class="form-control" id="sexo">
    <option label="Masculino"  value="masculino">Masculino</option>
    <option label="Femenino"  value="femenino">Femenino</option>
    </select>
</select>
</div>

 <label class="col-sm-1">Motivo de la Consulta:</label>
 <div class="col-sm-3">
 <textarea rows="4" cols="80" class="form-control" id="motivo" name="motivo" maxlength=250 required  title="Ingrese el motivo de la consulta. Solo letras" > 
 </textarea>
 </div>
</div>
</div>



         </td>
      </tr>
   </tbody>  
  </table> 
  </div>
<div class="form-group" align="center">
    
    <input type="submit" id="btnCrearPaciente" name="btnCrearPaciente" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearPaciente" name="btnCancelarCrearPaciente" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
    </div>

 </div>
</div>
</div>   
</form>
<script type="text/javascript" src="js/pacientes/funcionesAltaPacientesDinamico.js"></script>
