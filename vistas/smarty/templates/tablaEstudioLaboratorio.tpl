  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Listado de Estudios Lab.</h2>
  </div>

  <div div class="col-md-2">

  <img name="{$paciente}" id="imgMostraNuevoEstudioLaboratorio"  src="img/nuevaAnamnesis.png" align="right"  style="cursor:pointer" height="60" width="60"/>
  </div>

  </div>

  <div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

  <table class="table table-striped header-fixed" style="width: 100%;">

  <tr>
<th style="width: 33%;float: left;text-align: center;">Id</th>
<th style="width: 33%;float: left;text-align: center;">Fecha de alta</th>
<th style="width: 34%;float: left;text-align: center;">Acción</th>
  </tr>

    <tbody style="display: block;  overflow-y: auto;    float: left;height: 200px; width:100%">
      {foreach from=$estudios item=estu}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;text-align: center;" > {$estu->id}    </td>
        <td style="width: 33%;    float: left;text-align: center;" > {$estu->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 34%;    float: left;text-align: center;"><img name="{$estu->id}" id="imgMostarActualizarEstudioLaboratorio" src="img/consultar.png" align="JUSTIFY" style="cursor:pointer" height="30" width="30"/>
            <img name="{$estu->id}" id="imgMostrarEliminarEstudioLaboratorio"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer" height="30" width="30"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>





