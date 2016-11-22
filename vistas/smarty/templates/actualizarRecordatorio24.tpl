<form  id="recordatorio" method="post"> 

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

<h2>Consulta Recordatorio</h2>
</div>
</div>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;"> 
<div class="col-md-6">
Hora Despertado
<input type="time"  id="horadespertado"  name="horadespertado" value="{$horaDespertado}" required>
</div>
<div class="col-md-6">
Hora Acostado    
<input type="time"  id="horadormido" name="horadormido" value="{$horaDormido}" required>
</div>
</div>

<div class="row" style="background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;"> 
<a id="agregarCampo" class="btn btn-success btn-block href="#">Agregar Ingesta</a>
</div>

<div class="row">
<div class="container-fluid">
<div  class="col-md-6">


<input type="hidden" class="form-control" id="idRecordatorio" name="idRecordatorio" value="{$idRecordatorio}">
<input type="hidden" class="form-control" id="paciente" name="paciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="recordatorio24">

<!--
<input type="hidden" class="form-control" id="accion" name="accion" value="btnCreaRecordatorio24"> 
-->




<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left; height:300px; width:100%">
<tr style="">
<td style="width: 500px;    overflow-y: auto; float: left;
                            background-color:white;
                          padding-top: 10px;
                          padding-right: 10px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
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
           <option label="mediaManiana" value="mediaManiana">MEDIA MAÑANA</option>
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
          <option label="{$ingesta->tipodeingesta}" value="{$ingesta->tipodeingesta}" selected>{$ingesta->tipodeingesta|upper}</option>
    {else}
        <option label="colacion" value="colacion">COLACION</option>
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
  

   <script type="text/javascript" src="js/funcionesRecordatorioDinamico.js"></script>
<div  class="col-md-5 col-md-offset-1">
<div id="graficaRecordatorio">
<img src="/appnutri/graficas/pagina-que-genera-la-grafica.php?hdc={$acuHdc}&proteinas={$acuProteinas}&lipidos={$acuLipidos}&ktotales={$total}" 
    align="right"  style="cursor:pointer" height="300px" width="100%" title="Nuevo Paciente"/>

</div>
</div>
</div>
</div>
</div>
</div>
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
      <input type="button" class="btn btn-default btn-block " id="btnCancelarCrearRecordatorio24" value="Cancelar">
</div>

</div>
</div>
</div>
</form>
