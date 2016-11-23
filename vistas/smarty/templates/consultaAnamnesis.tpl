<h2>Consulta Anamnesis Paciente:</h2> 
<h3>{$nombre} Fecha: {$anam->fecha|date_format:" %d/%m/%y"}</h3>

<table class="table table-striped header-fixed" style="width: 100%;">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 300px; width:100%">
     <tr style="">
      <td style="width: 100%;    float: left;" >

<input type="hidden" class="form-control" id="idPaciente" value="{$anam->paciente}">
<input type="hidden" class="form-control" id="nombre" value="{$nombre}">
<input type="hidden" class="form-control" id="idAnamnesis" value="{$anam->id}">


<h3> Antecedentes Familiares</h3>

<label class="col-sm-2">Obesidad:</label>
<div class="col-sm-2">
    <select name=obesidad class="form-control" id="obesidad" disabled>
{if $anam->obesidad eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Diabetes:</label> 
<div class="col-sm-2">
<select name=diabetes class="form-control" id="diabetes" disabled>
{if $anam->diabetes eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Hipertensión:</label>
<div class="col-sm-2">
<select name=hipertension class="form-control" id="hipertension" disabled>
{if $anam->hipertension eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>
<br><br>
<label class="col-sm-2">Enfermedad Cardíacas :</label>
<div class="col-sm-2">
<select name=cardiacas class="form-control" id="cardiacas" disabled>
{if $anam->cardiacas eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>


<label class="col-sm-2">Otras:</label>
<div  class="col-sm-3">
<input type="text" class="form-control" id="otras" name="otras" value="{$anam->otras}" disabled pattern="^[a-zA-Z-\s]+" title="Ingrese otro antecedente. Solo letras">
</div>


<br><br><br>
<h3> Antecedentes Personales</h3>

<label class="col-sm-4">Padece Enfermedad Diagnosticada:</label>
<div class="col-sm-8">
<input type="text" class="form-control" id="diagnosticada" name="diagnosticada" value="{$anam->diagnosticada}" disabled pattern="^[a-zA-Z-\s]+" title="Ingrese enfermedad diagnosticada. Solo letras">
</div>

<br><br><br>

<label class="col-sm-2">Toma medicamentos?:</label>
<div class="col-sm-2">
<select name=medicamentos class="form-control" id="medicamentos" disabled>
{if $anam->medicamentos eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>


<label class="col-sm-2">Como los toma?:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="toma" name="toma" value="{$anam->toma}" disabled pattern="^[a-zA-Z-\s]+" title="Ingrese como toma los medicamentos. Solo letras">
</div>

<label class="col-sm-2">Acidez:</label>
<div class="col-sm-2">
<select name=acidez class="form-control" id="acidez" disabled>
{if $anam->acidez eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Reflujo:</label>
<div class="col-sm-2">
<select name=reflujo class="form-control" id="reflujo" disabled>
{if $anam->reflujo eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Dolor Abdominal:</label>
<div class="col-sm-2">
<select name=abdominal class="form-control" id="abdominal" disabled>
{if $anam->abdominal eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Constipación:</label>
<div class="col-sm-2">
<select name=constipacion class="form-control" id="constipacion" disabled>
{if $anam->constipacion eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Diarrea:</label>
<div class="col-sm-2">
<select name=diarrea class="form-control" id="diarrea" disabled>
{if $anam->diarrea eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Fuma:</label>
<div class="col-sm-2">
<select name=fuma class="form-control" id="fuma" disabled>
{if $anam->fuma eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>


<label class="col-sm-2">Dietas Anteriores:</label>
<div class="col-sm-2">
    <select name="dietas" class="form-control" id="dietas" disabled>
{if $anam->dietas eq "NUNCA HICE"}
    <option label="NUNCA HICE" value="NUNCA HICE" selected>NUNCA HICE</option>
    <option label="POSITIVOS" value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option label="NEUTRALES" value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option label="NEGATIVOS" value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
{/if}
{if $anam->dietas eq "POSITIVOS"}
    <option label="NUNCA HICE" value="NUNCA HICE">NUNCA HICE</option>
    <option label="POSITIVOS" value="POSITIVOS" selected>RESULTADOS POSITIVOS</option>
    <option label="NEUTRALES" value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option label="NEGATIVOS" value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
{/if}
{if $anam->dietas eq "NEUTRALES"}
    <option label="NUNCA HICE" value="NUNCA HICE">NUNCA HICE</option>
    <option label="POSITIVOS" value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option label="NEUTRALES" value="NEUTRALES" selected>RESULTADOS NEUTRALES</option>
    <option label="NEGATIVOS" value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
{/if}
{if $anam->dietas eq "NEGATIVOS"}
    <option label="NUNCA HICE" value="NUNCA HICE">NUNCA HICE</option>
    <option label="POSITIVOS" value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option label="NEUTRALES" value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option label="NEGATIVOS" value="NEGATIVOS" selected>RESULTADOS NEGATIVOS</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Dolor:</label>
<div class="col-sm-2">
<select name=dolor class="form-control" id="dolor" disabled>
{if $anam->dolor eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>
<br><br><br>

<label class="col-sm-2">Peso Máximo en los ultimos 5 años:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="pesomax" name="pesomax" value="{$anam->pesomax}"  disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el peso máximo.">
</div>

<label class="col-sm-2">Peso Mínimo en los ultimos 5 años:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="pesomin" name="pesomin" value="{$anam->pesomin}"  disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el peso mínimo.">
</div>



<label class="col-sm-2">Picotea?:</label>
<div class="col-sm-2">
<select name=picotea class="form-control" id="picotea"  disabled>
{if $anam->picotea eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<h3>Habitos Alimentarios</h3>
<br>
<label class="col-sm-2">Preferencias:</label>
<div class="col-sm-2">
<select name=preferencias class="form-control" id="preferencias"  disabled>
{if $anam->preferencias eq "DULCE"}
    <option label="DULCE" value="SI" selected>DULCE</option>
    <option label="SALADO" value="NO">SALADO</option>
{else}
    <option label="DULCE" value="SI">DULCE</option>
    <option label="SALADO" value="NO" selected>SALADO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Alimentos qué no le gustan:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="alimentosnogustan" name="alimentosnogustan" value="{$anam->alimentosnogustan}"  disabled pattern="^[a-zA-Z-\s]+" title="Ingrese los alimentos qué no le gustan. Solo letras">
</div>

<label class="col-sm-2">Alimentos qué no tolera:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="alimentosnotolera" name="alimentosnotolera" value="{$anam->alimentosnotolera}"  disabled pattern="^[a-zA-Z-\s]+" title="Ingrese los alimentos qué no tolera. Solo letras">
</div>

<br><br><br>

<label class="col-sm-2">Alimentos qué prefiere:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="alimentosprefiere" name="alimentosprefiere" value="{$anam->alimentosprefiere}"  disabled pattern="^[a-zA-Z-\s]+" title="Ingrese los alimentos qué prefiere. Solo letras">
</div>


<label class="col-sm-2">Cocina?:</label>
<div class="col-sm-2">
<select name=cocina class="form-control" id="cocina"  disabled>
{if $anam->cocina eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Hace las compras?:</label>
<div class="col-sm-2">
<select name=compras class="form-control" id="compras"  disabled>
{if $anam->compras eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Horarios de Trabajo:</label>
<div class="col-sm-2">
    <input type="text" class="form-control" id="horarios" name="horarios" value="{$anam->horarios}"  disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese el horario de trabajo.">
</div>


<label class="col-sm-2">Desayuna?:</label>
<div class="col-sm-2">
<select name=desayuna class="form-control" id="desayuna"  disabled>
{if $anam->desayuna eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Almuerzo?:</label>
<div class="col-sm-2">
<select name=almuerza class="form-control" id="almuerza"  disabled>
{if $anam->almuerza eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<br><br><br>

<label class="col-sm-2">Merienda?:</label>
<div class="col-sm-2">
<select name=merienda class="form-control" id="merienda"  disabled>
{if $anam->merienda eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Cena?:</label>
<div class="col-sm-2">
<select name=cena class="form-control" id="cena" disabled>
{if $anam->cena eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Ingiere Suplementos?:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="suplementos" name="suplementos" value="{$anam->suplementos}"  disabled pattern="^[a-zA-Z0-9-\s]+" title="Ingrese los suplementos qué ingiere.">
</div>

<br><br><br>

<label class="col-sm-2">Hace Actividad Física?:</label>
<div class="col-sm-2">
<select name=actividad class="form-control" id="actividad" disabled>
{if $anam->actividad eq "SI"}
<option label="SI" value="SI" selected>SI</option>
<option label="NO" value="NO">NO</option>
{else}
<option label="SI" value="SI">SI</option>
<option label="NO" value="NO" selected="">NO</option>
{/if}
</select>
</div>

<label class="col-sm-2">Con qué frecuencia?:</label>
<div class="col-sm-4">
<select name=frecuencia class="form-control" id="frecuencia"  disabled>

    {if $anam->frecuencia eq "DIARIAMENTE"}
    <option label="DIARIAMENTE" value="DIARIAMENTE" selected>DIARIAMENTE</option>
    <option label="SEMANALMENTE" value="SEMANALMENTE">SEMANALMENTE</option>
    <option label="MENSUALMENTE" value="MENSUALMENTE">MENSUALMENTE</option>
    <option label="EXPORADICAMENTE" value="EXPORADICAMENTE">EXPORADICAMENTE</option>
    {/if}
    {if $anam->frecuencia eq "SEMANALMENTE"}
    <option label="DIARIAMENTE" value="DIARIAMENTE" >DIARIAMENTE</option>
    <option label="SEMANALMENTE" value="SEMANALMENTE" selected>SEMANALMENTE</option>
    <option label="MENSUALMENTE" value="MENSUALMENTE">MENSUALMENTE</option>
    <option label="EXPORADICAMENTE" value="EXPORADICAMENTE">EXPORADICAMENTE</option>
    {/if}
    {if $anam->frecuencia eq "MENSUALMENTE"}
    <option label="DIARIAMENTE" value="DIARIAMENTE" >DIARIAMENTE</option>
    <option label="SEMANALMENTE" value="SEMANALMENTE">SEMANALMENTE</option>
    <option label="MENSUALMENTE" value="MENSUALMENTE" selected>MENSUALMENTE</option>
    <option label="EXPORADICAMENTE" value="EXPORADICAMENTE">EXPORADICAMENTE</option>
    {/if}
    {if $anam->frecuencia eq "EXPORADICAMENTE"}
    <option label="DIARIAMENTE" value="DIARIAMENTE" >DIARIAMENTE</option>
    <option label="SEMANALMENTE" value="SEMANALMENTE">SEMANALMENTE</option>
    <option label="MENSUALMENTE" value="MENSUALMENTE">MENSUALMENTE</option>
    <option label="EXPORADICAMENTE" value="EXPORADICAMENTE" selected>EXPORADICAMENTE</option>
    {/if}
</select>
</div>


</td>
</tr>
    </tbody>  
  </table>  

     
<button id="btnImprimirAnamnesis" class="btn btn-default">Imprimir</button>

<button id="btnCancelarImprimirAnamnesis" class="btn btn-default">Cancelar</button>



