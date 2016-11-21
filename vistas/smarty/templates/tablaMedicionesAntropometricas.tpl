  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Listado de Mediciones Antro.</h2>
  </div>

  <div div class="col-md-2">


  <img name="{$paciente}" id="imgMostrarNuevoMedAntro"  src="img/nuevaAnamnesis.png" align="CENTER"  style="cursor:pointer" height="60" width="60"/>

  <img name="{$paciente}" id="imgMostrarGraficaEvolutiva"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer" height="60" width="60"/>

  </div>

  </div>

  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 0px;
                          padding-left: 00px;
                          margin: 10px;">

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
  <th style="width: 12%;
    float: left;text-align: center;">Id</th>
        <th style="width: 12%;
    float: left;text-align: center;">Fecha de alta</th>
        <th style="width: 12%;
    float: left;text-align: center;">Peso Bruto</th>
        <th style="width: 12%;
    float: left;text-align: center;">Talla Corporal</th>
        <th style="width: 12%;
    float: left;text-align: center;">Talla Sentado</th>
        <th style="width: 36%; float: left;text-align: center;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$mediciones item=medi}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 12%;    float: left;text-align: center;" > {$medi->id}    </td>
        <td style="width: 12%;    float: left;text-align: center;" > {$medi->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 12%;    float: left;text-align: center;" > {$medi->pesobruto}    </td>
        <td style="width: 12%;    float: left;text-align: center;" > {$medi->tallacorporal}    </td>
        <td style="width: 12%;    float: left;text-align: center;" > {$medi->tallasentado}    </td>
        <td style="width: 36%;    float: left;text-align: center;">

        <img name="{$medi->id}" id="imgMostarActualizarMedicionAntro" src="img/consultar.png" align="JUSTIFY" style="cursor:pointer" height="30" width="30"/>
        <img name="{$medi->id}" id="imgMostrarGraficaSomatocarta"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer" height="30" width="30"/>
        <img name="{$medi->id}" id="imgMostrarEliminarMedicionesAntro"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer" height="30" width="30"/>
            
  
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>
  </div>





