  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >

  <h2>Listado de Recordatorios 24 hs</h2>
  </div>


  <div div class="col-md-2">
  <img name="{$paciente}" id="imgMostrarNuevoRecordatorio24"  src="img/nuevaAnamnesis.png" align="right"  style="cursor:pointer" height="60" width="60"/>
  </div>
  </div>
  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


  <table class="table header-fixed" style="width: 100%;">

      <tr>
        <th style="width: 50%;float: left;text-align: center;">Fecha de alta</th>
        <th style="width: 50%;float: left;text-align: center;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$recordatorios item=rec}
      <tr style="width: 100%;     display: inline-table;text-align: center;">
        <td style="width: 50%;    float: left;text-align: center;" > {$rec->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 50%;    float: left;text-align: center;">
            <img name="{$rec->id}" id="imgMostrarConsultarRecordatorio24"  src="img/consultar.png" align="center" style="cursor:pointer" height="30" width="30"/>
            <img name="{$rec->id}" id="imgMostrarEstadisticaRecordatorio24"  src="img/estadistica.png" align="center" style="cursor:pointer" height="30" width="30"/>
            <img name="{$rec->id}" id="imgMostrarEliminarRecordatorio24"  src="img/eliminar.png" align="center" style="cursor:pointer" height="30" width="30"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>

