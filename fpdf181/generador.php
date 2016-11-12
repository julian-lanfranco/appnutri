<?php
require_once('fpdf.php');


require_once ('graficas/jpgraph/src/jpgraph.php');
require_once ('graficas/jpgraph/src/jpgraph_line.php');



class Reportes {

public function imprimirClub($club){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);

$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,80,"Id del CLub: ".$club->id);

$pdf->Text(30,100,"Fecha: ". date('d/m/Y'));


$pdf->Text(30,120,"Nombre del Club: ".$club->nombre);


$pdf->Text(30,140,"Tipo: ".$club->tipo);


$pdf->Text(30,160,"Telefono: ".$club->telefono);


$pdf->Text(30,180,"Direccion: ".$club->direccion);


$pdf->Text(30,200,"Persona de Contacto: ".$club->contacto);


$pdf->Text(30,220,"Correo Electronico: ".$club->mail);



$pdf->Output();


}


public function imprimirDivision($division){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);

$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,80,"Id del la Division: ".$division->id);

$pdf->Text(30,100,"Fecha: ". date('d/m/Y'));


$pdf->Text(30,120,"Nombre del la Division: ".$division->nombre);


$pdf->Text(30,140,"Id del Club: ".$division->club);


$pdf->Text(30,160,"Telefono: ".$division->telefono);


$pdf->Text(30,180,"Persona de Contacto: ".$division->contacto);


$pdf->Text(30,200,"Telefono de contacto: ".$division->telefono);


$pdf->Text(30,220,"Correo Electronico: ".$division->correo);





$pdf->Output();


}

public function imprimirPaciente($paciente){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);

$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,80,"Id del Paciente: ".$paciente->id);

$pdf->Text(30,100,"Fecha: ". date('d/m/Y'));

$pdf->Text(30,110,"Nombre : ".$paciente->nombre."  Apellido : ".$paciente->apellido);

$pdf->Text(30,120,"Dni: ".$paciente->dni);

$pdf->Text(30,130,"Direccion: ".$paciente->direccion);

$pdf->Text(30,140,"Obra Social: ".$paciente->obra);

$pdf->Text(30,150,"Telefono: ".$paciente->telefono);

$pdf->Text(30,160,"Correo Electronico: ".$paciente->correo);

$pdf->Text(30,170,"Medico de Cabecera: ".$paciente->medico);

$pdf->Text(30,180,"Motivo de Consulta: ".$paciente->motivo);

$pdf->Text(30,190,"Ocupacion: ".$paciente->ocupacion);

$pdf->Output();


}


public function imprimirAnamnesis($anam,$nombre,$apellido){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$fecha = explode("-",$anam->fecha);

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);

$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,70,"Id de Anamnesis: ".$anam->id."                                     Fecha de Alta Anamnesis:".$fecha[2]."/".$fecha[1]."/".$fecha[0]);

$pdf->Text(30,80,"Antecedentes Familiares: ");

$pdf->Text(30,90,"Obesidad : ".$anam->obesidad."  Diabetes : ".$anam->diabetes." Hipertension : ".$anam->hipertension
	." Enfermedad Cardiaca : ".$anam->cardiacas);

$pdf->Text(30,100,"Otras Enfermedades: ".$anam->otras);

$pdf->Text(30,110,"Antecedentes Personales: ");

$pdf->Text(30,120,"Enfermedad Diagnosticada: ".$anam->diagnosticada);

$pdf->Text(30,130,"Toma Medicamentos: ".$anam->medicamentos." 			 Como los Toma: ".$anam->toma);

$pdf->Text(30,140,"Acidez : ".$anam->acidez."  Reflujo : ".$anam->reflujo." Dolor Abdominal : ".$anam->abdominal
	." Constipacion : ".$anam->constipacion);

$pdf->Text(30,140,"Acidez : ".$anam->acidez."  Reflujo : ".$anam->reflujo." Dolor Abdominal : ".$anam->abdominal
	." Constipacion : ".$anam->constipacion);

$pdf->Text(30,150,"Diarrea : ".$anam->diarrea."  Fuma : ".$anam->fuma." Hizo Dietas Anteriormente : ".$anam->dietas
	." Algun Dolor : ".$anam->dolor);

$pdf->Text(30,160,"En los ultimos 5 anios");

$pdf->Text(30,170,"Peso minimo:".$anam->pesomin."     Peso maximo: ".$anam->pesomax);

$pdf->Text(30,180,"Habitos Alimentarios");

$pdf->Text(30,190,"Picotea : ".$anam->picotea);

$pdf->Text(30,200,"Alimentos que -> No le gustan: ".$anam->alimentosnogustan." -> No Tolera : ".$anam->alimentosnotolera
	." -> Prefiere : ".$anam->alimentosprefiere);

$pdf->Text(30,210,"Cocina : ".$anam->cocina."  Hace las compras : ".$anam->compras." Horarios de Trabajo : ".$anam->horarios);

$pdf->Text(30,220,"Desayuna : ".$anam->desayuna."  Almuerza : ".$anam->almuerza." Merienda : ".$anam->merienda
	." Cena : ".$anam->cena);

$pdf->Text(30,230,"Toma Suplementos : ".$anam->suplementos."  Realiza actividad fisica : ".$anam->actividad." Con que Frecuencia : ".$anam->frecuencia);


$pdf->Output();


}
public function imprimirRecordatorio24($rec){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);

$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,80,"Id del Recordatorio: ".$rec->id);
$pdf->Text(100,80,"Fecha de Alta del Recordatorio: ".$rec->fecha);


$pdf->Text(30,120,"Hora Despertar: ".$rec->horadespertado);

$pdf->Text(30,140,"Hora Desayuno: ".$rec->horadesayuno);
$pdf->Text(100,140,"Desayuno: ".$rec->desayuno);

$pdf->Text(30,160,utf8_decode("Hora Media Mañana: ").$rec->horamediamanana);
$pdf->Text(100,160,  utf8_decode("Media Mañana: ").$rec->mediamanana);

$pdf->Text(30,180,"Hora Almuerzo: ".$rec->horaalmuerzo);
$pdf->Text(100,180,"Almuerzo: ".$rec->almuerzo);

$pdf->Text(30,200,"Hora Merienda: ".$rec->horamerienda);
$pdf->Text(100,200,"Merienda: ".$rec->merienda);

$pdf->Text(30,220,"Hora Colacion: ".$rec->horacolacion);
$pdf->Text(100,220,"Colacion: ".$rec->colacion);

$pdf->Text(30,240,"Hora Cena: ".$rec->horacena);
$pdf->Text(100,240,"Cena: ".$rec->cena);

$pdf->Text(30,260,"Hora Dormir: ".$rec->horadormido);

$pdf->Output();


}

public function imprimirMedicionAntro($medicion,$nombre,$apellido){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$fecha = explode("-",$medicion->fecha);

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);

$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,70,"Id de la Medicion: ".$medicion->id."                                     Fecha de Medicion:".$fecha[2]."/".$fecha[1]."/".$fecha[0]);



$pdf->Text(30,80,"Datos Basicos : ");
$pdf->Text(30,90,"Peso : ".$medicion->pesobruto."  Talla Corporal: ".$medicion->tallacorporal."  Talla Sentado: ".$medicion->tallasentado);

$pdf->Text(30,100,"Diametros : ");

$pdf->Text(30,110,"Biacromial : ".$medicion->biacromial."  Torax Tranverso:".$medicion->toraxtranverso."  Toraz Anter-Posterio: ".$medicion->toraxantero);

$pdf->Text(30,120,"Bi-iliocrestideo: ".$medicion->biiliocrestideo."  Humeral: ".$medicion->humeral."  Femoral: ".$medicion->femoral);

$pdf->Text(30,130,"Perimetros: ");

$pdf->Text(30,140,"Cabeza: ".$medicion->cabeza."  Brazo Relajado: ".$medicion->brazorelajado."  Brazo Flexionado en tension: ".$medicion->brazoflexionado);

$pdf->Text(30,150,"Antebrazo Maximo: ".$medicion->antebrazomaximo."  Torax Mesoesternal: ".$medicion->toraxmesoesternal."  Cintura: ".$medicion->cintura);

$pdf->Text(30,160,"Cadera (maximo): ".$medicion->cadera."  Muslo (maximo): ".$medicion->muslomax."  Muslo (medial): ".$medicion->muslomed);

$pdf->Text(30,170,"Pantorrilla (maximo): ".$medicion->pantorrilla);

$pdf->Text(30,180,"Pliegues Cutaneos (mm): ");

$pdf->Text(30,190,"Triceps: ".$medicion->triceps."  Subescapular: ".$medicion->subescapular."  Subpraespinal: ".$medicion->subpraespinal);

$pdf->Text(30,200,"Abdominal: ".$medicion->abdominal."  Muslo(medial): ".$medicion->muslomed2."  Pantorrilla (maxima): ".$medicion->pantorrilla2);

$pdf->Output();


}

function imprimirEstudioLaboratorio($estudio,$nombre,$apellido){

$pdf = new FPDF();

$pdf = new FPDF('P','mm','A4');

$fecha = explode("-",$estudio->fecha);

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('img/logonutri.png',30,12,160);


$hoy = getdate();

$pdf->Text(120,55,"Fecha: ".$hoy['mday']."/".$hoy['mon']."/".$hoy['year']);

$pdf->Text(30,70,"Id del Estudio de Laboratorio: ".$estudio->id."                                     Fecha de Medicion:".$fecha[2]."/".$fecha[1]."/".$fecha[0]);


$pdf->Text(30,90,"Glb. Rojos : ".$estudio->globulosrojos."      Glb. Blancos : ".$estudio->globulosblancos."   Plaquetas : ".$estudio->plaquetas."     Hemoglobina : ".$estudio->hemoglobina);

$pdf->Text(30,100,"Hematocrito : ".$estudio->hematocrito."    Corpus. Medio : ".$estudio->corpuscularmedio."   HB Corpus. Medio : ".$estudio->hbcorpuscularmedio."     Concentracion HBCM : ".$estudio->hbcm);



$pdf->Output();

}


function imprimirEstadisticaMedicionSimple($idPaciente){


  // Display the graph

$pdf = new FPDF();

$pdf=new FPDF('L','mm','A4');

$ambito='localhost';

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);
//inserto la cabecera poniendo una imagen dentro de una celda

$pdf->Image('http://'.$ambito.'/appnutri/graficas/evolucionPeso.php?idPaciente='.$idPaciente.'.png',40,5,90);

$pdf->Image('http://'.$ambito.'/appnutri/graficas/evolucionPliegues.php?idPaciente='.$idPaciente.'.png',40,100,90);

$pdf->Image('http://'.$ambito.'/appnutri/graficas/evolucionSumatoria6.php?idPaciente='.$idPaciente.'.png',150,5,90);

$pdf->Image('http://'.$ambito.'/appnutri/graficas/evolucionCircunferencias.php?idPaciente='.$idPaciente.'.png',150,100,90);

$pdf->Output();

}

function  imprimirGraficaSomatocarta($idMedicion){
    
  // Display the graph

$pdf = new FPDF();

$pdf=new FPDF('L','mm','A4');

$ambito='localhost';

$pdf->AddPage();

$pdf->SetFont('Arial', 'B', 12);

$pdf->Image('http://'.$ambito.'/appnutri/graficas/graficaSomatocarta.php?idMedicion='.$idMedicion.'.png',40,5,90);
    
$pdf->Output();

}


}



?>