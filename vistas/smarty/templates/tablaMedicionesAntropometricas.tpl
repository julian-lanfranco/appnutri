  <h2>Listado de Mediciones Antropometricas</h2>

  
  <div style="text-align: center">
  <img name="{$paciente}" id="imgMostrarNuevoMedAntro"  src="img/nuevo.png" align="CENTER"  style="cursor:pointer" height="35" width="35"/>
  <img name="{$paciente}" id="imgMostrarGraficaEvolutiva"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
  </div>
  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
        <th style="width: 12%;
    float: left;">Fecha de alta</th>
        <th style="width: 12%;
    float: left;">Peso Bruto</th>
        <th style="width: 12%;
    float: left;">Talla Corporal</th>
        <th style="width: 12%;
    float: left;">Talla Sentado</th>
        <th style="width: 48%; float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$mediciones item=medi}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 12%;    float: left;" > {$medi->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 12%;    float: left;" > {$medi->pesobruto}    </td>
        <td style="width: 12%;    float: left;" > {$medi->tallacorporal}    </td>
        <td style="width: 12%;    float: left;" > {$medi->tallasentado}    </td>
        <td style="width: 48%;    float: left;"><img name="{$medi->id}" id="imgMostarActualizarMedicionAntro" src="img/consultar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35">
            <img name="{$medi->id}" id="imgMostrarGraficaSomatocarta"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
            <img name="{$medi->id}" id="imgMostrarEliminarMedicionesAntro"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer" height="35" width="35"/>
            
  
            

        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>




