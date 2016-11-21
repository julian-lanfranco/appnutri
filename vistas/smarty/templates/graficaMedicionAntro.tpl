  <form id="graficamedicionantro" method="post">
  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<div class="col-md-12" >
<h2>Graficar Mediciones Antropometricas</h2>
</div>

</div>

<input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}">
  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
   <div class="col-md-8" > 
    <p>Recordatorio:Debe contar con dos o mas mediciones. La fecha desde debe ser menor a la fecha hasta
          y no deben ser iguales, cumpliendo con esto se habilita el boton graficar.
      </p> 
      </div>  
      </div>
  </div>   
    <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<label class="col-sm-2">Fecha Desde:</label>
  <div class="col-sm-4">
      <select name="seleccionFechaDesde" class="form-control" id="seleccionFechaDesde" title="Seleccion una fecha" required>
 <option></option>
    {foreach from=$mediciones item=medi}
   <option   value="{$medi->fecha}" >{$medi->fecha|date_format:" %d/%m/%y"} </option>
   {/foreach}
   </select>
  </div>
<br><br>
<label class="col-sm-2">Fecha Hasta:</label>
<div class="col-sm-4">  
  <select name="seleccionFechaHasta" 
          class="form-control" id="seleccionFechaHasta" title="Seleccione una fecha" required min="{$MedicionSeleccionadaF}">
  <option></option>
    {foreach from=$mediciones item=medi}
   <option   value="{$medi->fecha}" >{$medi->fecha|date_format:" %d/%m/%y"} </option>
   
   {/foreach}
  </select>
</div>  
</div>


  
<p>Listado de mediciones antropometrica:</p> 
  
  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
      <th style="width: 20%;
    float: left;">Id</th>
        <th style="width: 20%;
    float: left;">Fecha de alta</th>
        <th style="width: 20%;
    float: left;">Peso Bruto</th>
        <th style="width: 20%;
    float: left;">Talla Corporal</th>
        <th style="width: 20%;
    float: left;">Talla Sentado</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 150px; width:100%">
      {foreach from=$mediciones item=medi}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 20%;    float: left;" > {$medi->id}    </td>
        <td style="width: 20%;    float: left;" > {$medi->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 20%;    float: left;" > {$medi->pesobruto}    </td>
        <td style="width: 20%;    float: left;" > {$medi->tallacorporal}    </td>
        <td style="width: 20%;    float: left;" > {$medi->tallasentado}    </td>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>



<div class="form-group" align="center">
    <input type="button" id="btnGraficaMedicionAntropometricas" name="btnGraficaMedicionAntropometricas" disabled class="btn btn-default" value="Graficar" />
    <input  type="button" id="btnCancelarGraficaMedicionAntropometricas" name="btnCancelarGraficaMedicionAntropometricas" class="btn btn-default" value="Cancelar" />
</div>  
</form>

