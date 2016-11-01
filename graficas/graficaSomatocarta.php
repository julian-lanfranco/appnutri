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
$idPaciente=$_REQUEST['idPaciente'];
//Creamos el objeto
$mediciones = new MedicionesAntropometricas('medicionesantropometricas');

//Acceso a datos
 $db = getConexion();
 $res = $db->Execute("select id from medicionesantropometricas where paciente = '".$idPaciente."' order by id desc limit 1");
 
 
 //Recuperamos los valores en un arreglo y los pasamos a variables
    $arr = $res->getarray();
 
    if(count($arr)>0){
        
       if (count($arr)==1){ 
          $med1 = array_shift($arr[0]);
          $mediciones->Load("id=".$med1);
       }
    }
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
//$graph->img->SetMargin(58,60, 70, 35);

$graph->img->SetMargin(75,80, 160, 118);
$graph->SetShadow();
 


$graph->yaxis->HideZeroLabel();
$graph->yaxis->HideLine(true);
$graph->yaxis->HideTicks(true,true);
$graph->ygrid->SetFill(false);

$graph->SetBackgroundImage("soma.jpg", BGIMG_FILLFRAME);


$sp1 = new ScatterPlot($datay,$datax);
 
$graph->Add($sp1);
$graph->Stroke();


?>
