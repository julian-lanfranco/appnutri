  <h2>Listado de Planes Alimentarios</h2>

 <label>Paciente: {$nombre}</label>

  <p>Seleccione un Plan para cualquier consulta:</p> 
  
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
      {foreach from=$planes item=plan}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" > {$plan->id}    </td>
        <td style="width: 33%;    float: left;" > {$plan->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 33%;    float: left;">
            <img name="{$plan->id}" id="imgMostrarEliminarPlan"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer"/>
            <img name="{$plan->id}" id="imgMostrarConsultarPlan"  src="img/consultar.png" align="JUSTIFY" style="cursor:pointer"/>
            <img name="{$plan->id}" id="imgMostrarEstadisticaPlan"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
