<?php 

require_once ('jpgraph/src/jpgraph.php');
require_once ('jpgraph/src/jpgraph_line.php');
require_once('../modelos/conexion.php');
require_once('../modelos/medicionesAntropometricas.php');


$idPaciente=$_REQUEST['idPaciente'];
$fechaDesde=$_REQUEST['fechadesde'];
$fechaHasta=$_REQUEST['fechahasta'];

$medi = new MedicionesAntropometricas('medicionesantropometricas');
$mediarray=$medi->Find("paciente ='".$idPaciente."' and fecha between '".$fechaDesde."' and '".$fechaHasta."' order by fecha");


foreach ($mediarray as $valor) {


    $datosPliegueTri[]=$valor->triceps;

    $datosPliegueSub[]=$valor->subescapular;

    $datosPliegueSupra[]=$valor->supraespinal;

    $datosPliegueAbdo[]=$valor->abdominal;

    $datosPliegueMuslo[]=$valor->muslomed2;

    $datosPlieguePanto[]=$valor->pantorrilla2; 
    

    $fecha = explode("-",$valor->fecha);

    $etiquetas[]=$fecha[2]."/".$fecha[1]."/".$fecha[0];


}

// Setup the graph
$graph = new Graph(400,400);

$graph->SetScale("textint");

$theme_class= new UniversalTheme;

$graph->SetTheme($theme_class);

$graph->title->Set("Evolucion de Pliegues Ticipital");

$graph->SetBox(false);
$graph->ygrid->SetFill(false);
$graph->yaxis->HideLine(false);
$graph->yaxis->HideTicks(false,false);
$graph->yaxis->HideZeroLabel();

$graph->xaxis->SetTickLabels($etiquetas);

// Create the plot
$p1 = new LinePlot($datosPliegueTri);
// Use an image of favourite car as marker


$p2 = new LinePlot($datosPliegueSub);
// Use an image of favourite car as marker

$p3 = new LinePlot($datosPliegueSupra);
// Use an image of favourite car as marker


$p4 = new LinePlot($datosPliegueAbdo);
// Use an image of favourite car as marker


$p5 = new LinePlot($datosPliegueMuslo);
// Use an image of favourite car as marker


$p6 = new LinePlot($datosPlieguePanto);
// Use an image of favourite car as marker


// Use an image of favourite car as marker
$p1->mark->SetType(MARK_FILLEDCIRCLE);
$p1->mark->SetFillColor("red");
$p1->mark->SetWidth(6);
$p1->value->SetFormat('%d');
$p1->value->Show();
$p1->value->SetColor('#55bbdd');

// Use an image of favourite car as marker
$p2->mark->SetType(MARK_FILLEDCIRCLE);
$p2->mark->SetFillColor("red");
$p2->mark->SetWidth(6);
$p2->value->SetFormat('%d');
$p2->value->Show();
$p2->value->SetColor('#55bbdd');


// Use an image of favourite car as marker
$p3->mark->SetType(MARK_FILLEDCIRCLE);
$p3->mark->SetFillColor("red");
$p3->mark->SetWidth(6);
$p3->value->SetFormat('%d');
$p3->value->Show();
$p3->value->SetColor('#55bbdd');



// Use an image of favourite car as marker
$p4->mark->SetType(MARK_FILLEDCIRCLE);
$p4->mark->SetFillColor("red");
$p4->mark->SetWidth(6);
$p4->value->SetFormat('%d');
$p4->value->Show();
$p4->value->SetColor('#55bbdd');;

$p5->mark->SetType(MARK_FILLEDCIRCLE);
$p5->mark->SetFillColor("red");
$p5->mark->SetWidth(6);
$p5->value->SetFormat('%d');
$p5->value->Show();
$p5->value->SetColor('#55bbdd');



// Use an image of favourite car as marker
$p6->mark->SetType(MARK_FILLEDCIRCLE);
$p6->mark->SetFillColor("red");
$p6->mark->SetWidth(6);
$p6->value->SetFormat('%d');
$p6->value->Show();
$p6->value->SetColor('#55bbdd');

$graph->Add($p1);

$graph->Stroke();


?>  