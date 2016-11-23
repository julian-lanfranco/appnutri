<?php
require_once('fpdf.php');
require_once ('graficas/jpgraph/src/jpgraph.php');
require_once ('graficas/jpgraph/src/jpgraph_line.php');
require_once ('graficas/jpgraph/src/jpgraph_scatter.php');
require_once ("graficas/jpgraph/src/jpgraph_pie.php");
require_once('modelos/medicionesAntropometricas.php');
require_once('modelos/plan.php');
require_once('modelos/menu_semanal.php');
require_once('modelos/conexion.php');


class Reportes extends FPDF{

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


$pdf->Text(30,180,"Dirección: ".$club->direccion);


$pdf->Text(30,200,"Persona de Contacto: ".$club->contacto);


$pdf->Text(30,220,"Correo Electrónico: ".$club->mail);



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


$pdf->Text(30,220,"Correo Electrónico: ".$division->correo);





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

$pdf->Text(30,130,"Dirección: ".$paciente->direccion);

$pdf->Text(30,140,"Obra Social: ".$paciente->obra);

$pdf->Text(30,150,"Telefono: ".$paciente->telefono);

$pdf->Text(30,160,"Correo Electrónico: ".$paciente->correo);

$pdf->Text(30,170,"Médico de Cabecera: ".$paciente->medico);

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
	." Enfermedad Cardíaca : ".$anam->cardiacas);

$pdf->Text(30,100,"Otras Enfermedades: ".$anam->otras);

$pdf->Text(30,110,"Antecedentes Personales: ");

$pdf->Text(30,120,"Enfermedad Diagnosticada: ".$anam->diagnosticada);

$pdf->Text(30,130,"Toma Medicamentos: ".$anam->medicamentos." 			 Cómo los Toma: ".$anam->toma);

$pdf->Text(30,140,"Acidez : ".$anam->acidez."  Reflujo : ".$anam->reflujo." Dolor Abdominal : ".$anam->abdominal
	." Constipación : ".$anam->constipacion);

$pdf->Text(30,140,"Acidez : ".$anam->acidez."  Reflujo : ".$anam->reflujo." Dolor Abdominal : ".$anam->abdominal
	." Constipación : ".$anam->constipacion);

$pdf->Text(30,150,"Diarrea : ".$anam->diarrea."  Fuma : ".$anam->fuma." Hizo Dietas Anteriormente : ".$anam->dietas
	." Algun Dolor : ".$anam->dolor);

$pdf->Text(30,160,"En los ultimos 5 anios");

$pdf->Text(30,170,"Peso mínimo:".$anam->pesomin."     Peso maximo: ".$anam->pesomax);

$pdf->Text(30,180,"Habitos Alimentarios");

$pdf->Text(30,190,"Picotea : ".$anam->picotea);

$pdf->Text(30,200,"Alimentos qué no le gustan: ".$anam->alimentosnogustan." -> No Tolera : ".$anam->alimentosnotolera
	." -> Prefiere : ".$anam->alimentosprefiere);

$pdf->Text(30,210,"Cocina : ".$anam->cocina."  Hace las compras : ".$anam->compras." Horarios de Trabajo : ".$anam->horarios);

$pdf->Text(30,220,"Desayuna : ".$anam->desayuna."  Almuerza : ".$anam->almuerza." Merienda : ".$anam->merienda
	." Cena : ".$anam->cena);

$pdf->Text(30,230,"Toma Suplementos : ".$anam->suplementos."  Realiza actividad fisica : ".$anam->actividad." Con qué Frecuencia : ".$anam->frecuencia);


$pdf->Output();


}
public function imprimirGraficaPieRecordatorio($rec){

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

$pdf->Text(30,110,"Biacromial : ".$medicion->biacromial."  Tórax Tranverso:".$medicion->toraxtranverso."  Toraz Anter-Posterio: ".$medicion->toraxantero);

$pdf->Text(30,120,"Bi-iliocrestideo: ".$medicion->biiliocrestideo."  Humeral: ".$medicion->humeral."  Femoral: ".$medicion->femoral);

$pdf->Text(30,130,"Perímetros: ");

$pdf->Text(30,140,"Cabeza: ".$medicion->cabeza."  Brazo Relajado: ".$medicion->brazorelajado."  Brazo Flexionado en tension: ".$medicion->brazoflexionado);

$pdf->Text(30,150,"Antebrazo Maximo: ".$medicion->antebrazomaximo."  Torax Mesoesternal: ".$medicion->toraxmesoesternal."  Cintura: ".$medicion->cintura);

$pdf->Text(30,160,"Cadera (maximo): ".$medicion->cadera."  Muslo (maximo): ".$medicion->muslomax."  Muslo (medial): ".$medicion->muslomed);

$pdf->Text(30,170,"Pantorrilla (maximo): ".$medicion->pantorrilla);

$pdf->Text(30,180,"Pliegues Cutaneos (mm): ");

$pdf->Text(30,190,"Tríceps: ".$medicion->triceps."  Subescapular: ".$medicion->subescapular."  Subpraespinal: ".$medicion->subpraespinal);

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

function functionTablaBasica($idPaciente,$idPlan)
   {
     $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);


    $menu_semanal = new MenuSemanal('menu_semanal');

    $menu_semanal->load("plan=".$idPlan);
 
      

      $this->SetXY(40,40);
      $this->Cell(140,10, "Lunes",1 , 'L');
      $this->SetXY(10,50);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,50);
      $this->Cell(140,10, trim($menu_semanal->lunes_desayuno),1 , 'L');
      $this->SetXY(10,60);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,60);
      $this->Cell(140,10, trim($menu_semanal->lunes_med_maniana),1);
      $this->SetXY(10,70);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,70);
      $this->Cell(140,10, trim($menu_semanal->lunes_almuerzo),1);
      $this->SetXY(10,80);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,80);
      $this->Cell(140,10, trim($menu_semanal->lunes_merienda),1);
      $this->SetXY(10,90);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,90);
      $this->Cell(140,10, trim($menu_semanal->lunes_colacion),1);
      $this->SetXY(10,100);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,100);
      $this->Cell(140,10,trim($menu_semanal->lunes_cena),1);
      
      $this->SetXY(40,120);
      $this->Cell(140,10, "Martes",1 , 'L');
      $this->SetXY(10,130);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,130);
      $this->Cell(140,10, trim($menu_semanal->martes_desayuno),1 , 'L');
      $this->SetXY(10,140);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,140);
      $this->Cell(140,10, trim($menu_semanal->martes_med_maniana),1);
      $this->SetXY(10,150);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,150);
      $this->Cell(140,10, trim($menu_semanal->martes_almuerzo),1);
      $this->SetXY(10,160);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,160);
      $this->Cell(140,10, trim($menu_semanal->martes_merienda),1);
      $this->SetXY(10,170);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,170);
      $this->Cell(140,10, trim($menu_semanal->martes_colacion),1);
      $this->SetXY(10,180);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,180);
      $this->Cell(140,10,trim($menu_semanal->martes_cena),1);

      $this->SetXY(40,200);
      $this->Cell(140,10, "Miercoles",1 , 'L');
      $this->SetXY(10,210);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,210);
      $this->Cell(140,10, trim($menu_semanal->miercoles_desayuno),1 , 'L');
      $this->SetXY(10,220);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,220);
      $this->Cell(140,10, trim($menu_semanal->miercoles_med_maniana),1);
      $this->SetXY(10,230);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,230);
      $this->Cell(140,10, trim($menu_semanal->miercoles_almuerzo),1);
      $this->SetXY(10,240);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,240);
      $this->Cell(140,10, trim($menu_semanal->miercoles_merienda),1);
      $this->SetXY(10,250);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,250);
      $this->Cell(140,10, trim($menu_semanal->miercoles_colacion),1);
      $this->SetXY(10,260);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,260);
      $this->Cell(140,10,trim($menu_semanal->miercoles_cena),1);
      
     ////AGREGAMOS UNA NUEVA HOJA
$this->AddPage();
$this->SetFont('Arial', '', 10);
$this->Image('img/logonutri.png',120,5,70);
      
      $this->SetXY(40,40);
      $this->Cell(140,10, "Jueves",1 , 'L');
      $this->SetXY(10,50);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,50);
      $this->Cell(140,10, trim($menu_semanal->jueves_desayuno),1 , 'L');
      $this->SetXY(10,60);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,60);
      $this->Cell(140,10, trim($menu_semanal->jueves_med_maniana),1);
      $this->SetXY(10,70);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,70);
      $this->Cell(140,10, trim($menu_semanal->jueves_almuerzo),1);
      $this->SetXY(10,80);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,80);
      $this->Cell(140,10, trim($menu_semanal->jueves_merienda),1);
      $this->SetXY(10,90);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,90);
      $this->Cell(140,10, trim($menu_semanal->jueves_colacion),1);
      $this->SetXY(10,100);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,100);
      $this->Cell(140,10,trim($menu_semanal->jueves_cena),1);
      
      $this->SetXY(40,120);
      $this->Cell(140,10, "Viernes",1 , 'L');
      $this->SetXY(10,130);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,130);
      $this->Cell(140,10, trim($menu_semanal->viernes_desayuno),1 , 'L');
      $this->SetXY(10,140);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,140);
      $this->Cell(140,10, trim($menu_semanal->viernes_med_maniana),1);
      $this->SetXY(10,150);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,150);
      $this->Cell(140,10, trim($menu_semanal->viernes_almuerzo),1);
      $this->SetXY(10,160);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,160);
      $this->Cell(140,10, trim($menu_semanal->viernes_merienda),1);
      $this->SetXY(10,170);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,170);
      $this->Cell(140,10, trim($menu_semanal->viernes_colacion),1);
      $this->SetXY(10,180);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,180);
      $this->Cell(140,10,trim($menu_semanal->viernes_cena),1);

      $this->SetXY(40,200);
      $this->Cell(140,10, "Sabado",1 , 'L');
      $this->SetXY(10,210);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,210);
      $this->Cell(140,10, trim($menu_semanal->sabado_desayuno),1 , 'L');
      $this->SetXY(10,220);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,220);
      $this->Cell(140,10, trim($menu_semanal->sabado_med_maniana),1);
      $this->SetXY(10,230);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,230);
      $this->Cell(140,10, trim($menu_semanal->sabado_almuerzo),1);
      $this->SetXY(10,240);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,240);
      $this->Cell(140,10, trim($menu_semanal->sabado_merienda),1);
      $this->SetXY(10,250);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,250);
      $this->Cell(140,10, trim($menu_semanal->sabado_colacion),1);
      $this->SetXY(10,260);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,260);
      $this->Cell(140,10,trim($menu_semanal->sabado_cena),1);
      
        ////AGREGAMOS UNA NUEVA HOJA
$this->AddPage();
$this->SetFont('Arial', '', 10);
$this->Image('img/logonutri.png',120,5,70);
      
      $this->SetXY(40,40);
      $this->Cell(140,10, "Domingo",1 , 'L');
      $this->SetXY(10,50);
      $this->Cell(30, 10,"Desayuno",1);
      $this->SetXY(40,50);
      $this->Cell(140,10, trim($menu_semanal->domingo_desayuno),1 , 'L');
      $this->SetXY(10,60);
      $this->Cell(30, 10,utf8_decode("Med Mañana"),1);
      $this->SetXY(40,60);
      $this->Cell(140,10, trim($menu_semanal->domingo_med_maniana),1);
      $this->SetXY(10,70);
      $this->Cell(30, 10,"Almuerzo",1);
      $this->SetXY(40,70);
      $this->Cell(140,10, trim($menu_semanal->domingo_almuerzo),1);
      $this->SetXY(10,80);
      $this->Cell(30, 10,"Merienda",1);
      $this->SetXY(40,80);
      $this->Cell(140,10, trim($menu_semanal->domingo_merienda),1);
      $this->SetXY(10,90);
      $this->Cell(30, 10,"Colacion",1);
      $this->SetXY(40,90);
      $this->Cell(140,10, trim($menu_semanal->domingo_colacion),1);
      $this->SetXY(10,100);
      $this->Cell(30, 10,"Cena",1);
      $this->SetXY(40,100);
      $this->Cell(140,10,trim($menu_semanal->domingo_cena),1);     
      

//      
//      $this->Ln();
//      $this->Cell(23,30,utf8_decode("Med. Mañ."),1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->lunes_med_maniana,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->martes_med_maniana,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->miercoles_med_maniana,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->jueves_med_maniana,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->viernes_med_maniana,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->sabado_med_maniana,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->domingo_med_maniana,1, 0 , 'L');
//
//            $this->Ln();
//      $this->Cell(23,30,"Almuerzo",1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->lunes_almuerzo,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->martes_almuerzo,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->miercoles_almuerzo,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->jueves_almuerzo,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->viernes_almuerzo,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->sabado_almuerzo,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->domingo_almuerzo,1, 0 , 'L');
//      
//       $this->Ln();
//      $this->Cell(23,30,"Merienda",1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->lunes_merienda,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->martes_merienda,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->miercoles_merienda,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->jueves_merienda,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->viernes_merienda,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->sabado_merienda,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->domingo_merienda,1, 0 , 'L');
//      
//            $this->Ln();
//      $this->Cell(23,30,"Colacion",1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->lunes_colacion,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->martes_colacion,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->miercoles_colacion,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->jueves_colacion,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->viernes_colacion,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->sabado_colacion,1, 0 , 'L');
//      $this->Cell(23,30,$menu_semanal->domingo_colacion,1, 0 , 'L');
//
//      $this->Ln();
//      $this->Cell(23,30,"Cena",1, 0 , 'L');
//      $this->Cell(23,30, $menu_semanal->lunes_cena,1, 0 , 'L');      
//      $this->Cell(23,30, $menu_semanal->martes_cena,1, 0 , 'L');      
//      $this->Cell(23,30, $menu_semanal->miercoles_cena,1, 0 , 'L');      
//      $this->Cell(23,30, $menu_semanal->jueves_cena,1, 0 , 'L');      
//      $this->Cell(23,30, $menu_semanal->viernes_cena,1, 0 , 'L');      
//      $this->Cell(23,30, $menu_semanal->sabado_cena,1, 0 , 'L');      
//      $this->Cell(23,30, $menu_semanal->domingo_cena,1, 0 , 'L');      
    
      
           
   }
     
function imprimirPlan($idPaciente,$idPlan){

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);


    $menu_semanal = new MenuSemanal('menu_semanal');

    $menu_semanal->load("plan=".$idPlan);
  // Display the graph

$pdf = new Reportes();

$pdf=new Reportes('P','mm','A4');

$ambito='localhost';

$pdf->AddPage();

$pdf->SetFont('Arial', '', 10);
$pdf->Image('img/logonutri.png',120,5,70);


$pdf->functionTablaBasica($idPaciente,$idPlan);









//
//$pdf->Text(10,25,"Lunes");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,30,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,30,$menu_semanal->lunes_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,35,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,35,$menu_semanal->lunes_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,40,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,40,$menu_semanal->lunes_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,45,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,45,$menu_semanal->lunes_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,50,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,50,$menu_semanal->lunes_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,55,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,55,$menu_semanal->lunes_cena);
//
////martes
//$pdf->SetFont('Arial','b',12);
//$pdf->Text(10,60,"Martes");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,65,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,65,$menu_semanal->martes_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,70,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,70,$menu_semanal->martes_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,75,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,75,$menu_semanal->martes_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,80,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,80,$menu_semanal->martes_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,85,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,85,$menu_semanal->martes_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,90,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,90,$menu_semanal->martes_cena);
//
////miercoles
//
//$pdf->SetFont('Arial','b',12);
//$pdf->Text(10,95,"Miercoles");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,100,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,100,$menu_semanal->miercoles_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,105,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,105,$menu_semanal->miercoles_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,110,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,110,$menu_semanal->miercoles_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,115,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,115,$menu_semanal->miercoles_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,120,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,120,$menu_semanal->miercoles_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,125,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,125,$menu_semanal->miercoles_cena);
//
////jueves
//$pdf->SetFont('Arial','b',12);
//$pdf->Text(10,130,"jueves");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,135,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,135,$menu_semanal->jueves_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,140,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,140,$menu_semanal->jueves_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,145,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,145,$menu_semanal->jueves_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,150,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,150,$menu_semanal->jueves_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,155,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,155,$menu_semanal->jueves_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,160,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,160,$menu_semanal->jueves_cena);
//
////viernes
//
//$pdf->SetFont('Arial','b',12);
//$pdf->Text(10,165,"viernes");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,170,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,170,$menu_semanal->viernes_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,175,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,175,$menu_semanal->viernes_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,180,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,180,$menu_semanal->viernes_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,185,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,185,$menu_semanal->viernes_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,190,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,190,$menu_semanal->viernes_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,195,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,195,$menu_semanal->viernes_cena);
//
////sabado
//$pdf->SetFont('Arial','b',12);
//$pdf->Text(10,200,"sabado");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,205,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,205,$menu_semanal->sabado_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,210,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,210,$menu_semanal->sabado_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,215,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,215,$menu_semanal->sabado_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,220,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,220,$menu_semanal->sabado_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,225,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,225,$menu_semanal->sabado_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,230,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,230,$menu_semanal->sabado_cena);
//
////domingo
//$pdf->SetFont('Arial','b',12);
//$pdf->Text(10,235,"domingo");
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,240,"Desayuno    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,240,$menu_semanal->domingo_desayuno);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,245,"Med. Maniana :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,245,$menu_semanal->domingo_med_maniana);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,250,"Almuerzo    :");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,250,$menu_semanal->domingo_almuerzo);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,255,"Merienda:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,255,$menu_semanal->domingo_merienda);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,260,"Colacion:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,260,$menu_semanal->domingo_colacion);
//
//$pdf->SetFont('Arial','',10);
//$pdf->Text(10,265,"Cena:");
//$pdf->SetFont('Arial','',10);
//$pdf->Text(50,265,$menu_semanal->domingo_cena);


$pdf->Output();

}



}



?>