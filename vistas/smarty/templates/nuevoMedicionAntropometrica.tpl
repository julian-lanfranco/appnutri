<form  id="medicionantropometrica" method="post">
<div class="row">
<div class="col-md-12">
<div class="container-fluid">
<div class="row">
<h4>Medicion Antropometrica:</h4>
<h4 class="col-sm-4">Nueva:</h4>
<h4 class="col-sm-4">Ultima: {$medicion1->fecha|date_format:" %d/%m/%y"}</h4>
<h4 class="col-sm-4">Penultima: {$medicion2->fecha|date_format:" %d/%m/%y"}</h4>
</div>


<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 450px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

           
          
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

<h3>Datos Basicos</h3>
<label class="col-sm-2">Peso Brutos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pesobruto" name="pesobruto" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el peso en kgs.">
</div>

<label class="col-sm-2">Peso Brutos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pesobruto1" name="pesobruto1" value="{$medicion1->pesobruto}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el peso en kgs.">
</div>

<label class="col-sm-2">Peso Brutos:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pesobruto2" name="pesobruto2" value="{$medicion2->pesobruto}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el peso en kgs.">
</div>
<br><br><br>
<label class="col-sm-2">Talla Corporal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="tallacorporal"  name="tallacorporal" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla corporal en cms.">
</div>
<label class="col-sm-2">Talla Corporal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="tallacorporal1"  name="tallacorporal1" value="{$medicion1->tallacorporal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla corporal en cms.">
</div>
<label class="col-sm-2">Talla Corporal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="tallacorporal2"  name="tallacorporal2" value="{$medicion2->tallacorporal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla corporal en cms.">
</div>
<br><br><br>

<label class="col-sm-2">Talla Sentado:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="tallasentado" name="tallasentado" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla sentado en cms.">
</div>
<label class="col-sm-2">Talla Sentado:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="tallasentado1" name="tallasentado1" value="{$medicion1->tallasentado}" disabled  pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla sentado en cms.">
</div>
<label class="col-sm-2">Talla Sentado:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="tallasentado2" name="tallasentado2" value="{$medicion2->tallasentado}" disabled  pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese la talla sentado en cms.">
</div>
</div>


 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<h3>Diametros</h3>

<label class="col-sm-2">Biacromial:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="biacromial" name="biacromial" value="{$medicion1->biacromial}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro biacromial en cms.">
</div>
<label class="col-sm-2">Biacromial:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="biacromial1" name="biacromial1" value="{$medicion1->biacromial}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro biacromial en cms.">
</div>
<label class="col-sm-2">Biacromial:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="biacromial2" name="biacromial2" value="{$medicion2->biacromial}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro biacromial en cms.">
</div>


<br><br><br>
<label class="col-sm-2">Torax Tranverso:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="toraxtranverso" name="toraxtranverso" value="{$medicion1->toraxtranverso}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax tranverso en cms.">
</div>
<label class="col-sm-2">Torax Tranverso:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="toraxtranverso1" name="toraxtranverso1" value="{$medicion1->toraxtranverso}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax tranverso en cms.">
</div>
<label class="col-sm-2">Torax Tranverso:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="toraxtranverso2" name="toraxtranverso2" value="{$medicion2->toraxtranverso}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax tranverso en cms.">
</div>

<br><br><br>
<label class="col-sm-2">Torax Antero-Posterior:</label>
<div class="col-sm-2"> 
<input type="text" class="form-control" id="toraxantero" name="toraxantero" value="{$medicion1->toraxantero}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax anter-posterior en cms.">
</div>
<label class="col-sm-2">Torax Antero-Posterior:</label>
<div class="col-sm-2"> 
<input type="text" class="form-control" id="toraxantero1" name="toraxantero1" value="{$medicion1->toraxantero}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax anter-posterior en cms.">
</div>
<label class="col-sm-2">Torax Antero-Posterior:</label>
<div class="col-sm-2"> 
<input type="text" class="form-control" id="toraxantero2" name="toraxantero2" value="{$medicion2->toraxantero}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro del torax anter-posterior en cms.">
</div>

<br><br><br>
<label class="col-sm-2">Bi-iliocrestideo:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="biiliocrestideo" name="biiliocrestideo" value="{$medicion1->biiliocrestideo}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro bi-iliocrestideo en cms.">
</div>
<label class="col-sm-2">Bi-iliocrestideo:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="biiliocrestideo1" name="biiliocrestideo1" value="{$medicion1->biiliocrestideo}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro bi-iliocrestideo en cms.">
</div>
<label class="col-sm-2">Bi-iliocrestideo:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="biiliocrestideo2" name="biiliocrestideo2" value="{$medicion2->biiliocrestideo}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro bi-iliocrestideo en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Humeral (biepicodilar):</label> 
<div class="col-sm-2">
    <input type="text" class="form-control" id="humeral" name="humeral" value="{$medicion1->humeral}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro humeral (biepicodilar) en cms."> 
</div>
<label class="col-sm-2">Humeral (biepicodilar):</label> 
<div class="col-sm-2">
    <input type="text" class="form-control" id="humeral1" name="humeral1" value="{$medicion1->humeral}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro humeral (biepicodilar) en cms."> 
</div>
<label class="col-sm-2">Humeral (biepicodilar):</label> 
<div class="col-sm-2">
    <input type="text" class="form-control" id="humeral2" name="humeral2" value="{$medicion2->humeral}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro humeral (biepicodilar) en cms."> 
</div>
<br><br><br>
<label class="col-sm-2">Femoral (biepicodilar):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="femoral" name="femoral" value="{$medicion1->femoral}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro femoral (biepicodilar) en cms.">
</div>
<label class="col-sm-2">Femoral (biepicodilar):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="femoral1" name="femoral1" value="{$medicion1->femoral}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro femoral (biepicodilar) en cms.">
</div>
<label class="col-sm-2">Femoral (biepicodilar):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="femoral2" name="femoral2" value="{$medicion2->femoral}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el diametro femoral (biepicodilar) en cms.">
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<h3>Perimetros</h3>
<label class="col-sm-2">Cabeza:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cabeza" name="cabeza" value="{$medicion1->cabeza}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cabeza cms.">
</div>
<label class="col-sm-2">Cabeza:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cabeza1" name="cabeza1" value="{$medicion1->cabeza}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cabeza cms.">
</div>
<label class="col-sm-2">Cabeza:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cabeza2" name="cabeza2" value="{$medicion2->cabeza}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cabeza cms.">
</div>
<br><br><br>
<label class="col-sm-2">Brazo Relajado:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="brazorelajado" name="brazorelajado" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del brazo relajado en cms.">
</div>
<label class="col-sm-2">Brazo Relajado:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="brazorelajado1" name="brazorelajado1" value="{$medicion1->brazorelajado}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del brazo relajado en cms.">
</div>
<label class="col-sm-2">Brazo Relajado:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="brazorelajado2" name="brazorelajado2" value="{$medicion2->brazorelajado}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del brazo relajado en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Brazo Flexionado en Tension:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="brazoflexionado" name="brazoflexionado" value="{$medicion1->brazoflexionado}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el brazo flexionado en cms.">
</div>
<label class="col-sm-2">Brazo Flexionado en Tension:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="brazoflexionado1" name="brazoflexionado1" value="{$medicion1->brazoflexionado}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el brazo flexionado en cms.">
</div>
<label class="col-sm-2">Brazo Flexionado en Tension:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="brazoflexionado2" name="brazoflexionado2" value="{$medicion2->brazoflexionado}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el brazo flexionado en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Antebrazo Maximo:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="antebrazomaximo" name="antebrazomaximo" value="{$medicion1->antebrazomaximo}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el antebrazo maximo en cms.">
</div>
<label class="col-sm-2">Antebrazo Maximo:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="antebrazomaximo1" name="antebrazomaximo1" value="{$medicion1->antebrazomaximo}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el antebrazo maximo en cms.">
</div>
<label class="col-sm-2">Antebrazo Maximo:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="antebrazomaximo2" name="antebrazomaximo2" value="{$medicion2->antebrazomaximo}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el antebrazo maximo en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Torax Mesoesternal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="toraxmesoesternal" name="toraxmesoesternal" value="{$medicion1->toraxmesoesternal}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del torax mesoesternal en cms.">
</div>
<label class="col-sm-2">Torax Mesoesternal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="toraxmesoesternal1" name="toraxmesoesternal1" value="{$medicion1->toraxmesoesternal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del torax mesoesternal en cms.">
</div>
<label class="col-sm-2">Torax Mesoesternal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="toraxmesoesternal2" name="toraxmesoesternal2" value="{$medicion2->toraxmesoesternal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro del torax mesoesternal en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Cintura (minima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cintura" name="cintura" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cintura en cms.">
</div>
<label class="col-sm-2">Cintura (minima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cintura1" name="cintura1" value="{$medicion1->cintura}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cintura en cms.">
</div>
<label class="col-sm-2">Cintura (minima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cintura2" name="cintura2" value="{$medicion2->cintura}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cintura en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Cadera (maximo):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cadera" name="cadera" value="{$medicion1->cadera}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cadera en cms.">
</div>
<label class="col-sm-2">Cadera (maximo):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cadera1" name="cadera1" value="{$medicion1->cadera}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cadera en cms.">
</div>
<label class="col-sm-2">Cadera (maximo):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="cadera2" name="cadera2" value="{$medicion2->cadera}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de la cadera en cms.">
</div>

<br><br><br>
<label class="col-sm-2">Muslo (maximo):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomax" name="muslomax" value="{$medicion1->muslomax}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo maximo en cms.">
</div>
<label class="col-sm-2">Muslo (maximo):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomax1" name="muslomax1" value="{$medicion1->muslomax}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo maximo en cms.">
</div>
<label class="col-sm-2">Muslo (maximo):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomax2" name="muslomax2" value="{$medicion2->muslomax}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo maximo en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Muslo (medial):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomed" name="muslomed" value="{$medicion1->muslomed}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo medio en cms.">
</div>
<label class="col-sm-2">Muslo (medial):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomed1" name="muslomed1" value="{$medicion1->muslomed}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo medio en cms.">
</div>
<label class="col-sm-2">Muslo (medial):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomed22" name="muslomed22" value="{$medicion2->muslomed}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el perimetro de el muslo medio en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Pantorilla (maxima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pantorrilla" name="pantorrilla" value="{$medicion1->pantorrilla}" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese perimetro de la pantorrilla maxima en cms.">
</div>
<label class="col-sm-2">Pantorilla (maxima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pantorrilla11" name="pantorrilla11" value="{$medicion1->pantorrilla}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese perimetro de la pantorrilla maxima en cms.">
</div>
<label class="col-sm-2">Pantorilla (maxima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pantorrilla22" name="pantorrilla22" value="{$medicion2->pantorrilla}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese perimetro de la pantorrilla maxima en cms.">
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<h3>Pliegues Cutaneos (mm)</h3>
<label class="col-sm-2">Triceps:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="triceps" name="triceps" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue de triceps en cms.">
</div>
<label class="col-sm-2">Triceps:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="triceps1" name="triceps1" value="{$medicion1->triceps}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue de triceps en cms.">
</div>
<label class="col-sm-2">Triceps:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="triceps2" name="triceps2" value="{$medicion1->triceps}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue de triceps en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Subescapular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="subescapular" name="subescapular" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue subescupular en cms.">
</div>
<label class="col-sm-2">Subescapular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="subescapular1" name="subescapular1" value="{$medicion1->subescapular}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue subescupular en cms.">
</div>
<label class="col-sm-2">Subescapular:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="subescapular2" name="subescapular2" value="{$medicion2->subescapular}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue subescupular en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Subpraespinal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="subpraespinal" name="subpraespinal" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue supraespinal en cms.">
</div>
<label class="col-sm-2">Subpraespinal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="subpraespinal1" name="subpraespinal1" value="{$medicion1->subpraespinal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue supraespinal en cms.">
</div>
<label class="col-sm-2">Subpraespinal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="subpraespinal2" name="subpraespinal2" value="{$medicion2->subpraespinal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue supraespinal en cms.">
</div>
<br><br><br>
<label class="col-sm-2">Abdominal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="abdominal" name="abdominal" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese pliegue abdominal en cms.">
</div>
<label class="col-sm-2">Abdominal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="abdominal1" name="abdominal1" value="{$medicion1->subpraespinal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese pliegue abdominal en cms.">
</div>
<label class="col-sm-2">Abdominal:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="abdominal2" name="abdominal2" value="{$medicion2->subpraespinal}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese pliegue abdominal en cms.">
</div>

<br><br><br>
<label class="col-sm-2">Muslo (medial):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomed2" name="muslomed2" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue muslo medio en cms.">
</div>
<label class="col-sm-2">Muslo (medial):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomed21" name="muslomed21" value="{$medicion1->muslomed2}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue muslo medio en cms.">
</div>
<label class="col-sm-2">Muslo (medial):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="muslomed22" name="muslomed22" value="{$medicion2->muslomed2}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue muslo medio en cms.">
</div>

<br><br><br>
<label class="col-sm-2">Pantorilla (maxima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pantorrilla2" name="pantorrilla2" value="" required pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue pantorrilla maximo en cms.">
</div>
<label class="col-sm-2">Pantorilla (maxima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pantorrilla21" name="pantorrilla21" value="{$medicion1->pantorrilla2}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue pantorrilla maximo en cms.">
</div>
<label class="col-sm-2">Pantorilla (maxima):</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pantorrilla22" name="pantorrilla22" value="{$medicion2->pantorrilla2}" disabled pattern="^[0-9]+([.][0-9]+)?$" title="Ingrese el pliegue pantorrilla maximo en cms.">
</div>
</div>

</td>
</tr>
    </tbody>  
  </table>  

     
<div class="form-group" align="center">
    
    <input type="submit" id="btnCrearMedicionAntropometricas" name="btnCrearMedicionAntropometricas" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearMedicionAntropometricas" name="btnCancelarCrearMedicionAntropometricas" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>
</div>
</div>
</div>
</form>
<script type="text/javascript" src="js/medicionesAntropometricas/funcionesAltaMedicionesAntroDinamico.js"></script>

