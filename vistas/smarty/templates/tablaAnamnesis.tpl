  <h2>Listado de Anamnesis</h2>

   <div style="text-align: center">
  <img name="{$paciente}" id="imgMostrarNuevoAnamnesis"  src="img/nuevo.png" align="CENTER"  style="cursor:pointer"/>
  </div>

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
      <th style="width: 50%;
    float: left;">Fecha de alta</th>
        <th style="width: 50%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$anamnesis item=anam}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 50%;    float: left;" > {$anam->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 50%;    float: left;"><img name="{$anam->id}" id="imgMostarActualizarAnamnesis" src="img/consultar.png" align="JUSTIFY" style="cursor:pointer"/>
         <img name="{$anam->id}" id="imgMostrarEliminarAnamnesis"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer"/>
         
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>




