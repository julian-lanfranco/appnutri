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
         <label class="col-sm-2 control-label">Id del Recordatorio: </label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="idRecordatorio" value="{$rec->id}">
         </div>
      </div>
      <br><br>
      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora de Despertar: </label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horadespertado" value="{$rec->horadespertado}">
         </div>
      </div>
      <br><br>
      
      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora de Desayuno: </label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horadesayuno" value="{$rec->horadesayuno}">
         </div>
   
         <label class="col-sm-2 control-label">Desayuno: </label>
         <div class="col-sm-6">
         <input type="text" class="form-control" id="desayuno" value="{$rec->desayuno}">
         </div>
      </div>   
      <br>
      <br>
      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora Media MaÃ±ana: </label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horamediamanana" value="{$rec->horamediamanana}">
         </div>
   
         <label class="col-sm-2 control-label">Media MaÃ±ana: </label>
         <div class="col-sm-6">
         <input type="text" class="form-control" id="mediamanana" value="{$rec->mediamanana}">
         </div>
      </div>   
      <br>
      <br>
      
      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora Almuerzo: </label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horaalmuerzo" value="{$rec->horaalmuerzo}">
         </div>
   
         <label class="col-sm-2 control-label">Almuerzo: </label>
         <div class="col-sm-6">
         <input type="text" class="form-control" id="almuerzo" value="{$rec->almuerzo}">
         </div>
      </div>   
      <br>
      <br>

      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora Merienda:</label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horamerienda" value="{$rec->horamerienda}">
         </div>
   
         <label class="col-sm-2 control-label">Merienda: </label>
         <div class="col-sm-6">
         <input type="text" class="form-control" id="merienda" value="{$rec->merienda}">
         </div>
      </div>   
      <br>
      <br>      
    
     
      
      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora Colacion:</label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horacolacion" value="{$rec->horacolacion}">
         </div>
   
         <label class="col-sm-2 control-label">Colacion:</label>
         <div class="col-sm-6">
         <input type="text" class="form-control" id="colacion" value="{$rec->colacion}">
         </div>
      </div>   
      <br>
      <br>
            <div class="form-group">    
         <label class="col-sm-2 control-label">Hora Cena:</label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horacena" value="{$rec->horacena}">
         </div>
   
         <label class="col-sm-2 control-label">Cena:</label>
         <div class="col-sm-6">
         <input type="text" class="form-control" id="cena" value="{$rec->cena}">
         </div>
      </div>   
      <br>
      <br>
      <div class="form-group">    
         <label class="col-sm-2 control-label">Hora de Dormir: </label>
         <div class="col-sm-2">
         <input type="text" class="form-control" id="horadormido" value="{$rec->horadormido}">
         </div>
      </div>
      <br><br>
</td>
</tr>
    </tbody>  
  </table> 
<div align="center">
    <button id="btnActualizarRecordatorio24" class="btn btn-default">Actualizar</button>
    <button id="btnCancelarActualizarRecordatorio24" class="btn btn-default">Cancelar</button>
</div>
 <!-- </form> -->


