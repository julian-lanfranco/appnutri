<?php 

require_once ('jpgraph/src/jpgraph.php');
require_once ('jpgraph/src/jpgraph_line.php');
require_once('../modelos/conexion.php');
require_once('../modelos/medicionesSimples.php');
require_once('../fpdf181/fpdf.php');


$idPaciente=$_REQUEST['idPaciente'];
$nombreGrafico=null;


$medi = new MedicionesSimples('medicionessimples');
$mediarray=$medi->Find("paciente ='".$idPaciente."' order by fecha");

foreach ($mediarray as $valor) {
	
    $datosCircuCintura[]=$valor->circucintura;

    $datosCircuBrazo[]=$valor->circubrazo;



    $fecha = explode("-",$valor->fecha);

    $etiquetas[]=$fecha[2]."/".$fecha[1]."/".$fecha[0];

}

// Setup the graph
$graph = new Graph(600,600);

$graph->SetScale("textint");

$theme_class= new UniversalTheme;

$graph->SetTheme($theme_class);

$graph->title->Set("Evolucion de Circuferencias");

$graph->SetBox(false);
$graph->ygrid->SetFill(false);
$graph->yaxis->HideLine(false);
$graph->yaxis->HideTicks(false,false);
$graph->yaxis->HideZeroLabel();

$graph->xaxis->SetTickLabels($etiquetas);

// Create the plot
$p1 = new LinePlot($datosCircuBrazo);
// Use an image of favourite car as marker
$graph->Add($p1);

$p2 = new LinePlot($datosCircuCintura);
// Use an image of favourite car as marker
$graph->Add($p2);


// Use an image of favourite car as marker
$p1->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p1->SetColor('#aadddd');
$p1->value->SetFormat('%d');
$p1->value->Show();
$p1->value->SetColor('#55bbdd');


// Use an image of favourite car as marker
$p2->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p2->SetColor('#ddaa99');
$p2->value->SetFormat('%d');
$p2->value->Show();
$p2->value->SetColor('#55bbdd');


$img = $graph->Stroke(); 




?>  