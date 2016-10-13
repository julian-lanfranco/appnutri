<h2>Consulta Medicion Simple Paciente:</h2> 
<h3>{$nombre} Fecha: {$medicion->fecha|date_format:" %d/%m/%y"}</h3>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 300px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

<input type="hidden" class="form-control" id="idPaciente" value="{$medicion->paciente}">
<input type="hidden" class="form-control" id="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idMedicionSimple" value="{$medicion->id}">


<label class="col-sm-1">Peso:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="peso" name="peso" value="{$medicion->peso}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el peso en kgs.">
</div>

<label class="col-sm-1">Talla:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="talla"  name="talla" value="{$medicion->talla}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la talla en cms.">
</div>

<label class="col-sm-1">Talla Sentado:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="tallasentado" name="tallasentado" value="{$medicion->tallasentado}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la talla sentado en cms.">
</div>
<br><br><br>
<label class="col-sm-1">Circunf. Cintura:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="circucintura" name="circucintura" value="{$medicion->tallasentado}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la circunferencia de la cintura en cms.">
</div>

<label class="col-sm-1">Circunf. Brazo:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="circubrazo" name="circubrazo" value="{$medicion->circubrazo}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la circunferencia del brazo en cms.">
</div>

<label class="col-sm-1">Pliegue Tricipital:</label>
<div class="col-sm-2"> 
<input type="text" class="form-control" id="plieguetricipital" name="plieguetricipital" value="{$medicion->plieguetricipital}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el pliegue tricipital.">
</div>
<br><br><br>
<label class="col-sm-1">Pliegue Sub Escapular:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="plieguesubescapular" name="plieguesubescapular" value="{$medicion->plieguesubescapular}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el pliegue sub escapular.">
</div>

<label class="col-sm-1">Pliegue Supra Espinal:</label> 
<div class="col-sm-2">
    <input type="text" class="form-control" id="plieguesupraespinal" name="plieguesupraespinal" value="{$medicion->plieguesupraespinal}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el pliegue supra especial."> 
</div>

<label class="col-sm-1">Pliegue Abdominal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pliegueabdominal" name="pliegueabdominal" value="{$medicion->pliegueabdominal}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el pliegue abdominal.">
</div>
<br><br><br><br>
<label class="col-sm-1">Pliegue Muslo Medio:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="plieguemuslomedio" name="plieguemuslomedio" value="{$medicion->plieguemuslomedio}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el pliegue muslo medio.">
</div>

<label class="col-sm-1">Pliegue Pantorrilla:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="plieguepantorrilla" name="plieguepantorrilla" value="{$medicion->plieguepantorrilla}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el pliegue pantorrilla.">
</div>

<label class="col-sm-1">Sumatoria 6 Pliegues:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="sumatoria6" name="sumatoria6" value="{$medicion->sumatoria6}" disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese la sumatoria de pliegues.">
</div>

</td>
</tr>
    </tbody>  
  </table>  

     

 <div class="form-group" align="center">
    <button id="btnImprimirMedicionSimple" class="btn btn-default">Imprimir</button>
    <button id="btnCancelarImprimirMedicionSimple" class="btn btn-default">Volver</button>
 </div> 


