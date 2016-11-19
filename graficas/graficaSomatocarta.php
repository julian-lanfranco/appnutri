<?php

/*
 * Grafica de la Somocarta
 * 
 */
require_once ('jpgraph/src/jpgraph.php');
require_once ('jpgraph/src/jpgraph_scatter.php');
require_once ('jpgraph/src/jpgraph_line.php');
require_once('../modelos/medicionesAntropometricas.php');
require_once('../modelos/conexion.php');

//Recibimos el id del paciente
$idMedicion=$_REQUEST['idMedicion'];
//Creamos el objeto
$mediciones = new MedicionesAntropometricas('medicionesantropometricas');
$mediciones->Load("id=".$idMedicion);
//Calculamos los somatotipos

$mesomorfismo = ($mediciones->humeral * 0.858 + 0.601 * $mediciones->femoral + 0.188 * ($mediciones->brazorelajado - $mediciones->triceps) + 0.161 * ($mediciones->pantorrilla - $mediciones->pantorrilla2)) - (($mediciones->tallacorporal * 0.131) + 4.5);       
 
$PC = ($mediciones->triceps + $mediciones->subescapular + $mediciones->subpraespinal) * ( 170.18 / $mediciones->tallacorporal);


$endomorfismo = -0.7182 + 0.1451 * $PC - 0.00068 * pow($PC,2) + .00000014 * pow($PC, 3); 

$CAP = ($mediciones->tallacorporal / pow($mediciones->pesobruto, 1/3));

if ($CAP >= 40.75) $ectomorfismo = 0.732 * $CAP - 28.5;
if ($CAP < 40.75 && $CAP > 38.25) $ectomorfismo = 0.463 * $CAP - 17.63;
if ($CAP < 38.25) $ectomorfismo = 0.1;

$x = $ectomorfismo - $endomorfismo;

$y = (2 * $mesomorfismo) - ($ectomorfismo + $endomorfismo);



$datax = array($x);
$datay = array($y);
 
$graph = new Graph(600,600);
$graph->SetScale("intint", -10, 16, -8, 8);


//somatocartab

$graph->img->SetMargin(75,80, 130, 60);
$graph->SetShadow();
 


$graph->yaxis->HideZeroLabel();
$graph->yaxis->HideLine(true);
$graph->yaxis->HideTicks(true,true);
$graph->ygrid->SetFill(false);

$graph->SetBackgroundImage('soma.jpg', BGIMG_FILLFRAME);


$sp1 = new ScatterPlot($datay,$datax);
 $sp1->mark->SetType(MARK_FILLEDCIRCLE);
$sp1->mark->SetFillColor("red");
$sp1->mark->SetWidth(8);
$graph->Add($sp1);
$graph->Stroke();


?>
