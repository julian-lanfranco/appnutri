  <h2>Listado de Recordatorios 24 hs</h2>

 <label>Paciente: {$nombre}</label>

  <p>Seleccione un Recordatorio 24 hs para cualquier consulta:</p> 
  
<input type="hidden" class="form-control" id="idPaciente" value="{$paciente}">

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
      <th style="width: 33%;
    float: left;">Id</th>
        <th style="width: 33%;
    float: left;">Fecha de alta</th>
        <th style="width: 33%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$recordatorios item=rec}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" > {$rec->id}    </td>
        <td style="width: 33%;    float: left;" > {$rec->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 33%;    float: left;">
            <img name="{$rec->id}" id="imgMostrarEliminarRecordatorio24"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer"/>
            <img name="{$rec->id}" id="imgMostrarConsultarRecordatorio24"  src="img/consultar.png" align="JUSTIFY" style="cursor:pointer"/>
            <img name="{$rec->id}" id="imgMostrarEstadisticaRecordatorio24"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
