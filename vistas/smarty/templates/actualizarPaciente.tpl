<h2>Editar Paciente</h2>
<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 500px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
<form  id="actualizapaciente" method="post">  


<label class="col-sm-1">Club:</label>

<div id=selectorDeClubes>

<div class="col-sm-2" >

    <select name="seleccionClubesModPacientes" class="form-control" id="seleccionClubesModPacientes">
    <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$listaClubes item=club}
    {if $club->id eq $clubSeleccionado}
    <option label="{$club->nombre}"  value="{$club->id}" selected>{$club->nombre|upper}</option>
    {else}
    <option label="{$club->nombre}"  value="{$club->id}">{$club->nombre|upper}</option>
    {/if}
    {/foreach}
</select> 
</div>



<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportes>
<div class="col-sm-2">
    <select name="seleccionDeportesModPacientes" class="form-control" id="seleccionDeportesModPacientes">
    {foreach from=$listaDeportes item=deporte}
    {if $deporte eq $deporteSeleccionado}
    <option label="{$deporte}"  value="{$deporte}" selected>{$deporte|upper}</option>
    {else}
    <option label="{$deporte}"  value="{$deporte}">{$deporte|upper}</option>
    {/if}
    {/foreach}
</select>
</div>


<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexo>
<div class="col-sm-2">
    <select name="seleccionSexoModPacientes" class="form-control" id="seleccionSexoModPacientes">
    {foreach from=$listaSexos item=sexo}
    {if $sexo eq $sexoSeleccionado}
    <option label="{$sexo}"  value="{$sexo}" selected>{$sexo|upper}</option>
    {else}
    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>
    {/if}
    {/foreach}
</select>
</div>


<label class="col-sm-1">Division:</label>
<div id=seelctorDeDivisiones>
<div class="col-sm-2">
    <select name="seleccionDivisionesModPacientes" class="form-control" id="seleccionDivisionesModPacientes">
    {foreach from=$listaDivisiones item=division}
    {if $division->id eq $divisionSeleccionada}
    <option label="{$division->nombre}"  value="{$division->id}" selected>{$division->nombre}|upper}</option>
    {else}
    <option label="{$division->nombre}"  value="{$division->id}">{$division->nombre}|upper}</option>
    {/if}
    {/foreach}
</select>
</div>
</div>
</div>
</div>
</div>

<br><br><br>

<label class="col-sm-1">Seleccion:</label>

<div id=selectorDeSelecciones>

<div class="col-sm-2" >
    <select name="seleccionSeleccionesModPacientes" class="form-control" id="seleccionSeleccionesModPacientes">
     <option label="ninguno" value="ninguno">Ninguno</option>
    {foreach from=$listaSelecciones item=seleccion}
    {if $seleccion->id eq $clubSeleccionadoSel}
    <option label="{$seleccion->nombre}"  value="{$seleccion->id}" selected>{$seleccion->nombre}|upper}</option>
    {else}
    <option label="{$seleccion->nombre}"  value="{$seleccion->id}">{$seleccion->nombre}|upper}</option>
    {/if}
    {/foreach}
</select> 
</div>

<label class="col-sm-1">Deporte:</label>
<div id=selectorDeDeportesSeleccion>
<div class="col-sm-2">
    <select name="seleccionDeportesSeleccionModPacientes" class="form-control" id="seleccionDeportesSeleccionModPacientes">
    {foreach from=$listaDeportesSel item=deporte}
    {if $deporte eq $deporteSeleccionadoSel}
    <option label="{$deporte}"  value="{$deporte}" selected>{$deporte|upper}</option>
    {else}
    <option label="{$deporte}"  value="{$deporte}">{$deporte|upper}</option>
    {/if}
    {/foreach}
</select>
</div>


<label class="col-sm-1">Genero:</label>
<div id=selectorDeSexoSelecciones>
<div class="col-sm-2">
    <select name="seleccionSexoSeleccionesModPacientes" class="form-control" id="seleccionSexoSeleccionesModPacientes">
    {foreach from=$listaSexosSel item=sexo}
    {if $sexo eq $sexoSeleccionadoSel}
    <option label="{$sexo}"  value="{$sexo}" selected>{$sexo|upper}</option>
    {else}
    <option label="{$sexo}"  value="{$sexo}">{$sexo|upper}</option>
    {/if}
    {/foreach}
</select>
</div>



<label class="col-sm-1">Division:</label>
<div id=selectorDeDivisionesSelecciones>
<div class="col-sm-2">
    <select name="seleccionDivisionesSeleccionModPacientes" class="form-control" id="seleccionDivisionesSeleccionModPacientes">
    {foreach from=$listaDivisionesSel item=division}
    {if $division->id eq $divisionSeleccionadaSel}
    <option label="{$division->nombre}"  value="{$division->id}" selected>{$division->nombre}|upper}</option>
    {else}
    <option label="{$division->nombre}"  value="{$division->id}" selected>{$division->nombre}|upper}</option>
    {/if}
    {/foreach}
</select>
</div>
</div>
</div>
</div>
</div>
<br><br><br>



   
      <label class="col-sm-1">Id del Paciente:</label>
      <div class="col-sm-3">
          <input type="text" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}" readonly>
      </div> 
      
      <label class="col-sm-1">Nombre:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="nombre" name="nombre" value="{$nombre}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre. Solo letras">
      </div>
      
      <label class="col-sm-1">Apellido:</label>
      <div class="col-sm-2">
      <input type="text" class="form-control" id="apellido" name="apellido" value="{$apellido}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el apellido. Solo letras">
      </div>
 <br><br><br>     
      <label class="col-sm-1">DNI:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="dni" name="dni" value="{$dni}" required pattern="^[0-9]+" title="Ingrese el DNI. Solo numeros">
      </div>
      
      <label class="col-sm-1">Direccion:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="direccion" name="direccion" value="{$direccion}" required pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la direccion. Solo letras">
      </div>
      
      <label class="col-sm-1">Telefono:</label>
      <div class="col-sm-2">
      <input type="text" class="form-control" id="telefono" name="telefono" value="{$telefono}" required pattern="^[0-9]+" title="Ingrese el telefono. Solo numeros">
      </div>
 <br><br> <br>    
      <label class="col-sm-1">Obra Social:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="obra" name="obra" value="{$obra}" required pattern="^[a-zA-Z-\s]+" title="Ingrese la obra social. Solo letras">
      </div>
      
      <label class="col-sm-1">Nacimiento:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="nacimiento" name="nacimiento" value="{$nacimiento}" required  title="Ingrese la fecha de nacimiento">
      </div>
      
      <label class="col-sm-1">Correo Electronico:</label>
      <div class="col-sm-2">
      <input type="email" class="form-control" id="correo" name="correo" value="{$correo}" required title="Ingrese el correo electronico. Solo letras">
      </div>
  <br><br><br>    
      <label class="col-sm-1">Medico de Cabecera:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="medico" name="medico" value="{$medico}" required pattern="^[a-zA-Z-\s]+" title="Ingrese el nombre del medico. Solo letras">
      </div>
      
      
      <label class="col-sm-1">Ocupacion:</label>
      <div class="col-sm-3">
      <input type="text" class="form-control" id="ocupacion" name="ocupacion" value="{$ocupacion}" required pattern="^[a-zA-Z-\s]+" title="Ingrese la ocupacion. Solo letras">
      </div>
 <br><br><br><br>      
      <label class="col-sm-1">Motivo de la Consulta:</label>
      <div class="col-sm-2">
      <textarea rows="4" cols="80" id="motivo" name="motivo" required pattern="^[a-zA-Z-\s]+" title="Ingrese el motivo de la consulta. Solo letras">
     {$motivo}
     </textarea>
      </div>
      

<br><br><br>
 <br><br>         


<div class="form-group" align="center">
    <input type="submit" id="btnActualizarPaciente" name="btnActualizarPaciente" class="btn btn-default" value="Actualizar"/>
    <input type="button" id="btnCancelarActualizarPaciente" name="btnCancelarActualizarPaciente" class="btn btn-default" value="Cancelar" />
</div>    

       </td>
      </tr>
   </tbody>  
  </table> 
</form>
<script type="text/javascript" src="js/pacientes/funcionesModPacientesDinamico.js"> </script>
