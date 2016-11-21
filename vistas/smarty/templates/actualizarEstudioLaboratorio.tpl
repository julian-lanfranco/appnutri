<form  id="actualizaestudiolaboratorio" method="post">
<div class="row">
<div class="col-md-12">
<div class="container-fluid">

<h4>Actualizar Estudio Laboratorio</h4>
<h4>Paciente: {$nombre} </h4> 
<h4>Fecha de Realizacion del Estudio: {$estudio->fecha|date_format:" %d/%m/%y"}</h4>

<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 400px; ">
<tr style="">
<td style="width: 100%; float: left;" >

          <input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$estudio->paciente}">
          <input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
          <input type="hidden" class="form-control" id="idEstudioLaboratorio" name="idEstudioLaboratorio" value="{$estudio->id}">

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<h4> Hemograma</h4><br>
<label class="col-sm-2">Globulos rojos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="globulosrojos" name="globulosrojos" value="{$estudio->globulosrojos}" required title="F(3.800.000-5.200.000) M(4.400.000-5.900.000) u/lts">
</div>

<label class="col-sm-2">Globulos Blancos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="globulosblancos" name="globulosblancos" value="{$estudio->globulosblancos}" title="(4.000.000-10.000.000) u/lts">
</div>

<label class="col-sm-2">Plaquetas:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="plaquetas" name="plaquetas" value="{$estudio->plaquetas}" title="(150.000-450.000) u/lts">
</div>

<br><br><br>


<label class="col-sm-2">Hemoglobina:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hemoglobina" name="hemoglobina" value="{$estudio->hemoglobina}" title="F(11,7-15,7) M(13,3-17,7) grs/dl">
</div>

<label class="col-sm-2">Valor Hematocrito:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="hematocrito" name="hematocrito" value="{$estudio->hematocrito}" title="F(34,9-46,9) M(39,8-52,2) %">
</div>

<label class="col-sm-2">Vol. Corpuscular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="corpuscularmedio" name="corpuscularmedio" value="{$estudio->corpuscularmedio}" title="Volumen Corpuscular Medio(82-98) fl">
</div>

<br><br><br>

<label class="col-sm-2">HB Corpuscular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hbcorpuscularmedio" name="hbcorpuscularmedio" value="{$estudio->hbcorpuscularmedio}" title="HB Corpuscular Media (26-34) pg">
</div>

<label class="col-sm-2">Conc. de HBCM:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hbcm" name="hbcm" value="{$estudio->hbcm}" title="Concentracion de HBCM (32-36) grs/dl">
</div>

</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


<h4> Formula Leucocitaria</h4><br>
<label class="col-sm-2">Neutrofilos encayados:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="neutrofilosenca" name="neutrofilosenca" value="{$estudio->neutrofilosenca}" title="Neutrofilos encayados">
</div>

<label class="col-sm-2">Neutrofilos seg.:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="neutrofilosseg" name="neutrofilosseg" value="{$estudio->neutrofilosseg}" title="Neutrofilos segmentados">
</div>

<label class="col-sm-2">Eocinofilos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="eocinifilos" name="eocinifilos" value="{$estudio->eocinifilos}" title="Eocinofilos">
</div>

<br><br><br>

<label class="col-sm-2">Basofilos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="basofilos" name="basofilos" value="{$estudio->basofilos}" title="Basofilos">
</div>

<label class="col-sm-2">Linfocitos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="linfocitos" name="linfocitos" value="{$estudio->linfocitos}" title="Linfocitos">
</div>

<label class="col-sm-2">Monocitos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="monocitos" name="monocitos" value="{$estudio->monocitos}" title="Monocitos">
</div>

<br><br><br>

<label class="col-sm-2">GLUCEMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="glucemia" name="glucemia" value="{$estudio->glucemia}" title="GLUCEMIA (70-110) mg/dl">
</div>

<label class="col-sm-2">UREMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="uremia" name="uremia" value="{$estudio->uremia}" title="UREMIA (15-50) mg/dl">
</div>

<label class="col-sm-2">URICEMIAF:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="uricemia" name="uricemia" value="{$estudio->uricemia}" title="URICEMIAF(2-6) M(3-7) mg/dl">
</div>

<br><br><br>

<label class="col-sm-2">ACIDO URICO:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="acidourico" name="acidourico" value="{$estudio->acidourico}" title="ACIDO URICO F(2-5) M(2,5-6) mg/ 100ml">
</div>

<label class="col-sm-2">CREATININEMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="creatininemia" name="creatininemia" value="{$estudio->creatininemia}" title="CREATININEMIA (0,7 -1,4) mg/dl">
</div>

<label class="col-sm-2">PROTEINAS TOTALES:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="proteinastotales" name="proteinastotales" value="{$estudio->proteinastotales}" title="PROTEINAS TOTALES (6,1-6,8) grs %">
</div>

<br><br><br>

<label class="col-sm-2">ALBUMINAS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="albuminas" name="albuminas" value="{$estudio->albuminas}" title="ALBUMINAS (3,5-4,8) grs %">
</div>

<label class="col-sm-2">COLESTEROL TOTAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="colesteroltotal" name="colesteroltotal" value="{$estudio->colesteroltotal}" title="COLESTEROL TOTAL (hasta 200mlgrs)">
</div>

<label class="col-sm-2">LDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="ldl" name="ldl" value="{$estudio->ldl}" title="LDL (hasta 100 mlgrs/dl)">
</div>

<br><br><br>

<label class="col-sm-2">HDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hdl" name="hdl" value="{$estudio->hdl}" title="HDL (mas de 40mlgrs/dl)">
</div>

<label class="col-sm-2">COLESTEROL/HDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="colesterolhdl" name="colesterolhdl" value="{$estudio->colesterolhdl}" title="COLESTEROL/HDL (2-5)">
</div>

<label class="col-sm-2">TRIGLICERIDOS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="trigliceridos" name="trigliceridos" value="{$estudio->trigliceridos}" title="TRIGLICERIDOS (hasta 150grs/dl)">
</div>

<br><br><br>

<label class="col-sm-2">PRESION ARTERIAL BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="presionarterial" name="presionarterial" value="{$estudio->presionarterial}" title="PRESION ARTERIAL BASAL">
</div>

<label class="col-sm-2">HERGOMETRIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hergometria" name="hergometria" value="{$estudio->hergometria}" title="HERGOMETRIA">
</div>

</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<h4> DATOS CARDIOLOGICOS</h4><br>

<label class="col-sm-2">FRECUENCIA CARDICA BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiaca" name="frecuenciacardiaca" value="{$estudio->frecuenciacardiaca}" title="FRECUENCIA CARDICA BASAL"> 
</div>

<label class="col-sm-2">FRECUENCIA CARDICA MAXIMA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiacamaxima" name="frecuenciacardiacamaxima" value="{$estudio->frecuenciacardiacamaxima}" title="FRECUENCIA CARDICA MAXIMA">
</div>

<label class="col-sm-2">PRESION ARTERIAL MAX.</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="presionarterialmaxima" name="presionarterialmaxima" value="{$estudio->presionarterialmaxima}" title="PRESION ARTERIAL MAXIMA">
</div>

<br><br><br>

<label class="col-sm-2">VO2 BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="vo2basal" name="vo2basal" value="{$estudio->vo2basal}" title="VO2 BASAL">
</div>

<label class="col-sm-2">VO2 MAX.</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="vo2maximo" name="vo2maximo" value="{$estudio->vo2maximo}" title="VO2 MAXIMO">
</div>

<label class="col-sm-2">PROTOCOLO APLICADO:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="protocolo" name="protocolo" value="{$estudio->protocolo}" title="PROTOCOLO APLICADO">
</div>

<br><br><br>

<label class="col-sm-2">F. CARDIACA MAX. AL.:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiomax" name="frecuenciacardiomax" value="{$estudio->frecuenciacardiomax}" title="FRECUENCIA CARDIACA MAXIMA ALCANZADA">
</div>

<label class="col-sm-2">MINUTOS EJERCITADOS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="minutos" name="minutos" value="{$estudio->minutos}" title="MINUTOS EJERCITADOS">
</div>

<label class="col-sm-2">TEST DETENIDO POR:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="testdetenido" name="testdetenido" value="{$estudio->testdetenido}" title="TEST DETENIDO POR: (FIN DE PROTOCOLO-CANSANCIO, ETC)">
</div>

</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">



<label class="col-md-12">CONCLUSION:</label>
<div class="col-md-12">
    <input type="text" class="form-control" id="conclusion" name="conclusion" value="{$estudio->conclusion}" title="CONCLUSION">
</div>
</div>

         </td>
      </tr>
   </tbody>  
  </table> 

<div class="form-group" align="center">
    
    <input type="submit" id="btnGuardarActualizarEstudioLaboratorio" name="btnGuardarActualizarEstudioLaboratorio" class="btn btn-default" value="Guardar" />
    <input  type="button" id="btnCancelarGuardarActualizarEstudioLaboratorio" name="btnCancelarGuardarActualizarEstudioLaboratorio" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>
</div>
</div>
</div>

</form>
<script type="text/javascript" src="js/estudiosLaboratorio/funcionesModEstudiosLaboratorioDinamico.js"></script>

