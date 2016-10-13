<?php 
//content="text/plain; charset=utf-8"
require_once ('../jpgraph.php');
require_once ('../jpgraph_line.php');
require_once ('../jpgraph_bar.php');


$data1 = array(1,1.5,4,2,7);

$data2 = array(1,1.2,2,3,3);

$labels=array("luis", "maria", "pepe", "lupita", "jose");


$graph = new Graph(400,300,'auto');
$graph->SetScale("textint");
$graph->title->Set("Ejemplo de gráfica lineal");
$graph->title->SetFont(FF_FONT1,FS_BOLD);
$graph->xaxis->title->Set("Trabajadores");
$graph->xaxis->SetTickLabels($labels);
$graph->yaxis->title->Set("Horas Trabajadas");

$p1 = new LinePlot($data1);
$p1->mark->SetType(MARK_FILLEDCIRCLE);
$p1->mark->SetFillColor("red");
$p1->mark->SetWidth(2);
$p1->SetColor("blue");
$p1->SetCenter();
$graph->Add($p1);

$p2 = new LinePlot($data2);
$p2->mark->SetType(MARK_FILLEDCIRCLE);
$p2->mark->SetFillColor("red");
$p2->mark->SetWidth(2);
$p2->SetColor("red");
$p2->SetCenter();
$graph->Add($p2);

$graph->Stroke();

?>  

?>
