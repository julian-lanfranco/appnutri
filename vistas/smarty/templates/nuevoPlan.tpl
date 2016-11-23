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

<h3>Nuevo Plan</h3>
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
<tbody style="display: block;  overflow-y: auto;    float: left;height: 400px;  width: 90%">
<tr style="">
<td style="width: 100%; float: left;" >
<div class="row">
<div class="container">
<div  class="col-md-5 ">

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



<input type="hidden" class="form-control" id="paciente" name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idClub" name ="idclub" value="{$club}">
<input type="hidden" class="form-control" id="idDivision" name="idDivision" value="{$division}">
<input type="hidden" class="form-control" id="modulo" name="modulo" value="planes">
<div id="contenedor">

    <div class="added">

      <select name="tipoDeIngesta[]" id="tipoDeIngesta[]">
      <option label="desayuno" value="desayuno">DESAYUNO</option>
    <option  value="almuerzo">MEDIA MAÑANA</option>
      <option label="almuerzo" value="almuerzo">ALMUERZO</option>
      <option label="merienda" value="cena">MERIENDA</option>
  <option value="colacion">COLACIÓN</option>
  <option label="cena" value="cena">CENA</option>
      </select>   
      <select name="alimento[]" id="alimento[]">      
      <option label="leche" value="lacteosEnteros">LACT. ENTE</option>
      <option label="harina" value="lacteosDescremados">LACT. DESC.</option>
      <option label="quesos" value="quesos">QUESOS</option>
      <option label="huevos" value="huevos">HUEVOs</option>
      <option label="carneGrasa" value="carneGrasa">CARNE GRASA</option>
      <option label="carneMagra" value="carneMagra">CARNE MAGRA</option>
      <option label="vegetalesA" value="vegetalesA">VEGET. A</option>
      <option label="vegetalesB" value="vegetalesB">VEGET. B</option>
      <option label="vegetalesC" value="vegetalesC">VEGET. C</option>
      <option label="frutas" value="frutas">FRUTAS</option>
      <option label="frutasSecas" value="frutasSecas">FRUT. SECAS</option>
      <option label="granosCereales" value="granosCereales">GRANOS/CER.</option>
      <option label="legumbres" value="legumbres">LEGUMBRES</option>
      <option label="panSinGrasa" value="panSinGrasa">PAN GRASA</option>
      <option label="pangalle" value="pangalle">PAN/GALLE</option>
      <option label="carboGrasa" value="carboGrasa">CARBOGRASAS</option>
      <option label="azucar" value="azucar">AZUCAR</option>
      <option label="dulcesMielMermelada" value="dulcesMielMermelada">DULCES</option>
      <option label="gaseosasJugo" value="gaseosasJugo">GASE./JUGO</option>
      <option label="aceite" value="aceite">ACEITE</option>
      <option label="cremaMantecaMayo" value="cremaMantecaMayo">CREMA/MANTE</option>
      </select>
        <input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos" size="2" required />
         <input type="time" name="hora[]" id="hora[]" placeholder="hora" size="2" required />
        <a href="#" class="eliminar">&times;</a>
        </div>
        </div>
        </td>
        </tr>
        </tbody>
        </table>    


</div>


<div  class="col-md-5 col-md-offset-1">
<div id="graficaRecordatorio">
<img src="/appnutri/img/fondoBlanco.jpg" align="right"  style="cursor:pointer" height="300" width="100%" title="Nuevo Paciente"/>
</div>
</div>
</div>
</div>

 <div class="row" style="background-color:lavender;
                          padding-top: 10px;
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
<textarea name="lunes_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="lunes_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="lunes_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="lunes_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="lunes_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="lunes_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
    </div>

    <div id="martes" class="tab-pane fade">
<textarea name="martes_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="martes_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="martes_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="martes_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="martes_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="martes_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
    </div>
    <div id="miercoles" class="tab-pane fade">
<textarea name="miercoles_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="miercoles_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="miercoles_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="miercoles_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="miercoles_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="miercoles_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
    </div>
    <div id="jueves" class="tab-pane fade">
<textarea name="jueves_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="jueves_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="jueves_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="jueves_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="jueves_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="jueves_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
    </div>
    <div id="viernes" class="tab-pane fade">
<textarea name="viernes_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="viernes_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="viernes_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="viernes_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="viernes_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="viernes_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
    </div>
    <div id="sabado" class="tab-pane fade">
<textarea name="sabado_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="sabado_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="sabado_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="sabado_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="sabado_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="sabado_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
    </div>
    <div id="domingo" class="tab-pane fade">
<textarea name="domingo_desayuno" placeholder="desayuno" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="domingo_med_maniana" placeholder="media mañana" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="domingo_almuerzo" placeholder="almuerzo" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="domingo_merienda" placeholder="merienda" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="domingo_colacion" placeholder="colación" rows="5" cols="20" style="resize:none;"></textarea>
<textarea name="domingo_cena" placeholder="cena" rows="5" cols="20" style="resize:none;"></textarea>
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
                          padding-top: 5px;
                          padding-right: 10px;
                          padding-bottom: 5px;
                          padding-left: 10px;
                          margin: 10px;">
<div class="col-md-4 col-md-offset-2"  > 

      <input id="btnCreaRecordatorio24"  class="btn btn-default btn-block "  type="submit"  value="Crear">

</div>
<div class="col-md-4 " >
      <input type="button" class="btn btn-default btn-block " id="btnCancelarCrearPlan" value="Cancelar">
</div>

</div>
</div>
 </form>
<script type="text/javascript" src="js/funcionesModuloPlanesDinamico.js"></script>