  <h2>Listado de Planes Alimentarios</h2>


 <div style="text-align: center">
 <img name="{$paciente}" id="imgMostrarNuevoPlan"  src="img/nuevo.png" align="CENTER"  style="cursor:pointer" height="35" width="35"/>
 </div>
  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 50%;
    float: left;">Fecha de alta</th>
        <th style="width: 50%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$planes item=plan}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 50%;    float: left;" > {$plan->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 50%;    float: left;">
            <img name="{$plan->id}" id="imgMostrarConsultarPlan"  src="img/consultar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
            <img name="{$plan->id}" id="imgMostrarEstadisticaPlan"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
            <img name="{$plan->id}" id="imgMostrarEliminarPlan"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
