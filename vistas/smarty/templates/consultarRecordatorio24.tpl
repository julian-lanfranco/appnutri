 <h2>Actualizar Recordatorios 24 hs Paciente:</h2> 
<h3>{$nombre} Fecha: {$rec->fecha|date_format:" %d/%m/%y"}</h3>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 300px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

<input type="hidden" class="form-control" id="idPaciente" value="{$rec->paciente}">
<input type="hidden" class="form-control" id="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idRecordatorio" value="{$rec->id}">
  <h2>Editar Recordatorio 24 hs</h2>
 <!-- <form id="formClub"> -->


      <div class="form-group">    
         <label class="col-sm-10 control-label">Id del Recordatorio: </label>
         <div class="col-sm-10">
         <input type="text" class="form-control" id="idRecordatorio" value="{$rec->id}" disabled>
         </div>
      </div>

      <div class="form-group">    
         <label class="col-sm-10 control-label">Hora de Despertar: </label>
         <div class="col-sm-10">
         <input type="text" class="form-control" id="horadespertado" value="{$rec->horadespertado}" disabled>
         </div>
      </div>


      <div class="form-group">    
         <label class="col-sm-10 control-label">Hora de Dormir: </label>
         <div class="col-sm-10">
         <input type="text" class="form-control" id="horadormido" value="{$rec->horadormido}" disabled>
         </div>
      </div>


   {foreach from=$ingestas item=inges}
   <label class="col-sm-10 control-label">Tipo de Ingesta 
   <input type="text" class="form-control" id="horadormido" value="{$inges->tipodeingesta}">
   </label>

   <label class="col-sm-10 control-label">Alimento 
   <input type="text" class="form-control" id="horadormido" value="{$inges->alimento}">
   </label>

   <label class="col-sm-10 control-label">Cantidad
   <input type="text" class="form-control" id="horadormido" value="{$inges->cantidad}">
   </label>
   <br>

  {/foreach}
  </select>

</td>
</tr>
    </tbody>  
  </table> 

<div align="center">
    <button id="btnImprimirConsultaRecordatorio24" class="btn btn-default">Imprimir</button>
    <button id="btnVolverConsultaRecordatorio24" class="btn btn-default">Volver</button>
<div>  