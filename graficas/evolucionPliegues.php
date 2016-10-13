<?php 

require_once ('jpgraph/src/jpgraph.php');
require_once ('jpgraph/src/jpgraph_line.php');
require_once('../modelos/conexion.php');
require_once('../modelos/medicionesSimples.php');


$idPaciente=$_REQUEST['idPaciente'];

$medi = new MedicionesSimples('medicionessimples');
$mediarray=$medi->Find("paciente ='".$idPaciente."' order by fecha");

foreach ($mediarray as $valor) {
	
    $datosPliegueTri[]=$valor->plieguetricipital;

    $datosPliegueSub[]=$valor->plieguesubescapular;

    $datosPliegueSupra[]=$valor->plieguesupraespinal;

    $datosPliegueAbdo[]=$valor->pliegueabdominal;

    $datosPliegueMuslo[]=$valor->plieguemuslomedio;

    $datosPlieguePanto[]=$valor->plieguepantorrilla;    

    $fecha = explode("-",$valor->fecha);

    $etiquetas[]=$fecha[2]."/".$fecha[1]."/".$fecha[0];

}

// Setup the graph
$graph = new Graph(600,600);

$graph->SetScale("textint");

$theme_class= new UniversalTheme;

$graph->SetTheme($theme_class);

$graph->title->Set("Evolucion de Pliegues");

$graph->SetBox(false);
$graph->ygrid->SetFill(false);
$graph->yaxis->HideLine(false);
$graph->yaxis->HideTicks(false,false);
$graph->yaxis->HideZeroLabel();

$graph->xaxis->SetTickLabels($etiquetas);

// Create the plot
$p1 = new LinePlot($datosPliegueTri);
// Use an image of favourite car as marker
$graph->Add($p1);

$p2 = new LinePlot($datosPliegueSub);
// Use an image of favourite car as marker
$graph->Add($p2);

$p3 = new LinePlot($datosPliegueSupra);
// Use an image of favourite car as marker
$graph->Add($p3);

$p4 = new LinePlot($datosPliegueAbdo);
// Use an image of favourite car as marker
$graph->Add($p4);


$p5 = new LinePlot($datosPliegueMuslo);
// Use an image of favourite car as marker
$graph->Add($p5);

$p6 = new LinePlot($datosPlieguePanto);
// Use an image of favourite car as marker
$graph->Add($p6);

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



// Use an image of favourite car as marker
$p3->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p3->SetColor('#ddaa99');
$p3->value->SetFormat('%d');
$p3->value->Show();
$p3->value->SetColor('#55bbdd');



// Use an image of favourite car as marker
$p4->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p4->SetColor('#ddaa99');
$p4->value->SetFormat('%d');
$p4->value->Show();
$p4->value->SetColor('#55bbdd');

$p5->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p5->SetColor('#ddaa99');
$p5->value->SetFormat('%d');
$p5->value->Show();
$p5->value->SetColor('#55bbdd');



// Use an image of favourite car as marker
$p6->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p6->SetColor('#ddaa99');
$p6->value->SetFormat('%d');
$p6->value->Show();
$p6->value->SetColor('#55bbdd');



$graph->Stroke();

?>  