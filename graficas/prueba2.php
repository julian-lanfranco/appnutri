
<?php // content="text/plain; charset=utf-8"
require_once ('jpgraph/src/jpgraph.php');
require_once ('jpgraph/src/jpgraph_line.php');

$datay = array(1,1.5,4,2,7);
$labels=array("luis", "maria", "pepe", "lupita", "jose");
$graph = new Graph(400,300,'auto');
$graph->SetScale("textint");
$graph->title->Set("Ejemplo de gráfica lineal");
$graph->title->SetFont(FF_FONT1,FS_BOLD);
$graph->xaxis->title->Set("Trabajadores");
$graph->xaxis->SetTickLabels($labels);
$graph->yaxis->title->Set("Horas Trabajadas");

$p1 = new LinePlot($datay);
$p1->mark->SetType(MARK_FILLEDCIRCLE);
$p1->mark->SetFillColor("red");
$p1->mark->SetWidth(2);
$p1->SetColor("blue");
$p1->SetCenter();
$graph->Add($p1);
$graph->Stroke();



?>  