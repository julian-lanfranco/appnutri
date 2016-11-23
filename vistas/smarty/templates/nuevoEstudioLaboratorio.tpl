<form  id="estudiolaboratorio" method="post">
<div class="row">
<div class="col-md-12">
<div class="container-fluid">

  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Nuevo Estudio de Laboratorio</h2>
  </div>
</div>


<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 450px; ">
<tr style="">
<td style="width: 100%; float: left;" >

<input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name="idClub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<h4> Hemograma</h4>
<label class="col-sm-2">Glóbulos rojos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="globulosrojos" name="globulosrojos" value="" required title="F(3.800.000-5.200.000) M(4.400.000-5.900.000) u/lts">
</div>

<label class="col-sm-2">Glóbulos Blancos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="globulosblancos" name="globulosblancos" value="" title="(4.000.000-10.000.000) u/lts">
</div>

<label class="col-sm-2">Plaquetas:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="plaquetas" name="plaquetas" value="" title="(150.000-450.000) u/lts">
</div>

<br><br><br>


<label class="col-sm-2">Hemoglobina:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hemoglobina" name="hemoglobina" value="" title="F(11,7-15,7) M(13,3-17,7) grs/dl">
</div>

<label class="col-sm-2">Valor Hematocrito:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="hematocrito" name="hematocrito" value="" title="F(34,9-46,9) M(39,8-52,2) %">
</div>

<label class="col-sm-2">Vol. Corpuscular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="corpuscularmedio" name="corpuscularmedio" value="" title="Volumen Corpuscular Medio(82-98) fl">
</div>

<br><br><br>

<label class="col-sm-2">HB Corpuscular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hbcorpuscularmedio" name="hbcorpuscularmedio" value="" title="HB Corpuscular Media (26-34) pg">
</div>

<label class="col-sm-2">Conc. de HBCM:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hbcm" name="hbcm" value="" title="Concentracion de HBCM (32-36) grs/dl">
</div>


</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<h4> Fórmula Leucocitaria</h4><br>
<label class="col-sm-2">Neutrófilos encayados:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="neutrofilosenca" name="neutrofilosenca" value="" title="Neutrófilos encayados">
</div>

<label class="col-sm-2">Neutrófilos seg.:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="neutrofilosseg" name="neutrofilosseg" value="" title="Neutrófilos segmentados">
</div>

<label class="col-sm-2">Eocinófilos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="eocinifilos" name="eocinifilos" value="" title="Eocinófilos">
</div>

<br><br><br>

<label class="col-sm-2">Basófilos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="basofilos" name="basofilos" value="" title="Basófilos">
</div>

<label class="col-sm-2">Linfocitos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="linfocitos" name="linfocitos" value="" title="Linfocitos">
</div>

<label class="col-sm-2">Monocitos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="monocitos" name="monocitos" value="" title="Monocitos">
</div>

<br><br><br>

<label class="col-sm-2">GLUCEMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="glucemia" name="glucemia" value="" title="GLUCEMIA (70-110) mg/dl">
</div>

<label class="col-sm-2">UREMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="uremia" name="uremia" value="" title="UREMIA (15-50) mg/dl">
</div>

<label class="col-sm-2">URICEMIAF:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="uricemia" name="uricemia" value="" title="URICEMIAF(2-6) M(3-7) mg/dl">
</div>

<br><br><br>

<label class="col-sm-2">ÁCIDO ÚRICO:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="acidourico" name="acidourico" value="" title="ÁCIDO ÚRICO F(2-5) M(2,5-6) mg/ 100ml">
</div>

<label class="col-sm-2">CREATININEMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="creatininemia" name="creatininemia" value="" title="CREATININEMIA (0,7 -1,4) mg/dl">
</div>

<label class="col-sm-2">PROTEÍNAS TOTALES:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="proteinastotales" name="proteinastotales" value="" title="PROTEÍNAS TOTALES (6,1-6,8) grs %">
</div>

<br><br><br>

<label class="col-sm-2">ALBUMINAS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="albuminas" name="albuminas" value="" title="ALBUMINAS (3,5-4,8) grs %">
</div>

<label class="col-sm-2">COLESTEROL TOTAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="colesteroltotal" name="colesteroltotal" value="" title="COLESTEROL TOTAL (hasta 200mlgrs)">
</div>

<label class="col-sm-2">LDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="ldl" name="ldl" value="" title="LDL (hasta 100 mlgrs/dl)">
</div>

<br><br><br>

<label class="col-sm-2">HDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hdl" name="hdl" value="" title="HDL (mas de 40mlgrs/dl)">
</div>

<label class="col-sm-2">COLESTEROL/HDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="colesterolhdl" name="colesterolhdl" value="" title="COLESTEROL/HDL (2-5)">
</div>

<label class="col-sm-2">TRIGLICÉRIDOS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="trigliceridos" name="trigliceridos" value="" title="TRIGLICÉRIDOS (hasta 150grs/dl)">
</div>

<br><br><br>

<label class="col-sm-2">PRESIÓN ARTERIAL BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="presionarterial" name="presionarterial" value="" title="PRESIÓN ARTERIAL BASAL">
</div>

<label class="col-sm-2">ERGOMETRIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hergometria" name="hergometria" value="" title="ERGOMETRIA">
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<h4> DATOS CARDIOLOGICOS</h4><br>

<label class="col-sm-2">FRECUENCIA CARDÍACA BASAL</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiaca" name="frecuenciacardiaca" value="" title="FRECUENCIA CARDÍACA BASAL"> 
</div>

<label class="col-sm-2">FRECUENCIA CARDÍACA MAX</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiacamaxima" name="frecuenciacardiacamaxima" value="" title="FRECUENCIA CARDÍACA MAXIMA">
</div>

<label class="col-sm-2">PRESIÓN ARTERIAL MAX</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="presionarterialmaxima" name="presionarterialmaxima" value="" title="PRESIÓN ARTERIAL MAXIMA">
</div>

<br><br><br>

<label class="col-sm-2">VO2 BASAL</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="vo2basal" name="vo2basal" value="" title="VO2 BASAL">
</div>

<label class="col-sm-2">VO2 MÁXIMO</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="vo2maximo" name="vo2maximo" value="" title="VO2 MÁXIMO">
</div>

<label class="col-sm-2">PROTOCOLO APLICADO</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="protocolo" name="protocolo" value="" title="PROTOCOLO APLICADO">
</div>

<br><br><br>

<label class="col-sm-2">F. CARDÍACA MAX. AL.</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiomax" name="frecuenciacardiomax" value="" title="FRECUENCIA CARDÍACA MÁXIMA ALCANZADA">
</div>

<label class="col-sm-2">MINUTOS EJERCITADOS</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="minutos" name="minutos" value="" title="MINUTOS EJERCITADOS">
</div>

<label class="col-sm-2">TEST DETENIDO POR</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="testdetenido" name="testdetenido" value="" title="TEST DETENIDO POR: (FIN DE PROTOCOLO-CANSANCIO, ETC)">
</div>

</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


<label class="col-md-12">CONCLUSIÓN:</label>
<div class="col-md-12">
    <input type="text" class="form-control" id="conclusion" name="conclusion" value="" title="CONCLUSIÓN">
</div>

</div>

         </td>
      </tr>
   </tbody>  
  </table> 

<div class="form-group" align="center">
    
    <input type="submit" id="btnCrearEstudioLaboratorio" name="btnCrearEstudioLaboratorio" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearEstudioLaboratorio" name="btnCancelarCrearEstudioLaboratorio" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>
</div>
</div>
</div>

</form>
<script type="text/javascript" src="js/estudiosLaboratorio/funcionesAltaEstudiosLaboratorioDinamico.js"></script>
