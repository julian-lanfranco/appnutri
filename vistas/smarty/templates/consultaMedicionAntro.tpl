<h2>Consulta Medicion Antropometrica:</h2><br>
<h4 class="col-sm-4">Medicion creada el: {$medicion->fecha|date_format:" %d/%m/%y"}</h4>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 300px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          
          
<input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name="idClub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="idMedicionAntro" name="idMedicionAntro" value="{$medicion->id}">


<h3>Datos Basicos</h3><br>
<label class="col-sm-4">Peso Brutos:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="pesobruto" name="pesobruto" value="{$medicion->pesobruto}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el peso en kgs.">
</div>

<br><br><br>
<label class="col-sm-4">Talla Corporal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="tallacorporal"  name="tallacorporal" value="{$medicion->tallacorporal}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese la talla corporal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Talla Sentado:</label>
<div class="col-sm-4">
<input type="text" class="form-control" id="tallasentado" name="tallasentado" value="{$medicion->tallasentado}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese la talla sentado en cms.">
</div>
<br><br><br>

<h3>Diametros</h3><br>

<label class="col-sm-4">Biacromial:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="biacromial" name="biacromial" value="{$medicion->biacromial}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el diametro biacromial en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Tórax Tranverso:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="toraxtranverso" name="toraxtranverso" value="{$medicion->toraxtranverso}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el diametro del tórax tranverso en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Tórax Antero-Posterior:</label>
<div class="col-sm-4"> 
<input type="text" class="form-control" id="toraxantero" name="toraxantero" value="{$medicion->toraxantero}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el diametro del tórax anter-posterior en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Bi-iliocrestideo:</label>
<div class="col-sm-4">
<input type="text" class="form-control" id="biiliocrestideo" name="biiliocrestideo" value="{$medicion->biiliocrestideo}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el diametro bi-iliocrestideo en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Humeral (biepicodilar):</label> 
<div class="col-sm-4">
    <input type="text" class="form-control" id="humeral" name="humeral" value="{$medicion->humeral}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el diametro humeral (biepicodilar) en cms."> 
</div>
<br><br><br>

<label class="col-sm-4">Femoral (biepicodilar):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="femoral" name="femoral" value="{$medicion->femoral}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el diametro femoral (biepicodilar) en cms.">
</div>
<br><br><br><br>

<h3>Perímetros</h3><br>

<label class="col-sm-4">Cabeza:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="cabeza" name="cabeza" value="{$medicion->cabeza}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de la cabeza cms.">
</div>
<br><br><br>

<label class="col-sm-4">Brazo Relajado:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="brazorelajado" name="brazorelajado" value="{$medicion->brazorelajado}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro del brazo relajado en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Brazo Flexionado en Tension:</label>
<div class="col-sm-4">
<input type="text" class="form-control" id="brazoflexionado" name="brazoflexionado" value="{$medicion->brazoflexionado}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de el brazo flexionado en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Antebrazo Máximo:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="antebrazomaximo" name="antebrazomaximo" value="{$medicion->antebrazomaximo}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de el antebrazo máximo en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Tórax Mesoesternal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="toraxmesoesternal" name="toraxmesoesternal" value="{$medicion->toraxmesoesternal}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro del tórax mesoesternal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Cintura (mínima):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="cintura" name="cintura" value="{$medicion->cintura}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de la cintura en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Cadera (máximo):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="cadera" name="cadera" value="{$medicion->cadera}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de la cadera en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Muslo (máximo):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="muslomax" name="muslomax" value="{$medicion->muslomax}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de el muslo máximo en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Muslo (medial):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="muslomed" name="muslomed" value="{$medicion->muslomed}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el perímetro de el muslo medio en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Pantorilla (máxima):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="pantorrilla" name="pantorrilla" value="{$medicion->pantorrilla}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese perímetro de la pantorrilla máxima en cms.">
</div>
<br><br><br><br>

<h3>Pliegues Cutaneos (mm)</h3><br>
<label class="col-sm-4">Tríceps:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="triceps" name="triceps" value="{$medicion->triceps}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el pliegue de tríceps en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Subescapular:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="subescapular" name="subescapular" value="{$medicion->subescapular}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el pliegue subescupular en cms.">
</div>

<br><br><br>
<label class="col-sm-4">Subpraespinal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="subpraespinal" name="subpraespinal" value="{$medicion->subpraespinal}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el pliegue supraespinal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Abdominal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="abdominal" name="abdominal" value="{$medicion->subpraespinal}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese pliegue abdominal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Muslo (medial):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="muslomed2" name="muslomed2" value="{$medicion->muslomed2}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el pliegue muslo medio en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Pantorilla (máxima):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="pantorrilla2" name="pantorrilla2" value="{$medicion->pantorrilla2}" disabled pattern="^[0-9 .]+[^.]" title="Ingrese el pliegue pantorrilla máximo en cms.">
</div>

</td>
</tr>
    </tbody>  
  </table>  
     

 <div class="form-group" align="center">
    <button id="btnImprimirMedicionAntro" class="btn btn-default">Imprimir</button>
    <button id="btnCancelarImprimirMedicionAntro" class="btn btn-default">Volver</button>
 </div> 


