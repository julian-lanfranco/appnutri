<form  id="actualizamedicionantro" method="post">
    
<h2>Actualizar Medicion Antropometrica</h2><br>
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
    <input type="text" class="form-control" id="pesobruto" name="pesobruto" value="{$medicion->pesobruto}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el peso en kgs.">
</div>

<br><br><br>
<label class="col-sm-4">Talla Corporal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="tallacorporal"  name="tallacorporal" value="{$medicion->tallacorporal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla corporal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Talla Sentado:</label>
<div class="col-sm-4">
<input type="text" class="form-control" id="tallasentado" name="tallasentado" value="{$medicion->tallasentado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla sentado en cms.">
</div>
<br><br><br>

<h3>Diametros</h3><br>

<label class="col-sm-4">Biacromial:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="biacromial" name="biacromial" value="{$medicion->biacromial}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro biacromial en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Torax Tranverso:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="toraxtranverso" name="toraxtranverso" value="{$medicion->toraxtranverso}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax tranverso en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Torax Antero-Posterior:</label>
<div class="col-sm-4"> 
<input type="text" class="form-control" id="toraxantero" name="toraxantero" value="{$medicion->toraxantero}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax anter-posterior en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Bi-iliocrestideo:</label>
<div class="col-sm-4">
<input type="text" class="form-control" id="biiliocrestideo" name="biiliocrestideo" value="{$medicion->biiliocrestideo}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro bi-iliocrestideo en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Humeral (biepicodilar):</label> 
<div class="col-sm-4">
    <input type="text" class="form-control" id="humeral" name="humeral" value="{$medicion->humeral}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro humeral (biepicodilar) en cms."> 
</div>
<br><br><br>

<label class="col-sm-4">Femoral (biepicodilar):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="femoral" name="femoral" value="{$medicion->femoral}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro femoral (biepicodilar) en cms.">
</div>
<br><br><br><br>

<h3>Perimetros</h3><br>

<label class="col-sm-4">Cabeza:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="cabeza" name="cabeza" value="{$medicion->cabeza}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cabeza cms.">
</div>
<br><br><br>

<label class="col-sm-4">Brazo Relajado:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="brazorelajado" name="brazorelajado" value="{$medicion->brazorelajado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del brazo relajado en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Brazo Flexionado en Tension:</label>
<div class="col-sm-4">
<input type="text" class="form-control" id="brazoflexionado" name="brazoflexionado" value="{$medicion->brazoflexionado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el brazo flexionado en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Antebrazo Maximo:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="antebrazomaximo" name="antebrazomaximo" value="{$medicion->antebrazomaximo}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el antebrazo maximo en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Torax Mesoesternal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="toraxmesoesternal" name="toraxmesoesternal" value="{$medicion->toraxmesoesternal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del torax mesoesternal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Cintura (minima):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="cintura" name="cintura" value="{$medicion->cintura}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cintura en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Cadera (maximo):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="cadera" name="cadera" value="{$medicion->cadera}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cadera en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Muslo (maximo):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="muslomax" name="muslomax" value="{$medicion->muslomax}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo maximo en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Muslo (medial):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="muslomed" name="muslomed" value="{$medicion->muslomed}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo medio en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Pantorilla (maxima):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="pantorrilla" name="pantorrilla" value="{$medicion->pantorrilla}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese perimetro de la pantorrilla maxima en cms.">
</div>
<br><br><br><br>

<h3>Pliegues Cutaneos (mm)</h3><br>
<label class="col-sm-4">Triceps:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="triceps" name="triceps" value="{$medicion->triceps}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue de triceps en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Subescapular:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="subescapular" name="subescapular" value="{$medicion->subescapular}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue subescupular en cms.">
</div>

<br><br><br>
<label class="col-sm-4">Subpraespinal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="subpraespinal" name="subpraespinal" value="{$medicion->subpraespinal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue supraespinal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Abdominal:</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="abdominal" name="abdominal" value="{$medicion->subpraespinal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese pliegue abdominal en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Muslo (medial):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="muslomed2" name="muslomed2" value="{$medicion->muslomed2}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue muslo medio en cms.">
</div>
<br><br><br>

<label class="col-sm-4">Pantorilla (maxima):</label>
<div class="col-sm-4">
    <input type="text" class="form-control" id="pantorrilla2" name="pantorrilla2" value="{$medicion->pantorrilla2}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue pantorrilla maximo en cms.">
</div>

</td>
</tr>
    </tbody>  
  </table>  
     
<div class="form-group" align="center">
    
    <input type="submit" id="btnModMedicionAntropometricas" name="btnModMedicionAntropometricas" class="btn btn-default" value="Guardar" />
    <input  type="button" id="btnCancelarModMedicionAntropometricas" name="btnCancelarModMedicionAntropometricas" class="btn btn-default" value="Cancelar" />
</div>

         </td>
      </tr>
   </tbody>  
  </table> 
</form>
<script type="text/javascript" src="js/medicionesAntropometricas/funcionesModMedicionesAntroDinamico.js"></script>

