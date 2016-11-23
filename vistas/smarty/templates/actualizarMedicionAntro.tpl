<form  id="actualizamedicionantro" method="post">
<div class="row">
<div class="col-md-12">
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

<h2>Consulta Medicion Antropometrica</h2>
</div>
</div>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 450px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >
          
          
<input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name="idClub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="idMedicionAntro" name="idMedicionAntro" value="{$medicion->id}">

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">

<h3>Datos Basicos</h3>
<label class="col-md-2">Peso Brutos:</label>
<div class="col-md-2">
    <input type="text" class="form-control" id="pesobruto" name="pesobruto" value="{$medicion->pesobruto}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el peso en kgs.">
</div>


<label class="col-md-2">Talla Corporal:</label>
<div class="col-md-2">
    <input type="text" class="form-control" id="tallacorporal"  name="tallacorporal" value="{$medicion->tallacorporal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla corporal en cms.">
</div>


<label class="col-md-2">Talla Sentado:</label>
<div class="col-md-2">
<input type="text" class="form-control" id="tallasentado" name="tallasentado" value="{$medicion->tallasentado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla sentado en cms.">
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


<h3>Diametros</h3>

<label class="col-md-3">Biacromial:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="biacromial" name="biacromial" value="{$medicion->biacromial}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro biacromial en cms.">
</div>


<label class="col-md-3">Tórax Tranverso:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="toraxtranverso" name="toraxtranverso" value="{$medicion->toraxtranverso}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del tórax tranverso en cms.">
</div>


<label class="col-md-3">Tórax Antero-Posterior:</label>
<div class="col-md-1"> 
<input type="text" class="form-control" id="toraxantero" name="toraxantero" value="{$medicion->toraxantero}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del tórax anter-posterior en cms.">
</div>

<br><br><br>
<label class="col-md-3">Bi-iliocrestideo:</label>
<div class="col-md-1">
<input type="text" class="form-control" id="biiliocrestideo" name="biiliocrestideo" value="{$medicion->biiliocrestideo}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro bi-iliocrestideo en cms.">
</div>


<label class="col-md-3">Humeral (biepicodilar):</label> 
<div class="col-md-1">
    <input type="text" class="form-control" id="humeral" name="humeral" value="{$medicion->humeral}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro humeral (biepicodilar) en cms."> 
</div>


<label class="col-md-3">Femoral (biepicodilar):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="femoral" name="femoral" value="{$medicion->femoral}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro femoral (biepicodilar) en cms.">
</div>
</div>


 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


<h3>Perímetros</h3><br>

<label class="col-md-3">Cabeza:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="cabeza" name="cabeza" value="{$medicion->cabeza}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de la cabeza cms.">
</div>


<label class="col-md-3">Brazo Relajado:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="brazorelajado" name="brazorelajado" value="{$medicion->brazorelajado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro del brazo relajado en cms.">
</div>


<label class="col-md-3">Brazo Flexionado en Tension:</label>
<div class="col-md-1">
<input type="text" class="form-control" id="brazoflexionado" name="brazoflexionado" value="{$medicion->brazoflexionado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de el brazo flexionado en cms.">
</div>
<br><br><br>

<label class="col-md-3">Antebrazo Máximo:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="antebrazomaximo" name="antebrazomaximo" value="{$medicion->antebrazomaximo}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de el antebrazo máximo en cms.">
</div>


<label class="col-md-3">Tórax Mesoesternal:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="toraxmesoesternal" name="toraxmesoesternal" value="{$medicion->toraxmesoesternal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro del tórax mesoesternal en cms.">
</div>


<label class="col-md-3">Cintura (mínima):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="cintura" name="cintura" value="{$medicion->cintura}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de la cintura en cms.">
</div>
<br><br><br>

<label class="col-md-3">Cadera (máximo):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="cadera" name="cadera" value="{$medicion->cadera}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de la cadera en cms.">
</div>


<label class="col-md-3">Muslo (máximo):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="muslomax" name="muslomax" value="{$medicion->muslomax}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de el muslo maximo en cms.">
</div>


<label class="col-md-3">Muslo (medial):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="muslomed" name="muslomed" value="{$medicion->muslomed}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perímetro de el muslo medio en cms.">
</div>
<br><br><br>

<label class="col-md-3">Pantorilla (máxima):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="pantorrilla" name="pantorrilla" value="{$medicion->pantorrilla}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese perímetro de la pantorrilla máxima en cms.">
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


<h3>Pliegues Cutaneos (mm)</h3><br>
<label class="col-md-3">Tríceps:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="triceps" name="triceps" value="{$medicion->triceps}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue de tríceps en cms.">
</div>


<label class="col-md-3">Subescapular:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="subescapular" name="subescapular" value="{$medicion->subescapular}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue subescupular en cms.">
</div>


<label class="col-md-3">Subpraespinal:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="subpraespinal" name="subpraespinal" value="{$medicion->subpraespinal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue supraespinal en cms.">
</div>
<br><br><br>

<label class="col-md-3">Abdominal:</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="abdominal" name="abdominal" value="{$medicion->subpraespinal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese pliegue abdominal en cms.">
</div>


<label class="col-md-3">Muslo (medial):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="muslomed2" name="muslomed2" value="{$medicion->muslomed2}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue muslo medio en cms.">
</div>


<label class="col-md-3">Pantorilla (máxima):</label>
<div class="col-md-1">
    <input type="text" class="form-control" id="pantorrilla2" name="pantorrilla2" value="{$medicion->pantorrilla2}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue pantorrilla máximo en cms.">
</div>
</div>

</td>
</tr>
    </tbody>  
  </table>  
     
<div class="form-group" align="center">
    
    <input type="submit" id="btnModMedicionAntropometricas" name="btnModMedicionAntropometricas" class="btn btn-default" value="Guardar" />
    <input  type="button" id="btnCancelarModMedicionAntropometricas" name="btnCancelarModMedicionAntropometricas" class="btn btn-default" value="Cancelar" />
      <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>

         </td>
      </tr>
   </tbody>  
  </table>
  </div>
  </div>
  </div>
  </div> 
</form>
<script type="text/javascript" src="js/medicionesAntropometricas/funcionesModMedicionesAntroDinamico.js"></script>

