
<h2>Graficar Somatocarta</h2>
<form id="graficaSomatocarta" method="post">

<input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}">


  
<p>Listado de mediciones antropometrica:</p> 
  
  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
      <th style="width: 10%;
    float: left;">Id</th>
        <th style="width: 15%;
    float: left;">Fecha de alta</th>
        <th style="width: 15%;
    float: left;">Peso Bruto</th>
        <th style="width: 15%;
    float: left;">Talla Corporal</th>
        <th style="width: 15%;
    float: left;">Talla Sentado</th>
        <th style="width: 30%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 150px; width:100%">
      {foreach from=$mediciones item=medi}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 10%;    float: left;" > {$medi->id}    </td>
        <td style="width: 15%;    float: left;" > {$medi->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 15%;    float: left;" > {$medi->pesobruto}    </td>
        <td style="width: 15%;    float: left;" > {$medi->tallacorporal}    </td>
        <td style="width: 15%;    float: left;" > {$medi->tallasentado}    </td>
        <td style="width: 30%;    float: left;">
            <img name="{$medi->id}" id="imgMostrarGraficaSomatocarta"  src="img/estadistica.png" align="JUSTIFY" style="cursor:pointer"/>
        </td>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>

 
</form>
