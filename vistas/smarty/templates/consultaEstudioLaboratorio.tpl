<h2>Consulta Estudio de Laboratorio Paciente:</h2> 
<h3>{$nombre} Fecha: {$estudio->fecha|date_format:" %d/%m/%y"}</h3>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 300px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

          <input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$estudio->paciente}">
          <input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
          <input type="hidden" class="form-control" id="idEstudioLaboratorio" name="idEstudioLaboratorio" value="{$estudio->id}">



<h3> Analisis de Sangre</h3><br>
<h4> Hemograma</h4><br>
<label class="col-sm-2">Globulos rojos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="globulosrojos" name="globulosrojos" value="{$estudio->globulosrojos}" disabled title="F(3.800.000-5.200.000) M(4.400.000-5.900.000) u/lts">
</div>

<label class="col-sm-2">Globulos Blancos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="globulosblancos" name="globulosblancos" value="{$estudio->globulosblancos}" disabled title="(4.000.000-10.000.000) u/lts">
</div>

<label class="col-sm-2">Plaquetas:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="plaquetas" name="plaquetas" value="{$estudio->plaquetas}" disabled title="(150.000-450.000) u/lts">
</div>

<br><br><br>


<label class="col-sm-2">Hemoglobina:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hemoglobina" name="hemoglobina" value="{$estudio->hemoglobina}" disabled title="F(11,7-15,7) M(13,3-17,7) grs/dl">
</div>

<label class="col-sm-2">Valor Hematocrito:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="hematocrito" name="hematocrito" value="{$estudio->hematocrito}" disabled title="F(34,9-46,9) M(39,8-52,2) %">
</div>

<label class="col-sm-2">Vol. Corpuscular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="corpuscularmedio" name="corpuscularmedio" value="{$estudio->corpuscularmedio}" disabled title="Volumen Corpuscular Medio(82-98) fl">
</div>

<br><br><br>

<label class="col-sm-2">HB Corpuscular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hbcorpuscularmedio" name="hbcorpuscularmedio" value="{$estudio->hbcorpuscularmedio}" disabled title="HB Corpuscular Media (26-34) pg">
</div>

<label class="col-sm-2">Conc. de HBCM:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hbcm" name="hbcm" value="{$estudio->hbcm}" disabled title="Concentracion de HBCM (32-36) grs/dl">
</div>

<br><br><br>

<h4> Formula Leucocitaria</h4><br>
<label class="col-sm-2">Neutrofilos encayados:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="neutrofilosenca" name="neutrofilosenca" value="{$estudio->neutrofilosenca}" disabled title="Neutrofilos encayados">
</div>

<label class="col-sm-2">Neutrofilos seg.:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="neutrofilosseg" name="neutrofilosseg" value="{$estudio->neutrofilosseg}" disabled title="Neutrofilos segmentados">
</div>

<label class="col-sm-2">Eocinofilos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="eocinifilos" name="eocinifilos" value="{$estudio->eocinifilos}" disabled title="Eocinofilos">
</div>

<br><br><br>

<label class="col-sm-2">Basofilos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="basofilos" name="basofilos" value="{$estudio->basofilos}" disabled title="Basofilos">
</div>

<label class="col-sm-2">Linfocitos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="linfocitos" name="linfocitos" value="{$estudio->linfocitos}" disabled title="Linfocitos">
</div>

<label class="col-sm-2">Monocitos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="monocitos" name="monocitos" value="{$estudio->monocitos}" disabled title="Monocitos">
</div>

<br><br><br>

<label class="col-sm-2">GLUCEMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="glucemia" name="glucemia" value="{$estudio->glucemia}" disabled title="GLUCEMIA (70-110) mg/dl">
</div>

<label class="col-sm-2">UREMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="uremia" name="uremia" value="{$estudio->uremia}" disabled title="UREMIA (15-50) mg/dl">
</div>

<label class="col-sm-2">URICEMIAF:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="uricemia" name="uricemia" value="{$estudio->uricemia}" disabled title="URICEMIAF(2-6) M(3-7) mg/dl">
</div>

<br><br><br>

<label class="col-sm-2">ACIDO URICO:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="acidourico" name="acidourico" value="{$estudio->acidourico}" disabled title="ACIDO URICO F(2-5) M(2,5-6) mg/ 100ml">
</div>

<label class="col-sm-2">CREATININEMIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="creatininemia" name="creatininemia" value="{$estudio->creatininemia}" disabled title="CREATININEMIA (0,7 -1,4) mg/dl">
</div>

<label class="col-sm-2">PROTEINAS TOTALES:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="proteinastotales" name="proteinastotales" value="{$estudio->proteinastotales}" disabled title="PROTEINAS TOTALES (6,1-6,8) grs %">
</div>

<br><br><br>

<label class="col-sm-2">ALBUMINAS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="albuminas" name="albuminas" value="{$estudio->albuminas}" disabled title="ALBUMINAS (3,5-4,8) grs %">
</div>

<label class="col-sm-2">COLESTEROL TOTAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="colesteroltotal" name="colesteroltotal" value="{$estudio->colesteroltotal}" disabled title="COLESTEROL TOTAL (hasta 200mlgrs)">
</div>

<label class="col-sm-2">LDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="ldl" name="ldl" value="{$estudio->ldl}" disabled title="LDL (hasta 100 mlgrs/dl)">
</div>

<br><br><br>

<label class="col-sm-2">HDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hdl" name="hdl" value="{$estudio->hdl}" disabled title="HDL (mas de 40mlgrs/dl)">
</div>

<label class="col-sm-2">COLESTEROL/HDL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="colesterolhdl" name="colesterolhdl" disabled value="{$estudio->colesterolhdl}" title="COLESTEROL/HDL (2-5)">
</div>

<label class="col-sm-2">TRIGLICERIDOS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="trigliceridos" name="trigliceridos" disabled value="{$estudio->trigliceridos}" title="TRIGLICERIDOS (hasta 150grs/dl)">
</div>

<br><br><br>

<label class="col-sm-2">PRESION ARTERIAL BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="presionarterial" name="presionarterial" disabled value="{$estudio->presionarterial}" title="PRESION ARTERIAL BASAL">
</div>

<label class="col-sm-2">HERGOMETRIA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="hergometria" name="hergometria" disabled  value="{$estudio->hergometria}" title="HERGOMETRIA">
</div>

<br><br><br>

<h4> DATOS CARDIOLOGICOS</h4><br>

<label class="col-sm-2">FRECUENCIA CARDICA BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiaca" name="frecuenciacardiaca" disabled value="{$estudio->frecuenciacardiaca}" title="FRECUENCIA CARDICA BASAL"> 
</div>

<label class="col-sm-2">FRECUENCIA CARDICA MAXIMA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiacamaxima" name="frecuenciacardiacamaxima" disabled value="{$estudio->frecuenciacardiacamaxima}" title="FRECUENCIA CARDICA MAXIMA">
</div>

<label class="col-sm-2">PRESION ARTERIAL MAXIMA:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="presionarterialmaxima" name="presionarterialmaxima" disabled value="{$estudio->presionarterialmaxima}" title="PRESION ARTERIAL MAXIMA">
</div>

<br><br><br>

<label class="col-sm-2">VO2 BASAL:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="vo2basal" name="vo2basal" value="{$estudio->vo2basal}" disabled title="VO2 BASAL">
</div>

<label class="col-sm-2">VO2 MAXIMO:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="vo2maximo" name="vo2maximo" value="{$estudio->vo2maximo}" disabled title="VO2 MAXIMO">
</div>

<label class="col-sm-2">PROTOCOLO APLICADO:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="protocolo" name="protocolo" value="{$estudio->protocolo}" disabled title="PROTOCOLO APLICADO">
</div>

<br><br><br>

<label class="col-sm-2">F. CARDIACA MAX. AL.:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="frecuenciacardiomax" name="frecuenciacardiomax" disabled value="{$estudio->frecuenciacardiomax}" title="FRECUENCIA CARDIACA MAXIMA ALCANZADA">
</div>

<label class="col-sm-2">MINUTOS EJERCITADOS:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="minutos" name="minutos" value="{$estudio->minutos}" disabled title="MINUTOS EJERCITADOS">
</div>

<label class="col-sm-2">TEST DETENIDO POR:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="testdetenido" name="testdetenido" disabled value="{$estudio->testdetenido}" title="TEST DETENIDO POR: (FIN DE PROTOCOLO-CANSANCIO, ETC)">
</div>

<br><br><br>


<label class="col-sm-2">CONCLUSION:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="conclusion" name="conclusion" disabled value="{$estudio->conclusion}" title="CONCLUSION">
</div>
          
          
<br><br><br>
<br><br>
<div class="form-group" align="center">
    
    <input type="submit" id="btnImprimirEstudioLaboratorio" name="btnImprimirEstudioLaboratorio" class="btn btn-default" value="Imprimir" />
    <input  type="button" id="btnCancelarImprimirEstudioLaboratorio" name="btnCancelarImprimirEstudioLaboratorio" class="btn btn-default" value="Cancelar" />
</div>          

</td>
</tr>
    </tbody>  
  </table>  


