<form  id="plan" name="plan" method="post"> 
<div class="row">
<div class="col-md-12">

<div class="container-fluid">
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

<h4>Consulta Plan</h4>
</div>
</div>
<div>


<div class="row" style="background-color:white  ;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;"> 

<a id="agregarCampo" class="btn btn-success btn-block href="#">Agregar Ingesta</a>
</div>

<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left; height: 400px;  width: 88%">
<tr style="">
<td style="width: 100%; float: left;   background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;"" >

<div class="row">
<div class="container">
<div  class="col-md-5 ">

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left; height:300px; width:100%; ">
<tr style="">
<td style="width: 500px;    overflow-y: auto; float: left;
                            background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">


<input type="hidden" class="form-control" id="paciente" name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="paciente" name="idPlan" value="{$idPlan}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="planes">

<div id="contenedor">


 {foreach from=$ingestas item=ingesta}
    <div class="added">

      <select name="tipoDeIngesta[]" id="tipoDeIngesta[]">

    {if $ingesta->tipodeingesta eq "desayuno"}
          <option label="{$ingesta->tipodeingesta}" value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
       <option label="desayuno" value="desayuno">DESAYUNO</option>
    {/if}

    {if $ingesta->tipodeingesta eq "mediaManiana"}
          <option label="{$ingesta->tipodeingesta}" value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
           <option  value="mediaManiana">MEDIA MAÑANA</option>
    {/if}

    {if $ingesta->tipodeingesta eq "almuerzo"}
          <option label="{$ingesta->tipodeingesta}" value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
          <option label="almuerzo" value="almuerzo">ALMUERZO</option>
    {/if}

    {if $ingesta->tipodeingesta eq "merienda"}
          <option label="{$ingesta->tipodeingesta}" value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
               <option label="merienda" value="cena">MERIENDA</option>
    {/if}

    {if $ingesta->tipodeingesta eq "colacion"}
          <option value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
        <option " value="colacion">COLACIÓN</option>
    {/if}

    {if $ingesta->tipodeingesta eq "cena"}
          <option label="{$ingesta->tipodeingesta}" value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
          <option label="cena" value="cena">CENA</option>
    {/if}

    </select>   

      <select name="alimento[]" id="alimento[]">

      {if $ingesta->alimento eq "lacteosEnteros"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
                <option label="lacteosEnteros" value="lacteosEnteros">LACT. ENTE</option>
      {/if}

      {if $ingesta->alimento eq "lacteosDescremados"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
          <option label="lacteosDescremados" value="lacteosDescremados">LACT. DESC.</option>
      {/if}

      {if $ingesta->alimento eq "quesos"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
          <option label="quesos" value="quesos">QUESOS</option>
      {/if}

      {if $ingesta->alimento eq "huevos"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="huevos" value="huevos">HUEVOS</option>
      {/if}

      {if $ingesta->alimento eq "carneGrasa"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="carneGrasa" value="carneGrasa">CARNE GRASA</option>
      {/if}

      {if $ingesta->alimento eq "carneMagra"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="carneMagra" value="carneMagra">CARNE MAGRA</option>
      {/if}

      {if $ingesta->alimento eq "vegetalesA"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="vegetalesA" value="vegetalesA">VEGET. A</option>
      {/if}

      {if $ingesta->alimento eq "vegetalesB"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="vegetalesB" value="vegetalesB">VEGET. B</option>
      {/if}

      {if $ingesta->alimento eq "vegetalesC"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="vegetalesC" value="vegetalesC">VEGET. C</option>
      {/if}

      {if $ingesta->alimento eq "frutas"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="frutas" value="frutas">FRUTAS</option>
      {/if}

      {if $ingesta->alimento eq "frutasSecas"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="frutasSecas" value="frutasSecas">FRUT. SECAS</option>
      {/if}

      {if $ingesta->alimento eq "granosCereales"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="granosCereales" value="granosCereales">GRANOS/CER.</option>
      {/if}

      {if $ingesta->alimento eq "legumbres"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="legumbres" value="legumbres">LEGUMBRES</option>
      {/if}

      {if $ingesta->alimento eq "panSinGrasa"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="panSinGrasa" value="panSinGrasa">PAN GRASA</option>
      {/if}

      {if $ingesta->alimento eq "pangalle"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="pangalle" value="pangalle">PAN/GALLE</option>
      {/if}

      {if $ingesta->alimento eq "carboGrasa"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="carboGrasa" value="carboGrasa">CARBOGRASAS</option>
      {/if}

      {if $ingesta->alimento eq "azucar"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="azucar" value="azucar">AZUCAR</option>
      {/if}

      {if $ingesta->alimento eq "dulcesMielMermelada"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="dulcesMielMermelada" value="dulcesMielMermelada">DULCES</option>
      {/if}

      {if $ingesta->alimento eq "gaseosasJugo"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="gaseosasJugo" value="gaseosasJugo">GASE./JUGO</option>
      {/if}

      {if $ingesta->alimento eq "aceite"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="aceite" value="aceite">ACEITE</option>
      {/if}

      {if $ingesta->alimento eq "cremaMantecaMayo"}
          <option label="{$ingesta->alimento}" value="{$ingesta->alimento}" selected>{$ingesta->alimento|upper}</option>
      {else}
      <option label="cremaMantecaMayo" value="cremaMantecaMayo">CREMA/MANTE</option>
      {/if}


      </select>

      <input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos" size="2" value="{$ingesta->cantidad}" required/>
      <input type="time" name="hora[]" id="hora[]" placeholder="hora" size="2" value="{$ingesta->hora}" required/>
      <a href="#" class="eliminar">&times;</a>



    </div>
     {/foreach}
        </div>
        </td>
        </tr>
        </tbody>
        </table>    


</div>


<div  class="col-md-5 col-md-offset-1">
<div id="graficaRecordatorio">
<img src="/appnutri/graficas/pagina-que-genera-la-grafica.php?hdc={$acuHdc}&proteinas={$acuProteinas}&lipidos={$acuLipidos}&ktotales={$total}" 
    align="right"  style="cursor:pointer" height="300px" width="100%" title="Nuevo Paciente"/>

</div>
</div>
</div>
</div>

 <div class="row" style="background-color:lavender;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<div class="col-md-12">
   <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#lunes">Lunes</a></li>
    <li><a data-toggle="tab" href="#martes">Martes</a></li>
    <li><a data-toggle="tab" href="#miercoles">Miércoles</a></li>
    <li><a data-toggle="tab" href="#jueves">Jueves</a></li>
    <li><a data-toggle="tab" href="#viernes">Viernes</a></li>
    <li><a data-toggle="tab" href="#sabado">Sábado</a></li>
    <li><a data-toggle="tab" href="#domingo">Domingo</a></li>
  </ul>

  <div class="tab-content">
    <div id="lunes" class="tab-pane fade in active">
<textarea name="lunes_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
{$menu_semanal->lunes_desayuno}
</textarea>
<textarea name="lunes_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
  {$menu_semanal->lunes_med_maniana}</textarea>
<textarea name="lunes_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->lunes_almuerzo}
</textarea>
<textarea name="lunes_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->lunes_merienda}
</textarea>
<textarea name="lunes_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->lunes_colacion}
</textarea>
<textarea name="lunes_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->lunes_cena}
</textarea>
    </div>

    <div id="martes" class="tab-pane fade">
<textarea name="martes_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->martes_desayuno}
</textarea>
<textarea name="martes_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->martes_med_maniana}
</textarea>
<textarea name="martes_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->martes_almuerzo}
</textarea>
<textarea name="martes_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->martes_merienda}
</textarea>
<textarea name="martes_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->martes_colacion}
</textarea>
<textarea name="martes_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->martes_cena}
</textarea>
    </div>
    <div id="miercoles" class="tab-pane fade">
<textarea name="miercoles_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->miercoles_desayuno}
</textarea>
<textarea name="miercoles_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->miercoles_med_maniana}
</textarea>
<textarea name="miercoles_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->miercoles_almuerzo}
</textarea>
<textarea name="miercoles_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->miercoles_merienda}
</textarea>
<textarea name="miercoles_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->miercoles_colacion}
</textarea>
<textarea name="miercoles_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->miercoles_cena}
</textarea>
    </div>
    <div id="jueves" class="tab-pane fade">
<textarea name="jueves_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->jueves_desayuno}
</textarea>
<textarea name="jueves_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->jueves_med_maniana}
</textarea>
<textarea name="jueves_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->jueves_almuerzo}
</textarea>
<textarea name="jueves_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->jueves_merienda}
</textarea>
<textarea name="jueves_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->jueves_colacion}
</textarea>
<textarea name="jueves_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->jueves_cena}
</textarea>
    </div>
    <div id="viernes" class="tab-pane fade">
<textarea name="viernes_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->viernes_desayuno}
</textarea>
<textarea name="viernes_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->viernes_med_maniana}
</textarea>
<textarea name="viernes_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->viernes_almuerzo}
</textarea>
<textarea name="viernes_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->viernes_merienda}
</textarea>
<textarea name="viernes_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->viernes_colacion}
</textarea>
<textarea name="viernes_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->viernes_cena}
</textarea>
    </div>
    <div id="sabado" class="tab-pane fade">
<textarea name="sabado_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->sabado_desayuno}
</textarea>
<textarea name="sabado_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->sabado_med_maniana}
</textarea>
<textarea name="sabado_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->sabado_almuerzo}
</textarea>
<textarea name="sabado_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->sabado_merienda}
</textarea>
<textarea name="sabado_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->sabado_colacion}
</textarea>
<textarea name="sabado_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->sabado_cena}
</textarea>
    </div>
    <div id="domingo" class="tab-pane fade">
<textarea name="domingo_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->domingo_desayuno}
</textarea>
<textarea name="domingo_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->domingo_med_maniana}
</textarea>
<textarea name="domingo_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->domingo_almuerzo}
</textarea>
<textarea name="domingo_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->domingo_merienda}
</textarea>
<textarea name="domingo_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->domingo_colacion}
</textarea>
<textarea name="domingo_cena" placeholder="cena" rows="5" cols="20" style="resize:none;">
   {$menu_semanal->domingo_cena}
</textarea>
    </div>
  </div>
  </div>
  </div>
        </td>
      </tr>
   </tbody>  
  </table> 
  </div>

<div class="row" style="background-color:lightgrey;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
<div class="col-md-4 col-md-offset-2"  > 

      <input id="btnCreaRecordatorio24"  class="btn btn-default btn-block "  type="submit"  value="Actualizar">

</div>
<div class="col-md-4 " >
      <input type="button" class="btn btn-default btn-block " id="btnCancelarCrearPlan" value="Cancelar">
</div>

</div>
</div>
</div>
</div>

 </form>
<script type="text/javascript" src="js/funcionesModuloPlanesDinamico.js"></script>