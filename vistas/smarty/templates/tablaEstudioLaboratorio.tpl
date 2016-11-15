  <h2>Listado de Estudio Laboratorio</h2>

  <div style="text-align: center">
  <img name="{$paciente}" id="imgMostraNuevoEstudioLaboratorio"  src="img/nuevo.png" align="CENTER"  style="cursor:pointer" height="35" width="35"/>
  </div>
  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 50%;
    float: left;">Fecha de alta</th>
        <th style="width: 50%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$estudios item=estu}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 50%;    float: left;" > {$estu->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 50%;    float: left;"><img name="{$estu->id}" id="imgMostarActualizarEstudioLaboratorio" src="img/consultar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35">
            <img name="{$estu->id}" id="imgMostrarEliminarEstudioLaboratorio"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>




