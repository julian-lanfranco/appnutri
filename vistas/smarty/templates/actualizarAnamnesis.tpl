<form  id="actualizaanamnesi" method="post">
<div class="row">
<div class="col-md-12">
  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-12" >

<h2>Actualizar Anamnesis</h2>
</div>
</div>

<input type="hidden" class="form-control" id="idPaciente" name="idPaciente" value="{$anam->paciente}">
<input type="hidden" class="form-control" id="nombre" name="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idAnamnesis" name="idAnamnesis" value="{$anam->id}">


<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 400px; ">
<tr style="">
<td style="width: 100%; float: left;" >
 



 <div class="row" style="background-color:lightgrey;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">

<h3> Antecedentes Familiares</h3>

<label class="col-sm-2">Obesidad:</label>
<div class="col-sm-2">
    <select name=obesidad class="form-control" id="obesidad" required>
{if $anam->obesidad eq "SI"}
<option value="SI" selected>SI</option>
<option value="NO">NO</option>
{else}
<option value="SI">SI</option>
<option value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Diabetes:</label> 
<div class="col-sm-2">
<select name=diabetes class="form-control" id="diabetes" required>
{if $anam->diabetes eq "SI"}
<option value="SI" selected>SI</option>
<option value="NO">NO</option>
{else}
<option value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Hipertensión:</label>
<div class="col-sm-2">
<select name=hipertension class="form-control" id="hipertension" required>
{if $anam->hipertension eq "SI"}
<option  value="SI" selected>SI</option>
<option value="NO">NO</option>
{else}
<option value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>
<br><br>
<label class="col-sm-2">Enfermedad cardíacas :</label>
<div class="col-sm-2">
<select name=cardiacas class="form-control" id="cardiacas" required>
{if $anam->cardiacas eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>


<label class="col-sm-2">Otras:</label>
<div  class="col-sm-3">
<input type="text" class="form-control" id="otras" name="otras" value="{$anam->otras|upper}" required  title="Ingrese otro antecedente. Solo letras">
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">

<h3> Antecedentes Personales</h3>

<label class="col-sm-4">Padece Enfermedad Diagnosticada:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="diagnosticada" name="diagnosticada" value="{$anam->diagnosticada|upper}" required  title="Ingrese enfermedad diagnosticada. Solo letras">
</div>

<br><br><br>

<label class="col-sm-2">Toma medicamentos?:</label>
<div class="col-sm-2">
<select name=medicamentos class="form-control" id="medicamentos" required>
{if $anam->medicamentos eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>


<label class="col-sm-2">Comó los toma?:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="toma" name="toma" value="{$anam->toma|upper}" required  title="Ingrese como toma los medicamentos. Solo letras">
</div>

<label class="col-sm-2">Acidez:</label>
<div class="col-sm-2">
<select name=acidez class="form-control" id="acidez" required>
{if $anam->acidez eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Reflujo:</label>
<div class="col-sm-2">
<select name=reflujo class="form-control" id="reflujo" required>
{if $anam->reflujo eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Dolor Abdominal:</label>
<div class="col-sm-2">
<select name=abdominal class="form-control" id="abdominal" required>
{if $anam->abdominal eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Constipación:</label>
<div class="col-sm-2">
<select name=constipacion class="form-control" id="constipacion" required>
{if $anam->constipacion eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Diarrea:</label>
<div class="col-sm-2">
<select name=diarrea class="form-control" id="diarrea" required>
{if $anam->diarrea eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Fuma:</label>
<div class="col-sm-2">
<select name=fuma class="form-control" id="fuma" required>
{if $anam->fuma eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option value="NO" selected="">NO</option>
{/if}
</select>
</div>


<label class="col-sm-2">Dietas Anteriores:</label>
<div class="col-sm-2">
    <select name="dietas" class="form-control" id="dietas" required>
{if $anam->dietas eq "NUNCA HICE"}
    <option  value="NUNCA HICE" selected>NUNCA HICE</option>
    <option  value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option  value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option  value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
{/if}
{if $anam->dietas eq "POSITIVOS"}
    <option  value="NUNCA HICE">NUNCA HICE</option>
    <option  value="POSITIVOS" selected>RESULTADOS POSITIVOS</option>
    <option  value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
{/if}
{if $anam->dietas eq "NEUTRALES"}
    <option  value="NUNCA HICE">NUNCA HICE</option>
    <option  value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option  value="NEUTRALES" selected>RESULTADOS NEUTRALES</option>
    <option  value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
{/if}
{if $anam->dietas eq "NEGATIVOS"}
    <option  value="NUNCA HICE">NUNCA HICE</option>
    <option  value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option  value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option  value="NEGATIVOS" selected>RESULTADOS NEGATIVOS</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Dolor:</label>
<div class="col-sm-2">
<select name=dolor class="form-control" id="dolor" required>
{if $anam->dolor eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option value="NO" selected="">NO</option>
{/if}
</select>
</div>
<br><br><br>

<label class="col-sm-2">Peso Máximo en los ultimos 5 años:</label>
<div class="col-sm-2">
    <input type="number" step="0.001" min="0" max="350" class="form-control" id="pesomax" name="pesomax" value="{$anam->pesomax}"  required  title="Ingrese el peso máximo.">
</div>

<label class="col-sm-2">Peso Mínimo en los ultimos 5 años:</label>
<div class="col-sm-2">
<input type="number" step="0.001" min="0" max="350" class="form-control" id="pesomin" name="pesomin" value="{$anam->pesomin}"  required  title="Ingrese el peso mínimo.">
</div>



<label class="col-sm-2">Picotea?:</label>
<div class="col-sm-2">
<select name=picotea class="form-control" id="picotea"  required>
{if $anam->picotea eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">

<h3>Habitos Alimentarios</h3>
<br>
<label class="col-sm-2">Preferencias:</label>
<div class="col-sm-2">
<select name=preferencias class="form-control" id="preferencias"  required>
{if $anam->preferencias eq "DULCE"}
    <option  value="SI" selected>DULCE</option>
    <option  value="NO">SALADO</option>
{else}
    <option  value="SI">DULCE</option>
    <option value="NO" selected>SALADO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Alimentos qué no le gustan:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="alimentosnogustan" name="alimentosnogustan" value="{$anam->alimentosnogustan|upper}"  required title="Ingrese los alimentos qué no le gustan. Solo letras">
</div>

<label class="col-sm-2">Alimentos qué no tolera:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="alimentosnotolera" name="alimentosnotolera" value="{$anam->alimentosnotolera|upper}"  required  title="Ingrese los alimentos qué no tolera. Solo letras">
</div>

<br><br><br>

<label class="col-sm-2">Alimentos qué prefiere:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="alimentosprefiere" name="alimentosprefiere" value="{$anam->alimentosprefiere|upper}"  required  title="Ingrese los alimentos qué prefiere. Solo letras">
</div>


<label class="col-sm-2">Cocina?:</label>
<div class="col-sm-2">
<select name=cocina class="form-control" id="cocina"  required>
{if $anam->cocina eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Hace las compras?:</label>
<div class="col-sm-2">
<select name=compras class="form-control" id="compras"  required>
{if $anam->compras eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Horarios de Trabajo:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="horarios" name="horarios" value="{$anam->horarios|upper}"  required  title="Ingrese el horario de trabajo.">
</div>


<label class="col-sm-2">Desayuna?:</label>
<div class="col-sm-2">
<select name=desayuna class="form-control" id="desayuna"  required>
{if $anam->desayuna eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Almuerzo?:</label>
<div class="col-sm-2">
<select name=almuerza class="form-control" id="almuerza"  required>
{if $anam->almuerza eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Merienda?:</label>
<div class="col-sm-2">
<select name=merienda class="form-control" id="merienda"  required>
{if $anam->merienda eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Cena?:</label>
<div class="col-sm-2">
<select name=cena class="form-control" id="cena" required>
{if $anam->cena eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Ingiere Suplementos?:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="suplementos" name="suplementos" value="{$anam->suplementos|upper}"  required  title="Ingrese los suplementos qué ingiere.">
</div>

<br><br><br>

<label class="col-sm-2">Hace Actividad Física?:</label>
<div class="col-sm-2">
<select name=actividad class="form-control" id="actividad" required>
{if $anam->actividad eq "SI"}
<option  value="SI" selected>SI</option>
<option  value="NO">NO</option>
{else}
<option  value="SI">SI</option>
<option  value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Con qué frecuencia?:</label>
<div class="col-sm-4">
<select name=frecuencia class="form-control" id="frecuencia"  required>

    {if $anam->frecuencia eq "DIARIAMENTE"}
    <option  value="DIARIAMENTE" selected>DIARIAMENTE</option>
    <option  value="SEMANALMENTE">SEMANALMENTE</option>
    <option  value="MENSUALMENTE">MENSUALMENTE</option>
    <option  value="EXPORADICAMENTE">EXPORADICAMENTE</option>
    {/if}
    {if $anam->frecuencia eq "SEMANALMENTE"}
    <option  value="DIARIAMENTE" >DIARIAMENTE</option>
    <option  value="SEMANALMENTE" selected>SEMANALMENTE</option>
    <option  value="MENSUALMENTE">MENSUALMENTE</option>
    <option  value="EXPORADICAMENTE">EXPORADICAMENTE</option>
    {/if}
    {if $anam->frecuencia eq "MENSUALMENTE"}
    <option  value="DIARIAMENTE" >DIARIAMENTE</option>
    <option value="SEMANALMENTE">SEMANALMENTE</option>
    <option  value="MENSUALMENTE" selected>MENSUALMENTE</option>
    <option  value="EXPORADICAMENTE">EXPORADICAMENTE</option>
    {/if}
    {if $anam->frecuencia eq "EXPORADICAMENTE"}
    <option value="DIARIAMENTE" >DIARIAMENTE</option>
    <option  value="SEMANALMENTE">SEMANALMENTE</option>
    <option  value="MENSUALMENTE">MENSUALMENTE</option>
    <option  value="EXPORADICAMENTE" selected>EXPORADICAMENTE</option>
    {/if}
</select>
</div>
</div>

</td>
</tr>
    </tbody>  
  </table>  

     
<div class="form-group" align="center">
    <input type="submit" id="btnGuardarActualizarAnamnesis" name="btnGuardarActualizarAnamnesis" class="btn btn-default" value="Actualizar" />
    <input  type="button" id="btnCancelarGuardarActualizarAnamnesis" name="btnCancelarGuardarActualizarAnamnesis" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>

</div>
</div>
</div>
</form>
<script type="text/javascript" src="js/anamnesis/funcionesModAnamnesisDinamico.js"></script>


